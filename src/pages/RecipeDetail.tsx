
import React, { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { Clock, Flame, ChevronLeft, Check, Minus, Plus, ShoppingBag, Utensils, Info } from 'lucide-react';
import { Recipe, SelectedIngredient, CartItem } from '../types';

interface RecipeDetailProps {
  recipe: Recipe;
  onAddToCart: (item: CartItem) => void;
  onBack: () => void;
}

const RecipeDetail: React.FC<RecipeDetailProps> = ({ recipe, onAddToCart, onBack }) => {
  const [selectedIngredients, setSelectedIngredients] = useState<SelectedIngredient[]>([]);
  const [activeTab, setActiveTab] = useState<'ingredients' | 'steps'>('ingredients');

  useEffect(() => {
    // Initialisation des ingrédients avec les valeurs par défaut de la recette
    setSelectedIngredients(
      recipe.ingredients.map(ing => ({
        ...ing,
        selected: true,
        selectedQuantity: ing.quantity
      }))
    );
  }, [recipe]);

  const toggleIngredient = (id: string) => {
    setSelectedIngredients(prev => prev.map(ing => 
      ing.id === id ? { ...ing, selected: !ing.selected } : ing
    ));
  };

  const updateQuantity = (id: string, delta: number) => {
    setSelectedIngredients(prev => prev.map(ing => {
      if (ing.id === id) {
        const newQty = Math.max(0, ing.selectedQuantity + delta);
        return { ...ing, selectedQuantity: newQty, selected: newQty > 0 };
      }
      return ing;
    }));
  };

  const totalPrice = selectedIngredients.reduce((acc, ing) => 
    ing.selected ? acc + (ing.selectedQuantity * ing.pricePerUnit) : acc, 0
  );

  const handleAddToCart = () => {
    const cartItem: CartItem = {
      recipe,
      selectedIngredients: selectedIngredients.filter(ing => ing.selected),
      totalPrice,
      quantity: 1
    };
    onAddToCart(cartItem);
  };

  return (
    <div className="pt-24 pb-24 bg-beige min-h-screen">
      <div className="container mx-auto px-4 md:px-6">
        {/* Back Button */}
        <button 
          onClick={onBack}
          className="flex items-center gap-2 text-dark/60 hover:text-primary transition-colors mb-8 font-bold group"
        >
          <ChevronLeft className="group-hover:-translate-x-1 transition-transform" />
          Retour au menu
        </button>

        <div className="grid lg:grid-cols-2 gap-12 items-start">
          {/* Section Image & Meta */}
          <motion.div 
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            className="space-y-8"
          >
            <div className="relative aspect-[4/3] rounded-[40px] overflow-hidden shadow-2xl border-8 border-white">
              <img src={recipe.image} alt={recipe.title} className="w-full h-full object-cover" />
              <div className="absolute top-6 left-6 bg-white/95 backdrop-blur px-4 py-2 rounded-full text-xs font-black text-primary uppercase tracking-widest shadow-lg">
                {recipe.category}
              </div>
            </div>

            <div className="bg-white p-8 rounded-[40px] shadow-sm border border-beige/50">
              <h1 className="text-3xl md:text-4xl font-black text-dark mb-4">{recipe.title}</h1>
              <p className="text-dark/60 text-lg leading-relaxed mb-8">{recipe.description}</p>
              
              <div className="flex items-center gap-8 py-6 border-y border-beige">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 bg-primary/10 rounded-xl flex items-center justify-center text-primary">
                    <Clock size={20} />
                  </div>
                  <div>
                    <p className="text-[10px] font-bold text-dark/40 uppercase tracking-widest">Temps</p>
                    <p className="font-bold">{recipe.time}</p>
                  </div>
                </div>
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 bg-accent/10 rounded-xl flex items-center justify-center text-accent">
                    <Flame size={20} />
                  </div>
                  <div>
                    <p className="text-[10px] font-bold text-dark/40 uppercase tracking-widest">Calories</p>
                    <p className="font-bold">{recipe.calories}</p>
                  </div>
                </div>
              </div>
            </div>
          </motion.div>

          {/* Section Interactive (Ingrédients / Étapes) */}
          <motion.div 
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            className="bg-white rounded-[40px] shadow-xl border border-beige/50 overflow-hidden sticky top-32"
          >
            {/* Tabs */}
            <div className="flex border-b border-beige">
              <button 
                onClick={() => setActiveTab('ingredients')}
                className={`flex-1 py-6 font-black text-sm uppercase tracking-widest transition-all ${activeTab === 'ingredients' ? 'text-primary bg-primary/5 border-b-4 border-primary' : 'text-dark/40 hover:text-dark'}`}
              >
                1. Ingrédients
              </button>
              <button 
                onClick={() => setActiveTab('steps')}
                className={`flex-1 py-6 font-black text-sm uppercase tracking-widest transition-all ${activeTab === 'steps' ? 'text-primary bg-primary/5 border-b-4 border-primary' : 'text-dark/40 hover:text-dark'}`}
              >
                2. Préparation
              </button>
            </div>

            <div className="p-8">
              {activeTab === 'ingredients' ? (
                <div className="space-y-6">
                  <div className="flex items-center gap-2 text-dark/40 text-xs font-bold uppercase mb-4">
                    <Info size={14} />
                    Personnalisez votre box selon vos envies
                  </div>
                  
                  <div className="space-y-4 max-h-[400px] overflow-y-auto pr-2 custom-scrollbar">
                    {selectedIngredients.map(ing => (
                      <div 
                        key={ing.id} 
                        className={`flex items-center justify-between p-4 rounded-2xl border transition-all ${ing.selected ? 'border-primary/20 bg-primary/5' : 'border-beige bg-white opacity-60'}`}
                      >
                        <div className="flex items-center gap-4">
                          <button 
                            onClick={() => toggleIngredient(ing.id)}
                            className={`w-6 h-6 rounded-lg border-2 flex items-center justify-center transition-all ${ing.selected ? 'bg-primary border-primary text-white' : 'border-dark/10 bg-white'}`}
                          >
                            {ing.selected && <Check size={14} strokeWidth={4} />}
                          </button>
                          <div>
                            <p className="font-bold text-dark leading-tight">{ing.name}</p>
                            <p className="text-xs text-dark/40 uppercase font-black tracking-tighter">
                              {ing.selectedQuantity} {ing.unit}
                            </p>
                          </div>
                        </div>

                        <div className="flex items-center gap-3 bg-white px-3 py-2 rounded-xl border border-beige shadow-sm">
                          <button 
                            onClick={() => updateQuantity(ing.id, -1)}
                            className="text-primary hover:bg-primary/10 p-1 rounded-md transition-colors"
                          >
                            <Minus size={16} />
                          </button>
                          <span className="font-black text-sm w-8 text-center">{ing.selectedQuantity}</span>
                          <button 
                            onClick={() => updateQuantity(ing.id, 1)}
                            className="text-primary hover:bg-primary/10 p-1 rounded-md transition-colors"
                          >
                            <Plus size={16} />
                          </button>
                        </div>
                      </div>
                    ))}
                  </div>

                  <div className="pt-8 border-t border-beige">
                    <div className="flex justify-between items-center mb-6">
                      <p className="text-dark/40 font-bold uppercase tracking-widest">Total Personnalisé</p>
                      <p className="text-3xl font-black text-primary">{totalPrice.toLocaleString()} F CFA</p>
                    </div>
                    <button 
                      onClick={handleAddToCart}
                      disabled={totalPrice === 0}
                      className="w-full bg-accent hover:bg-orange-600 text-white py-5 rounded-2xl font-black text-lg shadow-xl shadow-accent/20 transition-all active:scale-95 flex items-center justify-center gap-3 disabled:bg-dark/10 disabled:shadow-none"
                    >
                      <ShoppingBag size={24} />
                      Ajouter au Panier
                    </button>
                  </div>
                </div>
              ) : (
                <div className="space-y-8 max-h-[600px] overflow-y-auto pr-2 custom-scrollbar">
                  <div className="bg-primary/5 p-6 rounded-3xl border border-primary/10 flex gap-4">
                    <Utensils className="text-primary shrink-0" size={24} />
                    <p className="text-sm font-medium text-dark/70 leading-relaxed italic">
                      "Suivez ces étapes simples pour réaliser ce plat chez vous. Ingrédients pré-dosés pour vous faciliter la vie !"
                    </p>
                  </div>
                  {recipe.preparation.map(step => (
                    <div key={step.stepNumber} className="flex gap-6">
                      <div className="w-12 h-12 rounded-2xl bg-beige flex items-center justify-center text-primary font-black text-xl shrink-0">
                        {step.stepNumber}
                      </div>
                      <div className="pt-2">
                        <p className="text-lg text-dark/80 leading-relaxed">{step.description}</p>
                        {step.duration && (
                          <span className="inline-flex items-center gap-1.5 text-xs font-bold text-primary mt-3 bg-primary/10 px-3 py-1 rounded-full">
                            <Clock size={12} /> {step.duration}
                          </span>
                        )}
                      </div>
                    </div>
                  ))}
                  <div className="p-8 bg-beige rounded-[32px] text-center border-2 border-dashed border-dark/5">
                    <p className="font-bold text-dark/40 uppercase tracking-widest text-xs">Fin de la préparation</p>
                    <p className="text-lg font-bold text-dark/60 mt-2">Bon appétit ! 🍽️</p>
                  </div>
                </div>
              )}
            </div>
          </motion.div>
        </div>
      </div>
    </div>
  );
};

export default RecipeDetail;
