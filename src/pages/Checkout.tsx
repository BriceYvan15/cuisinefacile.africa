
import React, { useState, useRef } from 'react';
import { motion } from 'framer-motion';
import { CreditCard, Truck, ShieldCheck, Trash2, ArrowLeft } from 'lucide-react';
import { CartItem } from '../types';
import { validateEmailFormat, checkEmailExists } from '../lib/supabase';

interface CheckoutProps {
  cart: CartItem[];
  onRemoveFromCart: (id: string) => void;
  onPlaceOrder: (userData: { email: string; phone: string; name: string; address: string }) => void;
  onNavigate: (page: string) => void;
  onEmailChange?: (email: string) => void; // Callback quand l'email change
}

const Checkout: React.FC<CheckoutProps> = ({ cart, onRemoveFromCart, onPlaceOrder, onNavigate, onEmailChange }) => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    address: '',
    acceptedAccount: true, // Coché par défaut
    paymentMethod: 'delivery' as 'delivery' | 'card', // Paiement à la livraison par défaut
  });
  const [emailError, setEmailError] = useState<string | null>(null);
  const [isValidatingEmail, setIsValidatingEmail] = useState(false);
  const emailDebounceRef = useRef<NodeJS.Timeout | null>(null);

  const subtotal = cart.reduce((acc, item) => acc + (item.totalPrice * item.quantity), 0);
  const deliveryFee = 1500;
  const total = subtotal + deliveryFee;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    // Valider l'email avant de soumettre
    const trimmedEmail = formData.email.trim();
    if (!trimmedEmail) {
      setEmailError('L\'email est requis');
      return;
    }

    if (!validateEmailFormat(trimmedEmail)) {
      setEmailError('Format d\'email invalide');
      return;
    }

    // Vérifier si l'email existe déjà
    setIsValidatingEmail(true);
    try {
      const exists = await checkEmailExists(trimmedEmail);
      if (exists) {
        // L'email existe déjà, c'est OK (l'utilisateur utilisera son compte existant)
        // Pas d'erreur, on continue
      }
    } catch (error) {
      console.error('Error checking email:', error);
      // En cas d'erreur, on continue quand même
    } finally {
      setIsValidatingEmail(false);
    }

    if (formData.acceptedAccount && formData.address.trim() && !emailError) {
      onPlaceOrder({ 
        email: trimmedEmail, 
        phone: formData.phone, 
        name: formData.name,
        address: formData.address
      });
    }
  };

  if (cart.length === 0) {
    return (
      <div className="pt-40 pb-24 container mx-auto px-4 text-center">
        <h2 className="text-3xl font-bold mb-4">Votre panier est vide</h2>
        <p className="text-dark/60 mb-8">Commencez par choisir de délicieuses recettes pour votre box.</p>
        <button 
          onClick={() => onNavigate('recipes')}
          className="bg-primary text-white px-8 py-4 rounded-2xl font-bold shadow-lg shadow-primary/20"
        >
          Découvrir nos recettes
        </button>
      </div>
    );
  }

  return (
    <div className="pt-32 pb-24 container mx-auto px-4 md:px-6">
      <button 
        onClick={() => onNavigate('recipes')}
        className="flex items-center gap-2 text-dark/60 hover:text-primary transition-colors mb-8 font-semibold"
      >
        <ArrowLeft size={20} /> Retour aux recettes
      </button>

      <div className="grid lg:grid-cols-3 gap-12">
        {/* Checkout Form */}
        <div className="lg:col-span-2 space-y-8">
          <section className="bg-white p-8 rounded-[40px] shadow-sm border border-beige">
            <h2 className="text-2xl font-bold mb-8 flex items-center gap-3">
              <span className="w-10 h-10 bg-primary text-white rounded-xl flex items-center justify-center text-lg">1</span>
              Informations de Livraison
            </h2>
            <form id="checkout-form" onSubmit={handleSubmit} className="grid sm:grid-cols-2 gap-6">
              <div className="space-y-2">
                <label className="text-sm font-bold text-dark/70 ml-1">Nom complet</label>
                <input 
                  required
                  type="text" 
                  placeholder="Jean Dupont"
                  className="w-full p-4 rounded-xl bg-beige border-none focus:ring-2 focus:ring-primary/20 focus:outline-none transition-all"
                  value={formData.name}
                  onChange={e => setFormData({...formData, name: e.target.value})}
                />
              </div>
              <div className="space-y-2">
                <label className="text-sm font-bold text-dark/70 ml-1">Email</label>
                <input 
                  required
                  type="email" 
                  placeholder="jean@example.com"
                  className={`w-full p-4 rounded-xl bg-beige border-none focus:ring-2 focus:outline-none transition-all ${
                    emailError ? 'focus:ring-red-500/20 border-2 border-red-200' : 'focus:ring-primary/20'
                  }`}
                  value={formData.email}
                  onChange={(e) => {
                    const emailValue = e.target.value;
                    setFormData({...formData, email: emailValue});
                    setEmailError(null);

                    // Annuler le debounce précédent
                    if (emailDebounceRef.current) {
                      clearTimeout(emailDebounceRef.current);
                    }

                    // Valider et sauvegarder seulement si l'email est valide et complet
                    if (emailValue.trim()) {
                      // Vérifier le format de l'email
                      if (!validateEmailFormat(emailValue.trim())) {
                        // Email invalide, ne pas sauvegarder encore
                        return;
                      }

                      // Email valide, sauvegarder avec debounce (2 secondes après la dernière frappe)
                      emailDebounceRef.current = setTimeout(() => {
                        const trimmedEmail = emailValue.trim();
                        if (trimmedEmail && validateEmailFormat(trimmedEmail)) {
                          localStorage.setItem('checkout_email', trimmedEmail);
                          // Notifier le parent pour sauvegarder le panier
                          if (onEmailChange) {
                            onEmailChange(trimmedEmail);
                          }
                        }
                      }, 2000);
                    } else {
                      localStorage.removeItem('checkout_email');
                    }
                  }}
                  onBlur={async () => {
                    // Valider l'email quand l'utilisateur quitte le champ
                    const trimmedEmail = formData.email.trim();
                    if (trimmedEmail) {
                      if (!validateEmailFormat(trimmedEmail)) {
                        setEmailError('Format d\'email invalide');
                        return;
                      }

                      // Vérifier si l'email existe déjà (pour information)
                      setIsValidatingEmail(true);
                      try {
                        const exists = await checkEmailExists(trimmedEmail);
                        // Si l'email existe déjà, c'est OK (l'utilisateur pourra utiliser son compte existant)
                        // Pas d'erreur, on laisse continuer
                      } catch (error) {
                        console.error('Error checking email:', error);
                      } finally {
                        setIsValidatingEmail(false);
                      }
                    }
                  }}
                />
                {emailError && (
                  <p className="text-xs text-red-600 font-bold mt-1">{emailError}</p>
                )}
                {isValidatingEmail && (
                  <p className="text-xs text-dark/40 mt-1">Vérification de l'email...</p>
                )}
              </div>
              <div className="space-y-2">
                <label className="text-sm font-bold text-dark/70 ml-1">Téléphone</label>
                <input 
                  required
                  type="tel" 
                  placeholder="+225 07 00 00 00 00"
                  className="w-full p-4 rounded-xl bg-beige border-none focus:ring-2 focus:ring-primary/20 focus:outline-none transition-all"
                  value={formData.phone}
                  onChange={e => setFormData({...formData, phone: e.target.value})}
                />
              </div>
              <div className="sm:col-span-2 space-y-2">
                <label className="text-sm font-bold text-dark/70 ml-1">Adresse exacte d'Abidjan</label>
                <textarea 
                  required
                  placeholder="Cocody, Riviera 3, Rue de la Paix..."
                  className="w-full p-4 rounded-xl bg-beige border-none focus:ring-2 focus:ring-primary/20 focus:outline-none transition-all min-h-[100px]"
                  value={formData.address}
                  onChange={e => setFormData({...formData, address: e.target.value})}
                />
              </div>
            </form>
          </section>

          <section className="bg-white p-8 rounded-[40px] shadow-sm border border-beige">
            <h2 className="text-2xl font-bold mb-8 flex items-center gap-3">
              <span className="w-10 h-10 bg-primary text-white rounded-xl flex items-center justify-center text-lg">2</span>
              Paiement & Compte
            </h2>
            
            {/* Méthode de paiement - Paiement à la livraison uniquement */}
            <div className="mb-8">
              <div className="bg-primary/5 border-2 border-primary rounded-2xl p-6 flex items-center justify-center gap-3">
                <Truck className="text-primary" size={24} />
                <div className="text-center">
                  <p className="font-bold text-primary text-lg">Paiement à la livraison</p>
                  <p className="text-sm text-dark/60 mt-1">Vous paierez lors de la réception de votre commande</p>
                </div>
              </div>
              <p className="text-xs text-dark/40 text-center mt-3 italic">
                Les paiements par carte et mobile money seront disponibles prochainement
              </p>
            </div>

            <div className="bg-beige/50 p-6 rounded-2xl border border-beige">
              <label className="flex items-start gap-4 cursor-pointer group">
                <div className="relative flex items-center mt-1">
                  <input 
                    type="checkbox" 
                    required
                    className="w-6 h-6 rounded-lg border-2 border-primary text-primary focus:ring-primary focus:ring-offset-0 transition-all cursor-pointer"
                    checked={formData.acceptedAccount}
                    onChange={e => setFormData({...formData, acceptedAccount: e.target.checked})}
                  />
                </div>
                <div className="flex-1">
                  <p className="text-sm md:text-base font-semibold leading-snug text-dark">
                    Un compte client sera automatiquement créé après le paiement afin de vous permettre de suivre vos commandes.
                  </p>
                  <p className="text-xs text-dark/40 mt-1">En cochant cette case, vous acceptez nos CGV et notre politique de confidentialité.</p>
                </div>
              </label>
            </div>
          </section>
        </div>

        {/* Order Summary */}
        <div className="lg:col-span-1">
          <div className="bg-white p-8 rounded-[40px] shadow-lg border border-beige sticky top-32">
            <h3 className="text-xl font-bold mb-8">Ma Commande</h3>
            
            <div className="space-y-6 mb-8 max-h-[400px] overflow-y-auto pr-2 custom-scrollbar">
              {cart.map((item) => (
                <div key={item.recipe.id} className="flex gap-4 group">
                  <div className="w-16 h-16 rounded-2xl overflow-hidden flex-shrink-0">
                    <img src={item.recipe.image} className="w-full h-full object-cover" alt={item.recipe.title} loading="lazy" />
                  </div>
                  <div className="flex-grow">
                    <h4 className="font-bold text-sm leading-tight mb-1">{item.recipe.title}</h4>
                    <p className="text-xs text-dark/40">
                      Qté: {item.quantity} × {item.totalPrice.toLocaleString()} F
                      {item.totalPrice !== item.recipe.price && (
                        <span className="ml-2 text-primary font-bold">(personnalisé)</span>
                      )}
                    </p>
                    {item.selectedIngredients.length !== item.recipe.ingredients.length && (
                      <p className="text-[10px] text-dark/30 mt-1">
                        {item.selectedIngredients.length}/{item.recipe.ingredients.length} ingrédients
                      </p>
                    )}
                  </div>
                  <button 
                    onClick={() => onRemoveFromCart(item.recipe.id)}
                    className="text-dark/20 hover:text-red-500 transition-colors"
                  >
                    <Trash2 size={16} />
                  </button>
                </div>
              ))}
            </div>

            <div className="space-y-4 pt-8 border-t border-beige">
              <div className="flex justify-between text-dark/60">
                <span>Sous-total</span>
                <span>{subtotal.toLocaleString()} F CFA</span>
              </div>
              <div className="flex justify-between text-dark/60">
                <span className="flex items-center gap-2">
                  <Truck size={16} /> Livraison Abidjan
                </span>
                <span>{deliveryFee.toLocaleString()} F CFA</span>
              </div>
              <div className="flex justify-between text-2xl font-bold pt-4 border-t border-beige">
                <span>Total</span>
                <span className="text-primary">{total.toLocaleString()} F CFA</span>
              </div>
            </div>

            <button 
              form="checkout-form"
              type="submit"
              disabled={!formData.acceptedAccount || !formData.address.trim()}
              className={`w-full mt-10 py-5 rounded-2xl font-bold text-lg shadow-xl transition-all active:scale-95 flex items-center justify-center gap-3 ${formData.acceptedAccount && formData.address.trim() ? 'bg-accent text-white shadow-accent/20 hover:bg-orange-600' : 'bg-dark/10 text-dark/30 cursor-not-allowed'}`}
            >
              <ShieldCheck size={24} />
              Payer
            </button>
            <p className="text-center text-[10px] text-dark/30 mt-4 uppercase tracking-widest font-bold">Paiement sécurisé par SSL</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Checkout;
