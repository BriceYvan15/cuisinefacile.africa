
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

  return (
    <motion.header 
      variants={headerVariants}
      initial="initial"
      animate="animate"
      className={`fixed top-0 left-0 right-0 z-50 transition-all duration-700 ${
        isHomePage && !isScrolled 
          ? 'bg-transparent py-8' 
          : 'bg-white/95 backdrop-blur-xl shadow-[0_8px_40px_rgba(0,0,0,0.08)] py-3'
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
          isScrolled ? 'bg-dark/5' : 'bg-white/10 backdrop-blur-md'
        }`}>
          {navLinks.map((link) => (
            <button
              key={link.id}
              onClick={() => onNavigate(link.id)}
              className={`text-[11px] font-black uppercase tracking-[0.2em] transition-all hover:text-primary relative group ${
                currentPage === link.id 
                  ? 'text-primary' 
                  : (isScrolled ? 'text-dark/80' : 'text-white/90')
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
            isScrolled ? 'bg-dark/5' : 'bg-white/10 backdrop-blur-md'
          }`}>
            <button 
              onClick={() => onNavigate('dashboard')}
              className={`p-3 rounded-xl transition-all ${
                isScrolled ? 'text-dark/70 hover:bg-white hover:text-primary shadow-sm' : 'text-white hover:bg-white/20'
              }`}
            >
              <UserIcon size={20} />
            </button>
            <button 
              onClick={() => onNavigate('checkout')}
              className={`p-3 rounded-xl transition-all relative ${
                isScrolled ? 'text-dark/70 hover:bg-white hover:text-primary shadow-sm' : 'text-white hover:bg-white/20'
              }`}
            >
              <ShoppingBag size={20} />
              {cartCount > 0 && (
                <motion.span 
                  initial={{ scale: 0 }}
                  animate={{ scale: 1 }}
                  className="absolute top-2 right-2 bg-primary text-white text-[9px] font-black w-4.5 h-4.5 rounded-full flex items-center justify-center border-2 border-white"
                >
                  {cartCount}
                </motion.span>
              )}
            </button>
          </div>
          
          <motion.button 
            whileHover={{ scale: 1.05, boxShadow: "0 20px 40px -10px rgba(242,153,74,0.3)" }}
            whileTap={{ scale: 0.95 }}
            onClick={() => onNavigate('recipes')}
            className="hidden sm:block bg-accent text-white px-8 py-4 rounded-2xl text-[10px] font-black tracking-widest shadow-xl shadow-accent/20 transition-all uppercase"
          >
            Commander
          </motion.button>
          
          <button 
            className={`md:hidden p-3 rounded-2xl transition-all ${
              isScrolled ? 'text-dark hover:bg-dark/5' : 'text-white hover:bg-white/10'
            }`}
            onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
          >
            {isMobileMenuOpen ? <X size={28} /> : <Menu size={28} />}
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
            className="md:hidden bg-white/98 backdrop-blur-2xl border-t border-beige overflow-hidden shadow-2xl absolute top-full left-0 right-0"
          >
            <div className="container mx-auto px-6 py-10 flex flex-col gap-5">
              {navLinks.map((link) => (
                <motion.button
                  key={link.id}
                  whileTap={{ x: 10 }}
                  onClick={() => {
                    onNavigate(link.id);
                    setIsMobileMenuOpen(false);
                  }}
                  className={`text-xs font-black uppercase tracking-[0.25em] text-left p-5 rounded-2xl transition-all ${
                    currentPage === link.id ? 'bg-primary/10 text-primary' : 'text-dark/60 hover:bg-beige'
                  }`}
                >
                  {link.name}
                </motion.button>
              ))}
              <div className="h-px bg-beige/50 my-4" />
              <button 
                onClick={() => {
                  onNavigate('recipes');
                  setIsMobileMenuOpen(false);
                }}
                className="bg-accent text-white p-6 rounded-[2rem] text-center font-black text-xs uppercase tracking-widest shadow-2xl shadow-accent/20"
              >
                <div className={`ml-4 hidden xl:block transition-all duration-500 ${isScrolled ? 'opacity-0 -translate-x-4 pointer-events-none' : 'opacity-100'}`}>
                  <span className={`block font-black text-[10px] uppercase tracking-[0.3em] leading-none ${isHomePage && !isScrolled ? 'text-white' : 'text-dark'}`}>
                    Cuisine
                  </span>
                  <span className={`block font-black text-[10px] uppercase tracking-[0.3em] mt-1.5 leading-none ${isHomePage && !isScrolled ? 'text-accent' : 'text-primary'}`}>
                    Facile
                  </span>
                </div>
                <span className={`block font-black text-[10px] uppercase tracking-[0.3em] mt-1.5 leading-none ${isHomePage && !isScrolled ? 'text-accent' : 'text-primary'}`}>
                  Facile
                </span>
                Commander ma box
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </motion.header>
  );
};

export default Header;
