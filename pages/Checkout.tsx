
import React, { useState } from 'react';
import { motion } from 'framer-motion';
import { CreditCard, Truck, ShieldCheck, Trash2, ArrowLeft } from 'lucide-react';
import { CartItem } from '../types';

interface CheckoutProps {
  cart: CartItem[];
  onRemoveFromCart: (id: string) => void;
  onPlaceOrder: (userData: { email: string; phone: string; name: string }) => void;
  onNavigate: (page: string) => void;
}

const Checkout: React.FC<CheckoutProps> = ({ cart, onRemoveFromCart, onPlaceOrder, onNavigate }) => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    address: '',
    acceptedAccount: false,
  });

  const subtotal = cart.reduce((acc, item) => acc + (item.recipe.price * item.quantity), 0);
  const deliveryFee = 1500;
  const total = subtotal + deliveryFee;

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (formData.acceptedAccount) {
      onPlaceOrder({ email: formData.email, phone: formData.phone, name: formData.name });
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
                  className="w-full p-4 rounded-xl bg-beige border-none focus:ring-2 focus:ring-primary/20 focus:outline-none transition-all"
                  value={formData.email}
                  onChange={e => setFormData({...formData, email: e.target.value})}
                />
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
            
            <div className="grid grid-cols-2 gap-4 mb-8">
              <button className="flex items-center justify-center gap-3 p-6 rounded-2xl border-2 border-primary bg-primary/5 font-bold text-primary">
                <CreditCard /> Carte / Mobile
              </button>
              <button className="flex items-center justify-center gap-3 p-6 rounded-2xl border-2 border-beige bg-white font-bold text-dark/40 hover:border-dark/10 transition-colors">
                À la livraison
              </button>
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
                    <img src={item.recipe.image} className="w-full h-full object-cover" alt={item.recipe.title} />
                  </div>
                  <div className="flex-grow">
                    <h4 className="font-bold text-sm leading-tight mb-1">{item.recipe.title}</h4>
                    <p className="text-xs text-dark/40">Qté: {item.quantity} × {item.recipe.price} F</p>
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
              disabled={!formData.acceptedAccount}
              className={`w-full mt-10 py-5 rounded-2xl font-bold text-lg shadow-xl transition-all active:scale-95 flex items-center justify-center gap-3 ${formData.acceptedAccount ? 'bg-accent text-white shadow-accent/20 hover:bg-orange-600' : 'bg-dark/10 text-dark/30 cursor-not-allowed'}`}
            >
              <ShieldCheck size={24} />
              Payer & Commander
            </button>
            <p className="text-center text-[10px] text-dark/30 mt-4 uppercase tracking-widest font-bold">Paiement sécurisé par SSL</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Checkout;
