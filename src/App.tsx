
import React, { useState, useEffect } from 'react';
import Header from './components/Header';
import Footer from './components/Footer';
import Home from './pages/Home';
import Recipes from './pages/Recipes';
import RecipeDetail from './pages/RecipeDetail';
import Checkout from './pages/Checkout';
import Dashboard from './pages/Dashboard';
import Login from './pages/Login';
import DashboardAdmin from './pages/DashboardAdmin';
import { Recipe, CartItem, Order, User, SelectedIngredient } from './types';
import { motion, AnimatePresence } from 'framer-motion';
import { upsertUser, createOrder, getOrdersByUserEmail, getRecipes, saveCart, getCart, deleteCart, isAdmin, getUserByEmail } from './lib/supabase';

const App: React.FC = () => {
  const [currentPage, setCurrentPage] = useState('home');
  const [currentParams, setCurrentParams] = useState<any>(null);
  const [cart, setCart] = useState<CartItem[]>([]);
  const [user, setUser] = useState<User | null>(null);
  const [orders, setOrders] = useState<Order[]>([]);
  const [notification, setNotification] = useState<string | null>(null);
  const [recipes, setRecipes] = useState<Recipe[]>([]);
  const [recipesLoading, setRecipesLoading] = useState(true);

  // Charger les recettes une seule fois au démarrage (avec cache)
  useEffect(() => {
    const loadRecipesWithCache = async () => {
      try {
        // Vérifier le cache dans localStorage
        const cachedRecipes = localStorage.getItem('recipes_cache');
        const cacheTimestamp = localStorage.getItem('recipes_cache_timestamp');
        const CACHE_DURATION = 5 * 60 * 1000; // 5 minutes en millisecondes

        if (cachedRecipes && cacheTimestamp) {
          const now = Date.now();
          const cacheAge = now - parseInt(cacheTimestamp, 10);

          // Si le cache est récent (moins de 5 minutes), l'utiliser
          if (cacheAge < CACHE_DURATION) {
            setRecipes(JSON.parse(cachedRecipes));
            setRecipesLoading(false);
            return;
          }
        }

        // Sinon, charger depuis Supabase
        setRecipesLoading(true);
        const data = await getRecipes();
        setRecipes(data);
        
        // Mettre en cache
        localStorage.setItem('recipes_cache', JSON.stringify(data));
        localStorage.setItem('recipes_cache_timestamp', Date.now().toString());
      } catch (error) {
        console.error('Error loading recipes:', error);
        // En cas d'erreur, essayer d'utiliser le cache même s'il est ancien
        const cachedRecipes = localStorage.getItem('recipes_cache');
        if (cachedRecipes) {
          setRecipes(JSON.parse(cachedRecipes));
        }
      } finally {
        setRecipesLoading(false);
      }
    };

    loadRecipesWithCache();
  }, []);

  // Restaurer la session au chargement (utilisateur normal ou admin)
  useEffect(() => {
    const savedUser = localStorage.getItem('user');
    
    if (savedUser) {
      try {
        const userData = JSON.parse(savedUser);
        setUser(userData);
        
        // Si l'utilisateur est admin et qu'on n'est pas sur la page admin, y rediriger
        if (isAdmin(userData) && currentPage !== 'admin') {
          setCurrentPage('admin');
        }
        // Si l'utilisateur n'est pas admin et qu'on est sur la page admin, rediriger vers home
        else if (!isAdmin(userData) && currentPage === 'admin') {
          setCurrentPage('home');
        }
      } catch (error) {
        console.error('Error parsing saved user:', error);
      }
    } else {
      // Si pas d'utilisateur et qu'on est sur la page admin, rediriger vers home
      if (currentPage === 'admin') {
        setCurrentPage('home');
      }
    }
  }, []); // Exécuter une seule fois au montage

  // Charger le panier au démarrage (hybride : localStorage + Supabase)
  useEffect(() => {
    const loadCart = async () => {
      // 1. D'abord charger depuis localStorage (rapide)
      const savedCart = localStorage.getItem('cart');
      if (savedCart) {
        try {
          const cartData = JSON.parse(savedCart);
          setCart(cartData);
        } catch (error) {
          console.error('Error parsing saved cart:', error);
        }
      }

      // 2. Si un utilisateur est connecté, charger depuis Supabase (synchronisation)
      const savedUser = localStorage.getItem('user');
      if (savedUser) {
        try {
          const userData = JSON.parse(savedUser);
          setUser(userData);
          
          // Charger le panier depuis Supabase
          const supabaseCart = await getCart(userData.email);
          if (supabaseCart.length > 0) {
            // Si Supabase a un panier, l'utiliser (plus récent)
            setCart(supabaseCart);
            // Synchroniser avec localStorage
            localStorage.setItem('cart', JSON.stringify(supabaseCart));
          } else if (savedCart) {
            // Si pas de panier dans Supabase mais un dans localStorage, sauvegarder dans Supabase
            const cartData = JSON.parse(savedCart);
            if (cartData.length > 0) {
              await saveCart(cartData, userData.email);
            }
          }
          
          // Vérifier aussi si un panier existe avec l'email du checkout (avant création du compte)
          const checkoutEmail = localStorage.getItem('checkout_email');
          if (checkoutEmail && checkoutEmail === userData.email) {
            const checkoutCart = await getCart(checkoutEmail);
            if (checkoutCart.length > 0 && checkoutCart.length > (supabaseCart.length || 0)) {
              // Si le panier du checkout est plus récent, l'utiliser
              setCart(checkoutCart);
              localStorage.setItem('cart', JSON.stringify(checkoutCart));
              // Migrer vers le user_id
              await saveCart(checkoutCart, userData.email);
            }
            // Nettoyer l'email du checkout
            localStorage.removeItem('checkout_email');
          }
          
          // Charger les commandes depuis Supabase
          loadUserOrders(userData.email);
        } catch (error) {
          console.error('Error loading user data:', error);
        }
      }
    };

    loadCart();
  }, []);

  // Sauvegarder le panier (hybride : localStorage + Supabase)
  useEffect(() => {
    // Sauvegarder dans localStorage immédiatement (performance)
    localStorage.setItem('cart', JSON.stringify(cart));
    
    // Sauvegarder dans Supabase de manière asynchrone (persistance)
    // On peut sauvegarder avec l'email même si le compte n'existe pas encore
    const emailToUse = user?.email || localStorage.getItem('checkout_email');
    
    if (emailToUse && cart.length > 0) {
      // Délai pour éviter trop de requêtes (debounce)
      const timeoutId = setTimeout(() => {
        saveCart(cart, emailToUse).catch(error => {
          console.error('Error saving cart to Supabase:', error);
        });
      }, 1000); // Attendre 1 seconde après le dernier changement

      return () => clearTimeout(timeoutId);
    }
  }, [cart, user]);
  useEffect(() => {
    if (user) {
      localStorage.setItem('user', JSON.stringify(user));
      // Recharger les commandes quand l'utilisateur change
      loadUserOrders(user.email);
    }
  }, [user]);

  // Fonction pour charger les commandes depuis Supabase
  const loadUserOrders = async (email: string) => {
    try {
      const userOrders = await getOrdersByUserEmail(email);
      setOrders(userOrders);
    } catch (error) {
      console.error('Error loading orders:', error);
      // En cas d'erreur, on garde les commandes du localStorage si elles existent
      const savedOrders = localStorage.getItem('orders');
      if (savedOrders) setOrders(JSON.parse(savedOrders));
    }
  };

  const handleNavigate = (page: string, params?: any) => {
    setCurrentPage(page);
    setCurrentParams(params);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const showNotification = (message: string) => {
    setNotification(message);
    setTimeout(() => setNotification(null), 3000);
  };

  // Ajout au panier (soit un kit par défaut, soit un item personnalisé)
  const handleAddToCart = (item: Recipe | CartItem) => {
    let cartItem: CartItem;

    if ('selectedIngredients' in item) {
      // C'est déjà un CartItem (personnalisé depuis RecipeDetail)
      cartItem = item;
    } else {
      // C'est une Recipe (ajout direct depuis la liste)
      const selectedIngs: SelectedIngredient[] = item.ingredients.map(ing => ({
        ...ing,
        selected: true,
        selectedQuantity: ing.quantity
      }));
      cartItem = {
        recipe: item,
        selectedIngredients: selectedIngs,
        totalPrice: item.price,
        quantity: 1
      };
    }

    setCart(prev => {
      // Pour simplifier, on traite chaque ajout comme un nouvel item unique si les ingrédients diffèrent,
      // ou on incrémente si c'est exactement la même recette sans changement.
      // Ici, on va juste ajouter au panier.
      return [...prev, cartItem];
    });
    showNotification(`${cartItem.recipe.title} ajouté au panier !`);
  };

  const handleRemoveFromCart = (index: number) => {
    setCart(prev => prev.filter((_, i) => i !== index));
  };

  const handlePlaceOrder = async (userData: { email: string; phone: string; name: string; address: string }) => {
    try {
      showNotification('Traitement de votre commande...');
      
      // 1. Créer ou mettre à jour l'utilisateur
      const user = await upsertUser({
        email: userData.email,
        phone: userData.phone,
        name: userData.name,
      });
      setUser(user);
      
      // Migrer le panier vers le user_id maintenant que le compte existe
      // Le panier était peut-être sauvegardé avec juste l'email
      if (cart.length > 0) {
        await saveCart(cart, userData.email);
      }

      // 2. Calculer le total
      const subtotal = cart.reduce((acc, item) => acc + (item.totalPrice * item.quantity), 0);
      const total = subtotal + 1500;

      // 3. Créer la commande dans Supabase
      const newOrder = await createOrder(
        userData.email,
        cart,
        userData.address,
        total,
        {
          name: userData.name,
          phone: userData.phone,
        }
      );

      // 4. Mettre à jour l'état local
      setOrders(prev => [newOrder, ...prev]);
      setCart([]);
      
      // 5. Supprimer le panier de Supabase après commande
      if (userData.email) {
        await deleteCart(userData.email);
      }
      
      showNotification('Commande créée avec succès !');
      handleNavigate('success');
    } catch (error) {
      console.error('Error placing order:', error);
      showNotification('Erreur lors de la création de la commande. Veuillez réessayer.');
    }
  };

  const handleRefreshOrders = async () => {
    if (user) {
      await loadUserOrders(user.email);
    }
  };

  const handleLogin = async (userData: User) => {
    setUser(userData);
    localStorage.setItem('user', JSON.stringify(userData));
    // Charger les commandes et le panier
    await loadUserOrders(userData.email);
    // Charger le panier depuis Supabase
    const supabaseCart = await getCart(userData.email);
    if (supabaseCart.length > 0) {
      setCart(supabaseCart);
      localStorage.setItem('cart', JSON.stringify(supabaseCart));
    }
  };

  const handleAdminLogin = async (email: string) => {
    // Récupérer l'utilisateur depuis la base de données pour obtenir son rôle
    const adminUser = await getUserByEmail(email);
    
    if (adminUser && adminUser.role === 'admin') {
      // Stocker l'utilisateur admin dans localStorage (comme un utilisateur normal)
      setUser(adminUser);
      localStorage.setItem('user', JSON.stringify(adminUser));
      // Charger les commandes et le panier (même si admin, il peut avoir des commandes)
      await loadUserOrders(adminUser.email);
      // Charger le panier depuis Supabase
      const supabaseCart = await getCart(adminUser.email);
      if (supabaseCart.length > 0) {
        setCart(supabaseCart);
        localStorage.setItem('cart', JSON.stringify(supabaseCart));
      }
    }
  };

  const handleLogout = () => {
    setUser(null);
    setOrders([]);
    localStorage.removeItem('user');
    localStorage.removeItem('checkout_email');
    handleNavigate('home');
  };

  // Fonction pour forcer le rafraîchissement des recettes
  const refreshRecipes = async () => {
    try {
      setRecipesLoading(true);
      const data = await getRecipes();
      setRecipes(data);
      // Mettre à jour le cache
      localStorage.setItem('recipes_cache', JSON.stringify(data));
      localStorage.setItem('recipes_cache_timestamp', Date.now().toString());
    } catch (error) {
      console.error('Error refreshing recipes:', error);
    } finally {
      setRecipesLoading(false);
    }
  };

  const renderPage = () => {
    switch (currentPage) {
      case 'home': return <Home onNavigate={handleNavigate} recipes={recipes} />;
      case 'recipes': return <Recipes recipes={recipes} loading={recipesLoading} onAddToCart={handleAddToCart} onNavigate={handleNavigate} onRefresh={refreshRecipes} />;
      case 'recipe-detail': return <RecipeDetail recipe={currentParams.recipe} recipes={recipes} onRefreshRecipes={refreshRecipes} onAddToCart={(item) => { handleAddToCart(item); handleNavigate('recipes'); }} onBack={() => handleNavigate('recipes')} />;
      case 'checkout': return <Checkout cart={cart} onRemoveFromCart={(id) => handleRemoveFromCart(cart.findIndex(i => i.recipe.id === id))} onPlaceOrder={handlePlaceOrder} onNavigate={handleNavigate} onEmailChange={(email) => {
        // Sauvegarder le panier dans Supabase dès que l'email est saisi
        if (email && cart.length > 0) {
          saveCart(cart, email).catch(error => {
            console.error('Error saving cart with email:', error);
          });
        }
      }} />;
      case 'login': return <Login onLogin={handleLogin} onAdminLogin={handleAdminLogin} onBack={() => handleNavigate('home')} onNavigate={handleNavigate} />;
      case 'dashboard': return <Dashboard user={user} orders={orders} onLogout={handleLogout} onNavigate={handleNavigate} onRefreshOrders={handleRefreshOrders} />;
      case 'admin': {
        // Vérifier que l'utilisateur est bien admin
        if (!user || !isAdmin(user)) {
          // Si pas admin, rediriger vers home
          handleNavigate('home');
          return null;
        }
        return <DashboardAdmin user={user} onLogout={handleLogout} onNavigate={handleNavigate} onRefreshRecipes={refreshRecipes} />;
      }
      case 'success': return (
        <div className="pt-40 pb-24 container mx-auto px-4 text-center">
          <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} className="w-24 h-24 bg-primary text-white rounded-full flex items-center justify-center mx-auto mb-8 shadow-2xl shadow-primary/40">
            <svg className="w-12 h-12" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={4} d="M5 13l4 4L19 7" /></svg>
          </motion.div>
          <h1 className="text-4xl font-black mb-4 tracking-tight">C'est validé !</h1>
          <p className="text-xl text-dark/60 mb-2">Merci pour votre confiance.</p>
          <p className="text-sm text-dark/40 mb-12">Votre compte a été créé. Vous pouvez suivre votre commande dans votre espace.</p>
          <div className="flex flex-col sm:flex-row justify-center gap-4">
            <button onClick={() => handleNavigate('dashboard')} className="bg-primary text-white px-10 py-4 rounded-2xl font-black shadow-lg shadow-primary/20">Accéder à mon espace</button>
            <button onClick={() => handleNavigate('home')} className="bg-white text-dark/60 px-10 py-4 rounded-2xl font-black border border-beige">Retour à l'accueil</button>
          </div>
        </div>
      );
      default: return <Home onNavigate={handleNavigate} />;
    }
  };

  return (
    <div className="min-h-screen bg-beige selection:bg-primary/20">
      <Header onNavigate={handleNavigate} currentPage={currentPage} cartCount={cart.length} />
      <main className="min-h-[80vh]">
        <AnimatePresence mode="wait">
          <motion.div key={currentPage} initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} transition={{ duration: 0.3 }}>
            {renderPage()}
          </motion.div>
        </AnimatePresence>
      </main>
      <Footer />
      <AnimatePresence>
        {notification && (
          <motion.div initial={{ opacity: 0, y: 50, x: '-50%' }} animate={{ opacity: 1, y: 0, x: '-50%' }} exit={{ opacity: 0, y: 20, x: '-50%' }} className="fixed bottom-10 left-1/2 -translate-x-1/2 z-[60] bg-dark text-white px-8 py-4 rounded-2xl shadow-2xl flex items-center gap-3 border border-white/10">
            <div className="w-2 h-2 rounded-full bg-primary" />
            <span className="font-bold text-sm">{notification}</span>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
};

export default App;
