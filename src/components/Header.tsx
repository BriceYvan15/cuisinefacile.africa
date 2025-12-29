
import React, { useState, useEffect } from 'react';
import { Menu, X, ShoppingBag, User as UserIcon } from 'lucide-react';
import { motion, AnimatePresence, Variants } from 'framer-motion';

interface HeaderProps {
  onNavigate: (page: string) => void;
  currentPage: string;
  cartCount: number;
}

const Header: React.FC<HeaderProps> = ({ onNavigate, currentPage, cartCount }) => {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);

  useEffect(() => {
    const handleScroll = () => setIsScrolled(window.scrollY > 20);
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const navLinks = [
    { name: 'Accueil', id: 'home' },
    { name: 'Nos Recettes', id: 'recipes' },
    { name: 'Fonctionnement', id: 'how-it-works' },
  ];

  const headerVariants: Variants = {
    initial: { y: -100, opacity: 0 },
    animate: { 
      y: 0, 
      opacity: 1,
      transition: { 
        duration: 0.8, 
        ease: [0.16, 1, 0.3, 1] as [number, number, number, number] 
      } 
    }
  };

  // Détermine si nous sommes sur la page d'accueil
  const isHomePage = currentPage === 'home';

  // Afficher l'effet de verre sur toutes les pages sauf sur l'accueil (où on l'affiche uniquement au scroll)
  const shouldShowGlassEffect = !isHomePage || isScrolled;

  return (
    <motion.header 
      variants={headerVariants}
      initial="initial"
      animate="animate"
      className={`fixed top-0 left-0 right-0 z-50 transition-all duration-700 ${
        shouldShowGlassEffect 
          ? 'bg-white/95 backdrop-blur-xl shadow-[0_8px_40px_rgba(0,0,0,0.08)] py-3' 
          : 'bg-transparent py-8'
      }`}
    >
      <div className="container mx-auto px-4 md:px-6 flex items-center justify-between">
        
        {/* Logo Badge Signature */}
        <motion.div 
          whileHover={{ scale: 1.02 }}
          whileTap={{ scale: 0.98 }}
          className="flex items-center cursor-pointer group z-50"
          onClick={() => onNavigate('home')}
        >
          <div className={`relative bg-white p-1.5 md:p-2 rounded-2xl md:rounded-[1.25rem] 
            shadow-[0_15px_35px_-5px_rgba(0,0,0,0.12)] 
            border border-beige/50 transition-all duration-500
            group-hover:shadow-[0_20px_40px_-5px_rgba(139,29,29,0.15)]
            group-hover:-translate-y-0.5
          `}>
            <img 
              src="/cuisine_facile.africa.jpg" 
              alt="CuisineFacile" 
              className="h-12 w-auto object-contain"
            />
            <motion.div 
              animate={{ scale: [1, 1.2, 1] }}
              transition={{ repeat: Infinity, duration: 2 }}
              className="absolute -top-1 -right-1 w-3.5 h-3.5 bg-primary rounded-full border-2 border-white shadow-sm" 
            />
          </div>
        </motion.div>

        {/* Desktop Nav */}
        <nav className={`hidden md:flex items-center gap-10 px-10 py-3.5 rounded-2xl transition-all duration-700 ${
          shouldShowGlassEffect 
            ? 'bg-white/10 backdrop-blur-md shadow-lg'
            : 'bg-white/10 backdrop-blur-md'
        }`}>
          {navLinks.map((link) => (
            <button
              key={link.id}
              onClick={() => onNavigate(link.id)}
              className={`relative font-medium text-sm uppercase tracking-wider transition-colors ${
                currentPage === link.id 
                  ? 'text-accent font-bold' 
                  : shouldShowGlassEffect 
                    ? 'text-dark hover:text-accent/90' 
                    : 'text-white hover:text-accent/80'
              }`}
            >
              {link.name}
              <motion.span 
                layoutId="navUnderline"
                className={`absolute -bottom-1 left-0 h-0.5 bg-primary transition-all duration-300 ${currentPage === link.id ? 'w-full' : 'w-0 group-hover:w-full'}`} 
              />
            </button>
          ))}
        </nav>

        {/* Actions */}
        <div className="flex items-center gap-3 md:gap-5">
          <div className={`flex items-center gap-1.5 p-1.5 rounded-2xl transition-all duration-700 ${
            shouldShowGlassEffect 
              ? 'bg-white/10 backdrop-blur-md shadow-lg' 
              : 'bg-white/10 backdrop-blur-md'
          }`}>
            <button 
              onClick={() => onNavigate('dashboard')}
              className={`p-3 rounded-xl transition-all ${
                shouldShowGlassEffect 
                  ? 'text-dark hover:bg-white/20 hover:text-primary' 
                  : 'text-white hover:bg-white/20'
              }`}
            >
              <UserIcon size={20} />
            </button>
            <button 
              onClick={() => onNavigate('checkout')}
              className={`p-3 rounded-xl transition-all relative ${
                shouldShowGlassEffect 
                  ? 'text-dark hover:bg-white/20 hover:text-primary' 
                  : 'text-white hover:bg-white/20'
              }`}
            >
              <ShoppingBag size={20} />
              {cartCount > 0 && (
                <motion.span 
                  initial={{ scale: 0 }}
                  animate={{ scale: 1 }}
                  className={`absolute top-2 right-2 text-[9px] font-black w-4.5 h-4.5 rounded-full flex items-center justify-center border-2 ${
                    shouldShowGlassEffect 
                      ? 'bg-primary text-white border-white' 
                      : 'bg-accent text-white border-white'
                  }`}
                >
                  {cartCount}
                </motion.span>
              )}
            </button>
          </div>
          
          <motion.button 
            whileHover={{ 
              scale: 1.05, 
              boxShadow: shouldShowGlassEffect 
                ? "0 20px 40px -10px rgba(0,0,0,0.15)" 
                : "0 20px 40px -10px rgba(242,153,74,0.3)"
            }}
            whileTap={{ scale: 0.95 }}
            onClick={() => onNavigate('recipes')}
            className={`hidden sm:block px-8 py-4 rounded-2xl text-[10px] font-black tracking-widest transition-all uppercase ${
              shouldShowGlassEffect
                ? 'bg-primary text-white shadow-lg hover:bg-primary/90'
                : 'bg-accent text-white shadow-xl shadow-accent/20 hover:bg-accent/90'
            }`}
          >
            Commander
          </motion.button>
          
          <button 
            className={`md:hidden p-3 rounded-2xl transition-all ${
              shouldShowGlassEffect 
                ? 'text-dark hover:bg-white/20' 
                : 'text-white hover:bg-white/10'
            }`}
            onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
          >
            {isMobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
          </button>
        </div>
      </div>

      {/* Mobile Menu */}
      <AnimatePresence>
        {isMobileMenuOpen && (
          <motion.div
            initial={{ opacity: 0, y: -20 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -20 }}
            className="md:hidden bg-white/95 backdrop-blur-xl border-t border-white/20 overflow-hidden shadow-2xl absolute top-full left-0 right-0"
            style={{
              background: 'rgba(255, 255, 255, 0.98)',
              backdropFilter: 'blur(20px)',
              WebkitBackdropFilter: 'blur(20px)'
            }}
          >
            <div className="container mx-auto px-6 py-8 flex flex-col gap-4">
              {navLinks.map((link) => (
                <motion.button
                  key={link.id}
                  whileTap={{ scale: 0.98 }}
                  onClick={() => {
                    onNavigate(link.id);
                    setIsMobileMenuOpen(false);
                  }}
                  className={`text-sm font-bold uppercase tracking-wider text-left p-4 rounded-xl transition-all ${
                    currentPage === link.id 
                      ? 'bg-primary/10 text-primary' 
                      : 'text-dark/80 hover:bg-gray-50'
                  }`}
                >
                  {link.name}
                </motion.button>
              ))}
              <div className="h-px bg-gray-100 my-4" />
              <motion.button 
                whileTap={{ scale: 0.98 }}
                onClick={() => {
                  onNavigate('recipes');
                  setIsMobileMenuOpen(false);
                }}
                className="w-full bg-primary text-white p-5 rounded-2xl text-center font-black text-sm uppercase tracking-wider shadow-lg hover:bg-primary/90 transition-colors"
              >
                Commander ma box
              </motion.button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </motion.header>
  );
};

export default Header;
