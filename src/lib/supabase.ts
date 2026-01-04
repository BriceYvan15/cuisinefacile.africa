import { createClient } from '@supabase/supabase-js';
import { Recipe, Order, User, Ingredient, PreparationStep, CartItem } from '../types';

// Configuration Supabase
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing Supabase environment variables. Please check your .env.local file.');
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Types pour les données de la base de données
interface RecipeRow {
  id: string;
  title: string;
  description: string;
  image: string;
  price: number;
  time: string;
  calories: string;
  category: string;
  tags: string[];
  created_at: string;
  updated_at: string;
}

interface IngredientRow {
  id: string;
  recipe_id: string;
  name: string;
  unit: string;
  quantity: number;
  price_per_unit: number | null; // Peut être NULL
  image: string | null;
}

interface PreparationStepRow {
  id: string;
  recipe_id: string;
  step_number: number;
  description: string;
  duration: string | null;
}

interface OrderRow {
  id: string;
  user_id: string | null;
  total: number;
  status: 'pending' | 'processing' | 'delivered';
  delivery_address: string | null;
  created_at: string;
  updated_at: string;
}

interface OrderItemRow {
  id: string;
  order_id: string;
  recipe_id: string;
  quantity: number;
  total_price: number;
}

interface OrderItemIngredientRow {
  id: string;
  order_item_id: string;
  ingredient_id: string;
  selected: boolean;
  selected_quantity: number;
}

// ============================================
// SERVICE: Recipes (Recettes)
// ============================================

/**
 * Récupère toutes les recettes avec leurs ingrédients et étapes
 */
export const getRecipes = async (): Promise<Recipe[]> => {
  try {
    // Récupérer les recettes
    const { data: recipes, error: recipesError } = await supabase
      .from('recipes')
      .select('*')
      .order('created_at', { ascending: false });

    if (recipesError) throw recipesError;
    if (!recipes) return [];

    // Pour chaque recette, récupérer les ingrédients et les étapes
    const recipesWithDetails = await Promise.all(
      recipes.map(async (recipe: RecipeRow) => {
        // Récupérer les ingrédients
        const { data: ingredients, error: ingredientsError } = await supabase
          .from('ingredients')
          .select('*')
          .eq('recipe_id', recipe.id)
          .order('name');

        if (ingredientsError) throw ingredientsError;

        // Récupérer les étapes de préparation
        const { data: steps, error: stepsError } = await supabase
          .from('preparation_steps')
          .select('*')
          .eq('recipe_id', recipe.id)
          .order('step_number');

        if (stepsError) throw stepsError;

        // Transformer les données au format Recipe
        return {
          id: recipe.id,
          title: recipe.title,
          description: recipe.description || '',
          image: recipe.image,
          price: Number(recipe.price),
          time: recipe.time,
          calories: recipe.calories,
          category: recipe.category,
          tags: recipe.tags || [],
          ingredients: (ingredients || []).map((ing: IngredientRow) => ({
            id: ing.id,
            name: ing.name,
            unit: ing.unit,
            quantity: Number(ing.quantity),
            pricePerUnit: ing.price_per_unit ? Number(ing.price_per_unit) : undefined,
            image: ing.image || undefined,
          })),
          preparation: (steps || []).map((step: PreparationStepRow) => ({
            stepNumber: step.step_number,
            description: step.description,
            duration: step.duration || undefined,
          })),
        } as Recipe;
      })
    );

    return recipesWithDetails;
  } catch (error) {
    console.error('Error fetching recipes:', error);
    throw error;
  }
};

/**
 * Récupère une recette par son ID
 */
export const getRecipeById = async (id: string): Promise<Recipe | null> => {
  try {
    // Récupérer la recette
    const { data: recipe, error: recipeError } = await supabase
      .from('recipes')
      .select('*')
      .eq('id', id)
      .single();

    if (recipeError) throw recipeError;
    if (!recipe) return null;

    // Récupérer les ingrédients
    const { data: ingredients, error: ingredientsError } = await supabase
      .from('ingredients')
      .select('*')
      .eq('recipe_id', id)
      .order('name');

    if (ingredientsError) throw ingredientsError;

    // Récupérer les étapes
    const { data: steps, error: stepsError } = await supabase
      .from('preparation_steps')
      .select('*')
      .eq('recipe_id', id)
      .order('step_number');

    if (stepsError) throw stepsError;

    // Transformer au format Recipe
    return {
      id: recipe.id,
      title: recipe.title,
      description: recipe.description || '',
      image: recipe.image,
      price: Number(recipe.price),
      time: recipe.time,
      calories: recipe.calories,
      category: recipe.category,
      tags: recipe.tags || [],
      ingredients: (ingredients || []).map((ing: IngredientRow) => ({
        id: ing.id,
        name: ing.name,
        unit: ing.unit,
        quantity: Number(ing.quantity),
        pricePerUnit: ing.price_per_unit ? Number(ing.price_per_unit) : undefined,
        image: ing.image || undefined,
      })),
      preparation: (steps || []).map((step: PreparationStepRow) => ({
        stepNumber: step.step_number,
        description: step.description,
        duration: step.duration || undefined,
      })),
    } as Recipe;
  } catch (error) {
    console.error('Error fetching recipe:', error);
    throw error;
  }
};

// ============================================
// SERVICE: Users (Utilisateurs)
// ============================================

/**
 * Crée ou met à jour un utilisateur
 */
export const upsertUser = async (userData: User): Promise<User> => {
  try {
    const { data, error } = await supabase
      .from('users')
      .upsert(
        {
          email: userData.email,
          phone: userData.phone,
          name: userData.name,
          role: userData.role || 'user', // Par défaut 'user' si non spécifié
        },
        {
          onConflict: 'email',
        }
      )
      .select()
      .single();

    if (error) throw error;

    return {
      email: data.email,
      phone: data.phone,
      name: data.name,
      role: data.role || 'user',
    };
  } catch (error) {
    console.error('Error upserting user:', error);
    throw error;
  }
};

/**
 * Récupère un utilisateur par email
 */
export const getUserByEmail = async (email: string): Promise<User | null> => {
  try {
    const { data, error } = await supabase
      .from('users')
      .select('email, phone, name, role')
      .eq('email', email)
      .single();

    if (error) {
      if (error.code === 'PGRST116') return null; // Pas trouvé
      throw error;
    }

    if (!data) return null;

    return {
      email: data.email,
      phone: data.phone,
      name: data.name,
      role: (data.role as 'user' | 'admin') || 'user', // Par défaut 'user' si le rôle n'existe pas
    };
  } catch (error) {
    console.error('Error fetching user:', error);
    throw error;
  }
};

/**
 * Vérifie si un email existe déjà dans la base de données
 */
export const checkEmailExists = async (email: string): Promise<boolean> => {
  try {
    const { data, error } = await supabase
      .from('users')
      .select('email')
      .eq('email', email)
      .maybeSingle();

    if (error && error.code !== 'PGRST116') {
      throw error;
    }

    return !!data;
  } catch (error) {
    console.error('Error checking email:', error);
    return false;
  }
};

/**
 * Valide le format d'un email
 */
export const validateEmailFormat = (email: string): boolean => {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
};

// ============================================
// SERVICE: Orders (Commandes)
// ============================================

/**
 * Crée une nouvelle commande
 */
export const createOrder = async (
  userEmail: string,
  cartItems: CartItem[],
  deliveryAddress: string,
  total: number,
  userData?: { name: string; phone: string }
): Promise<Order> => {
  try {
    // 1. Récupérer ou créer l'utilisateur
    let user = await getUserByEmail(userEmail);
    let userId: string;

    if (!user) {
      // Si l'utilisateur n'existe pas et qu'on a les données, on le crée
      if (userData) {
        user = await upsertUser({
          email: userEmail,
          phone: userData.phone,
          name: userData.name,
        });
      } else {
        throw new Error('User data required to create new user');
      }
    }

    // Récupérer l'ID utilisateur depuis la DB
    const { data: userRow } = await supabase
      .from('users')
      .select('id')
      .eq('email', userEmail)
      .single();

    if (!userRow) throw new Error('User not found after creation');
    userId = userRow.id;

    // 2. Créer la commande
    const { data: order, error: orderError } = await supabase
      .from('orders')
      .insert({
        user_id: userId,
        total: total,
        status: 'processing',
        delivery_address: deliveryAddress,
      })
      .select()
      .single();

    if (orderError) throw orderError;

    // 3. Créer les items de commande
    const orderItems = [];
    for (const cartItem of cartItems) {
      // Créer l'order_item
      const { data: orderItem, error: orderItemError } = await supabase
        .from('order_items')
        .insert({
          order_id: order.id,
          recipe_id: cartItem.recipe.id,
          quantity: cartItem.quantity,
          total_price: cartItem.totalPrice,
        })
        .select()
        .single();

      if (orderItemError) throw orderItemError;
      orderItems.push(orderItem);

      // Créer les order_item_ingredients
      for (const selectedIng of cartItem.selectedIngredients) {
        if (selectedIng.selected) {
          const { error: ingError } = await supabase
            .from('order_item_ingredients')
            .insert({
              order_item_id: orderItem.id,
              ingredient_id: selectedIng.id,
              selected: true,
              selected_quantity: selectedIng.selectedQuantity,
            });

          if (ingError) throw ingError;
        }
      }
    }

    // 4. Retourner la commande au format Order
    return {
      id: order.id,
      date: order.created_at,
      total: Number(order.total),
      items: cartItems, // On garde les items du panier pour l'affichage immédiat
      status: order.status as 'pending' | 'delivered' | 'processing',
    };
  } catch (error) {
    console.error('Error creating order:', error);
    throw error;
  }
};

/**
 * Récupère toutes les commandes d'un utilisateur
 */
export const getOrdersByUserEmail = async (email: string): Promise<Order[]> => {
  try {
    // Récupérer l'utilisateur
    const { data: userData } = await supabase
      .from('users')
      .select('id')
      .eq('email', email)
      .single();

    if (!userData) return [];

    // Récupérer les commandes
    const { data: orders, error: ordersError } = await supabase
      .from('orders')
      .select('*')
      .eq('user_id', userData.id)
      .order('created_at', { ascending: false });

    if (ordersError) throw ordersError;
    if (!orders) return [];

    // Pour chaque commande, récupérer les items et leurs ingrédients
    const ordersWithDetails = await Promise.all(
      orders.map(async (order: OrderRow) => {
        // Récupérer les order_items
        const { data: orderItems, error: itemsError } = await supabase
          .from('order_items')
          .select('*')
          .eq('order_id', order.id);

        if (itemsError) throw itemsError;

        // Pour chaque item, récupérer la recette et les ingrédients sélectionnés
        const cartItems = await Promise.all(
          (orderItems || []).map(async (item: OrderItemRow) => {
            // Récupérer la recette
            const recipe = await getRecipeById(item.recipe_id);
            if (!recipe) throw new Error(`Recipe ${item.recipe_id} not found`);

            // Récupérer les ingrédients sélectionnés
            const { data: selectedIngs, error: ingsError } = await supabase
              .from('order_item_ingredients')
              .select('*')
              .eq('order_item_id', item.id);

            if (ingsError) throw ingsError;

            // Mapper les ingrédients sélectionnés
            const selectedIngredients = (selectedIngs || []).map((si: OrderItemIngredientRow) => {
              // Trouver l'ingrédient complet
              const ingredient = recipe.ingredients.find((ing) => ing.id === si.ingredient_id);
              if (!ingredient) {
                throw new Error(`Ingredient ${si.ingredient_id} not found`);
              }

              return {
                ...ingredient,
                selected: si.selected,
                selectedQuantity: Number(si.selected_quantity),
              };
            });

            return {
              recipe,
              selectedIngredients,
              totalPrice: Number(item.total_price),
              quantity: item.quantity,
            } as CartItem;
          })
        );

        return {
          id: order.id,
          date: order.created_at,
          total: Number(order.total),
          items: cartItems,
          status: order.status as 'pending' | 'delivered' | 'processing',
        } as Order;
      })
    );

    return ordersWithDetails;
  } catch (error) {
    console.error('Error fetching orders:', error);
    throw error;
  }
};

/**
 * Met à jour le statut d'une commande
 */
export const updateOrderStatus = async (
  orderId: string,
  status: 'pending' | 'processing' | 'delivered'
): Promise<void> => {
  try {
    const { error } = await supabase
      .from('orders')
      .update({ status })
      .eq('id', orderId);

    if (error) throw error;
  } catch (error) {
    console.error('Error updating order status:', error);
    throw error;
  }
};

// ============================================
// SERVICE: Carts (Paniers)
// ============================================

interface CartRow {
  id: string;
  user_id: string | null;
  user_email: string | null;
  items: any; // JSONB
  created_at: string;
  updated_at: string;
}

/**
 * Sauvegarde le panier dans Supabase
 */
export const saveCart = async (
  cartItems: CartItem[],
  userEmail?: string
): Promise<void> => {
  try {
    // Récupérer l'ID utilisateur si email fourni
    let userId: string | null = null;
    if (userEmail) {
      const { data: userData } = await supabase
        .from('users')
        .select('id')
        .eq('email', userEmail)
        .single();
      
      if (userData) {
        userId = userData.id;
      }
    }

    // Vérifier si un panier existe déjà
    // On cherche d'abord par user_id si disponible, sinon par email
    let existingCart = null;
    
    if (userId) {
      const { data, error } = await supabase
        .from('carts')
        .select('*')
        .eq('user_id', userId)
        .order('updated_at', { ascending: false })
        .limit(1)
        .maybeSingle();
      
      if (!error && data) {
        existingCart = data;
      }
    }
    
    // Si pas de panier par user_id, chercher par email
    if (!existingCart && userEmail) {
      const { data, error } = await supabase
        .from('carts')
        .select('*')
        .eq('user_email', userEmail)
        .order('updated_at', { ascending: false })
        .limit(1)
        .maybeSingle();
      
      if (!error && data) {
        existingCart = data;
      }
    }

    if (!userEmail && !userId) {
      // Pas d'email ni d'utilisateur, on ne peut pas sauvegarder
      return;
    }

    // Convertir les CartItems en JSON pour la sauvegarde
    const cartJson = JSON.stringify(cartItems);

    if (existingCart) {
      // Mettre à jour le panier existant
      // Si l'utilisateur a maintenant un user_id mais le panier n'en avait pas, mettre à jour
      const updateData: any = {
        items: cartJson,
        updated_at: new Date().toISOString(),
      };
      
      // Si on a maintenant un user_id mais le panier n'en avait pas, l'ajouter
      if (userId && !existingCart.user_id) {
        updateData.user_id = userId;
      }
      
      const { error } = await supabase
        .from('carts')
        .update(updateData)
        .eq('id', existingCart.id);

      if (error) throw error;

      // Nettoyer les paniers dupliqués (garder seulement le plus récent)
      if (userEmail) {
        // Supprimer les autres paniers avec le même email (sauf celui qu'on vient de mettre à jour)
        await supabase
          .from('carts')
          .delete()
          .eq('user_email', userEmail)
          .neq('id', existingCart.id);
      }
    } else {
      // Créer un nouveau panier
      // Mais d'abord, supprimer les anciens paniers avec le même email pour éviter les doublons
      if (userEmail) {
        await supabase
          .from('carts')
          .delete()
          .eq('user_email', userEmail);
      }
      
      const { error } = await supabase
        .from('carts')
        .insert({
          user_id: userId,
          user_email: userEmail || null,
          items: cartJson,
        });

      if (error) throw error;
    }
  } catch (error) {
    console.error('Error saving cart:', error);
    // Ne pas bloquer l'application si la sauvegarde échoue
    // Le panier reste dans localStorage
  }
};

/**
 * Récupère le panier depuis Supabase
 * Fonctionne avec l'email même si le compte n'existe pas encore
 */
export const getCart = async (userEmail?: string): Promise<CartItem[]> => {
  try {
    if (!userEmail) return [];

    // Récupérer l'ID utilisateur si email fourni (peut ne pas exister encore)
    let userId: string | null = null;
    const { data: userData } = await supabase
      .from('users')
      .select('id')
      .eq('email', userEmail)
      .maybeSingle(); // Utiliser maybeSingle au lieu de single pour ne pas erreur si pas trouvé
    
    if (userData) {
      userId = userData.id;
    }

    // Récupérer le panier : d'abord par user_id si disponible, sinon par email
    let cart = null;
    
    if (userId) {
      const { data, error } = await supabase
        .from('carts')
        .select('*')
        .eq('user_id', userId)
        .order('updated_at', { ascending: false })
        .limit(1)
        .maybeSingle();
      
      if (!error && data) {
        cart = data;
      }
    }
    
    // Si pas de panier par user_id, chercher par email
    if (!cart) {
      const { data, error } = await supabase
        .from('carts')
        .select('*')
        .eq('user_email', userEmail)
        .order('updated_at', { ascending: false })
        .limit(1)
        .maybeSingle();
      
      if (!error && data) {
        cart = data;
      }
    }
    
    if (!cart || !cart.items) return [];

    // Parser le JSON et récupérer les recettes complètes
    const cartItemsJson = typeof cart.items === 'string' ? JSON.parse(cart.items) : cart.items;
    
    // Reconstruire les CartItems avec les recettes complètes
    const cartItems: CartItem[] = await Promise.all(
      cartItemsJson.map(async (item: any) => {
        // Récupérer la recette complète
        const recipe = await getRecipeById(item.recipe.id);
        if (!recipe) {
          console.warn(`Recipe ${item.recipe.id} not found, skipping cart item`);
          return null;
        }

        return {
          recipe,
          selectedIngredients: item.selectedIngredients || [],
          totalPrice: item.totalPrice || recipe.price,
          quantity: item.quantity || 1,
        } as CartItem;
      })
    );

    // Filtrer les items null (recettes supprimées)
    return cartItems.filter((item): item is CartItem => item !== null);
  } catch (error) {
    console.error('Error fetching cart:', error);
    return [];
  }
};

/**
 * Supprime le panier depuis Supabase
 */
export const deleteCart = async (userEmail?: string): Promise<void> => {
  try {
    if (!userEmail) return;

    // Récupérer l'ID utilisateur si email fourni
    let userId: string | null = null;
    const { data: userData } = await supabase
      .from('users')
      .select('id')
      .eq('email', userEmail)
      .single();
    
    if (userData) {
      userId = userData.id;
    }

    // Supprimer le panier
    const query = userId
      ? supabase.from('carts').delete().eq('user_id', userId)
      : supabase.from('carts').delete().eq('user_email', userEmail);

    const { error } = await query;
    if (error) throw error;
  } catch (error) {
    console.error('Error deleting cart:', error);
    // Ne pas bloquer l'application si la suppression échoue
  }
};

// ============================================
// ADMIN FUNCTIONS
// ============================================

/**
 * Vérifie si un email est un admin
 * Pour l'instant, on utilise une liste d'emails admin
 * TODO: Ajouter une colonne is_admin dans la table users
 */
/**
 * Vérifie si un email correspond à un administrateur
 * Vérifie dans la base de données le rôle de l'utilisateur
 */
export const isAdminEmail = async (email: string): Promise<boolean> => {
  try {
    const user = await getUserByEmail(email);
    return user?.role === 'admin';
  } catch (error) {
    console.error('Error checking admin status:', error);
    return false;
  }
};

/**
 * Vérifie si un utilisateur est admin (version synchrone avec l'objet User)
 */
export const isAdmin = (user: User | null): boolean => {
  return user?.role === 'admin';
};

/**
 * Récupère toutes les commandes (admin)
 */
export const getAllOrders = async (): Promise<Order[]> => {
  try {
    const { data: orders, error } = await supabase
      .from('orders')
      .select(`
        *,
        users:user_id (
          email,
          name,
          phone
        )
      `)
      .order('created_at', { ascending: false });

    if (error) throw error;
    if (!orders) return [];

    // Récupérer les items pour chaque commande
    const ordersWithItems = await Promise.all(
      orders.map(async (order: any) => {
        const { data: orderItems } = await supabase
          .from('order_items')
          .select(`
            *,
            recipes:recipe_id (*)
          `)
          .eq('order_id', order.id);

        // Récupérer les ingrédients sélectionnés pour chaque item
        const itemsWithIngredients = await Promise.all(
          (orderItems || []).map(async (item: any) => {
            const { data: selectedIngredients } = await supabase
              .from('order_item_ingredients')
              .select(`
                *,
                ingredients:ingredient_id (*)
              `)
              .eq('order_item_id', item.id);

            // Reconstruire la recette
            const recipe: Recipe = {
              id: item.recipes.id,
              title: item.recipes.title,
              description: item.recipes.description,
              image: item.recipes.image,
              price: item.recipes.price,
              time: item.recipes.time,
              calories: item.recipes.calories,
              category: item.recipes.category,
              tags: item.recipes.tags || [],
              ingredients: [],
              preparation: [],
            };

            // Reconstruire les ingrédients sélectionnés
            const selectedIngs = (selectedIngredients || []).map((si: any) => ({
              ...si.ingredients,
              selected: true,
              selectedQuantity: Number(si.selected_quantity) || Number(si.quantity) || 0,
            }));

            return {
              recipe,
              selectedIngredients: selectedIngs,
              totalPrice: item.total_price,
              quantity: item.quantity,
            } as CartItem;
          })
        );

        return {
          id: order.id,
          date: order.created_at,
          total: order.total,
          items: itemsWithIngredients,
          status: order.status,
          user: order.users,
          deliveryAddress: order.delivery_address,
        } as Order & { user?: User; deliveryAddress?: string };
      })
    );

    return ordersWithItems as Order[];
  } catch (error) {
    console.error('Error fetching all orders:', error);
    throw error;
  }
};

/**
 * Crée une nouvelle recette (admin)
 */
export const createRecipe = async (recipe: Omit<Recipe, 'id'>): Promise<Recipe> => {
  try {
    // 1. Créer la recette
    const { data: recipeData, error: recipeError } = await supabase
      .from('recipes')
      .insert({
        title: recipe.title,
        description: recipe.description,
        image: recipe.image,
        price: recipe.price,
        time: recipe.time,
        calories: recipe.calories,
        category: recipe.category,
        tags: recipe.tags,
      })
      .select()
      .single();

    if (recipeError) throw recipeError;
    if (!recipeData) throw new Error('Failed to create recipe');

    // 2. Créer les ingrédients
    if (recipe.ingredients.length > 0) {
      const ingredientsData = recipe.ingredients.map((ing) => ({
        recipe_id: recipeData.id,
        name: ing.name,
        unit: ing.unit,
        quantity: ing.quantity,
        price_per_unit: ing.pricePerUnit || null,
        image: ing.image || null,
      }));

      const { error: ingredientsError } = await supabase
        .from('ingredients')
        .insert(ingredientsData);

      if (ingredientsError) throw ingredientsError;
    }

    // 3. Créer les étapes de préparation
    if (recipe.preparation.length > 0) {
      const stepsData = recipe.preparation.map((step) => ({
        recipe_id: recipeData.id,
        step_number: step.stepNumber,
        description: step.description,
        duration: step.duration || null,
      }));

      const { error: stepsError } = await supabase
        .from('preparation_steps')
        .insert(stepsData);

      if (stepsError) throw stepsError;
    }

    // 4. Récupérer la recette complète
    return await getRecipeById(recipeData.id);
  } catch (error) {
    console.error('Error creating recipe:', error);
    throw error;
  }
};

/**
 * Met à jour une recette (admin)
 */
export const updateRecipe = async (recipe: Recipe): Promise<Recipe> => {
  try {
    // 1. Mettre à jour la recette
    const { error: recipeError } = await supabase
      .from('recipes')
      .update({
        title: recipe.title,
        description: recipe.description,
        image: recipe.image,
        price: recipe.price,
        time: recipe.time,
        calories: recipe.calories,
        category: recipe.category,
        tags: recipe.tags,
      })
      .eq('id', recipe.id);

    if (recipeError) throw recipeError;

    // 2. Récupérer les anciens ingrédients
    const { data: oldIngredients } = await supabase
      .from('ingredients')
      .select('id')
      .eq('recipe_id', recipe.id);

    // 3. Récupérer les IDs des ingrédients utilisés dans des commandes (ne peuvent pas être supprimés)
    let usedIngredientIds = new Set<string>();
    if (oldIngredients && oldIngredients.length > 0) {
      const { data: usedIngredients } = await supabase
        .from('order_item_ingredients')
        .select('ingredient_id')
        .in('ingredient_id', oldIngredients.map(ing => ing.id));
      
      if (usedIngredients) {
        usedIngredientIds = new Set(usedIngredients.map(ui => ui.ingredient_id));
      }
    }

    // 4. Supprimer seulement les ingrédients qui ne sont pas utilisés dans des commandes
    const ingredientsToDelete = (oldIngredients || []).filter(ing => !usedIngredientIds.has(ing.id));
    if (ingredientsToDelete.length > 0) {
      const { error: deleteError } = await supabase
        .from('ingredients')
        .delete()
        .in('id', ingredientsToDelete.map(ing => ing.id));
      
      if (deleteError) {
        console.warn('Error deleting unused ingredients:', deleteError);
        // Ne pas bloquer si la suppression échoue, on continue quand même
      }
    }

    // 5. Supprimer les anciennes étapes (elles ne sont pas référencées dans les commandes)
    await supabase.from('preparation_steps').delete().eq('recipe_id', recipe.id);

    // 6. Créer les nouveaux ingrédients (y compris ceux qui remplacent les anciens)
    if (recipe.ingredients.length > 0) {
      const ingredientsData = recipe.ingredients.map((ing) => ({
        recipe_id: recipe.id,
        name: ing.name,
        unit: ing.unit,
        quantity: ing.quantity,
        price_per_unit: ing.pricePerUnit || null,
        image: ing.image || null,
      }));

      const { error: ingredientsError } = await supabase
        .from('ingredients')
        .insert(ingredientsData);

      if (ingredientsError) throw ingredientsError;
    }
      const ingredientsData = recipe.ingredients.map((ing) => ({
        recipe_id: recipe.id,
        name: ing.name,
        unit: ing.unit,
        quantity: ing.quantity,
        price_per_unit: ing.pricePerUnit || null,
        image: ing.image || null,
      }));

      const { error: ingredientsError } = await supabase
        .from('ingredients')
        .insert(ingredientsData);

    // 7. Créer les nouvelles étapes
    if (recipe.preparation.length > 0) {
      const stepsData = recipe.preparation.map((step) => ({
        recipe_id: recipe.id,
        step_number: step.stepNumber,
        description: step.description,
        duration: step.duration || null,
      }));

      const { error: stepsError } = await supabase
        .from('preparation_steps')
        .insert(stepsData);

      if (stepsError) throw stepsError;
    }

    // 5. Récupérer la recette mise à jour
    return await getRecipeById(recipe.id);
  } catch (error) {
    console.error('Error updating recipe:', error);
    throw error;
  }
};

/**
 * Supprime une recette (admin)
 */
export const deleteRecipe = async (recipeId: string): Promise<void> => {
  try {
    // Les ingrédients et étapes seront supprimés automatiquement grâce à ON DELETE CASCADE
    const { error } = await supabase
      .from('recipes')
      .delete()
      .eq('id', recipeId);

    if (error) throw error;
  } catch (error) {
    console.error('Error deleting recipe:', error);
    throw error;
  }
};

/**
 * Récupère tous les utilisateurs (admin)
 */
export const getAllUsers = async (): Promise<User[]> => {
  try {
    const { data, error } = await supabase
      .from('users')
      .select('email, phone, name')
      .order('created_at', { ascending: false });

    if (error) throw error;
    return (data || []).map((u) => ({
      email: u.email,
      phone: u.phone,
      name: u.name,
    }));
  } catch (error) {
    console.error('Error fetching all users:', error);
    throw error;
  }
};

/**
 * Supprime un utilisateur (admin)
 */
export const deleteUser = async (email: string): Promise<void> => {
  try {
    const { error } = await supabase
      .from('users')
      .delete()
      .eq('email', email);

    if (error) throw error;
  } catch (error) {
    console.error('Error deleting user:', error);
    throw error;
  }
};

