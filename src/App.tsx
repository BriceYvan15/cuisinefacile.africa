
import React, { useState, useEffect } from 'react';
import Header from './components/Header';
import Footer from './components/Footer';
import Home from './pages/Home';
import Recipes from './pages/Recipes';
import RecipeDetail from './pages/RecipeDetail';
import Checkout from './pages/Checkout';
import Dashboard from './pages/Dashboard';
import { Recipe, CartItem, Order, User, SelectedIngredient } from './types';
import { motion, AnimatePresence } from 'framer-motion';

const App: React.FC = () => {
  const [currentPage, setCurrentPage] = useState('home');
  const [currentParams, setCurrentParams] = useState<any>(null);
  const [cart, setCart] = useState<CartItem[]>([]);
  const [user, setUser] = useState<User | null>(null);
  const [orders, setOrders] = useState<Order[]>([]);
  const [notification, setNotification] = useState<string | null>(null);

  // Persistence
  useEffect(() => {
    const savedCart = localStorage.getItem('cart');
    if (savedCart) setCart(JSON.parse(savedCart));

    const savedUser = localStorage.getItem('user');
    if (savedUser) setUser(JSON.parse(savedUser));

    const savedOrders = localStorage.getItem('orders');
    if (savedOrders) setOrders(JSON.parse(savedOrders));
  }, []);

  useEffect(() => localStorage.setItem('cart', JSON.stringify(cart)), [cart]);
  useEffect(() => localStorage.setItem('user', JSON.stringify(user)), [user]);
  useEffect(() => localStorage.setItem('orders', JSON.stringify(orders)), [orders]);

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

  const handlePlaceOrder = (userData: { email: string; phone: string; name: string }) => {
    const subtotal = cart.reduce((acc, item) => acc + (item.totalPrice * item.quantity), 0);
    const newOrder: Order = {
      id: Math.random().toString(36).substr(2, 9).toUpperCase(),
      date: new Date().toISOString(),
      total: subtotal + 1500,
      items: [...cart],
      status: 'processing',
    };

    setUser({ email: userData.email, phone: userData.phone, name: userData.name });
    setOrders(prev => [newOrder, ...prev]);
    setCart([]);
    handleNavigate('success');
  };

  const handleLogout = () => {
    setUser(null);
    setOrders([]);
    handleNavigate('home');
  };

  const renderPage = () => {
    switch (currentPage) {
      case 'home': return <Home onNavigate={handleNavigate} />;
      case 'recipes': return <Recipes onAddToCart={handleAddToCart} onNavigate={handleNavigate} />;
      case 'recipe-detail': return <RecipeDetail recipe={currentParams.recipe} onAddToCart={(item) => { handleAddToCart(item); handleNavigate('recipes'); }} onBack={() => handleNavigate('recipes')} />;
      case 'checkout': return <Checkout cart={cart} onRemoveFromCart={(id) => handleRemoveFromCart(cart.findIndex(i => i.recipe.id === id))} onPlaceOrder={handlePlaceOrder} onNavigate={handleNavigate} />;
      case 'dashboard': return <Dashboard user={user} orders={orders} onLogout={handleLogout} onNavigate={handleNavigate} />;
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
