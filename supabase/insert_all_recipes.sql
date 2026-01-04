-- ============================================
-- INSERTION DES RECETTES
-- ============================================
-- Ce script a été généré automatiquement
-- Nombre de recettes: 69

-- Récupération des IDs de catégories
DO $$
DECLARE
  cat_traditionnel_id UUID;
  cat_fruits_mer_id UUID;
  cat_dessert_id UUID;
  cat_cocktail_id UUID;
  cat_sauce_id UUID;
  cat_sante_id UUID;
  cat_boisson_id UUID;
  cat_accompagnement_id UUID;
BEGIN
  SELECT id INTO cat_traditionnel_id FROM categories WHERE name = 'Traditionnel';
  SELECT id INTO cat_fruits_mer_id FROM categories WHERE name = 'Fruits de Mer';
  SELECT id INTO cat_dessert_id FROM categories WHERE name = 'Dessert';
  SELECT id INTO cat_cocktail_id FROM categories WHERE name = 'Cocktail';
  SELECT id INTO cat_sauce_id FROM categories WHERE name = 'Sauce';
  SELECT id INTO cat_sante_id FROM categories WHERE name = 'Santé & Bien-être';
  SELECT id INTO cat_boisson_id FROM categories WHERE name = 'Boisson';
  SELECT id INTO cat_accompagnement_id FROM categories WHERE name = 'Accompagnement';

-- RECETTE 1: AGOUTI BRAISE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'AGOUTI BRAISE',
  'Recette traditionnel : AGOUTI BRAISE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'aa25a218-7143-4783-85de-8b66070b874d',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'd’agouti frais',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '290ac464-fdb9-4473-b6a8-6a1bee66355f',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3c93a7af-e417-45d2-9ff0-339d231d4605',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'd’ail',
  'gousses',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0e2b0fa2-1821-43f1-a2a2-d1e33763b250',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'piments secs',
  'pièces',
  10,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '94f11915-7b0d-4d34-836f-0a1844dbab0e',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'd’akpi',
  'grains',
  10,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2958d892-6644-4b98-9490-24ec6b943dc2',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'd’huils',
  'cuillère à soupe',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '076c946b-cacf-4b11-9847-48a63729aeeb',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0f59c312-3fa5-4224-85ca-1d81ca44f55f',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '22abeb3f-9573-4132-bfe8-9911fc3af0cd',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  1,
  'Nettoyez soigneusement l’agouti frais et précuisez-le dans un ½ L d’eau bouillante salée et poivrée pendant 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a42161c7-9521-437d-bce5-51a955eaafb1',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  2,
  'Epluchez les oignons et l’ail',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '61513d41-eeb2-46f7-816d-9c0201cc312f',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  3,
  'Coupez-les en petits morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3e18141d-6a8e-4136-a94f-297276d7d196',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  4,
  'Mixez-les avec l’akpi et le piment sec',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '027ec04b-123f-43df-ae56-eea11f92557c',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  5,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '41ba917c-ad90-45f9-b943-32b38781768c',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  6,
  'Ajoutez l’huile et mélangez le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4ad62dea-fee2-4a5f-adde-e501b39f2361',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  7,
  'Farcissez les morceaux d’agouti avec la marinade et laissez-les reposer pendant 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd06db6c3-3722-4187-a2cf-383e5275bf43',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  8,
  'Disposez les morceaux sur la grille et faites-les griller au feu de charbon de bois pendant 15 min de chaque côté',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '04061e6e-91ed-4fbe-889e-4e3550915bef',
  '9b4aa2d3-3372-437a-915a-239c631b5206',
  9,
  'Servez les morceaux d’agouti cuits avec une sauce pimentée et de la banane vapeur.',
  NULL
);


-- RECETTE 2: SAUCE NANMOUKOU
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'SAUCE NANMOUKOU',
  'Recette sauce : SAUCE NANMOUKOU',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'dee624a3-7d6d-4ea2-a1aa-5658d2a250ad',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'd’agouti fumés',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8b1dbd49-606d-4fb3-9ea9-bd90adc3fcbb',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'champions noirs',
  'poignée',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c1f0c2bc-166b-434c-9e6e-b601914f17b3',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '31387bdc-e618-437b-af0d-27097356b621',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'poudre de feuilles de baobab séchées (nanmoukou)',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a29b2df8-2586-4b57-bc5c-b8aa18a7593e',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '07d22f17-f0c0-4ae0-8047-643a41bc3914',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a6617c52-7490-407b-a934-b964e04f4454',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '247cbf4c-332f-4429-ad09-874e9b48e958',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  1,
  'Lavez soigneusement les morceaux d’agouti dans de l’eau froide',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5a8efc61-9fd2-4cd5-872e-415e9a4b19d6',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  2,
  'Mettez-les dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9d2db241-e32c-4003-80af-adfdb552dc99',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  3,
  'Ajoutez les légumes nettoyés et salez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c3bd99a9-697d-417f-9b07-315aa0c2252a',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  4,
  'Mouillez la préparation avec un (1) L d’eau et portez au feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '171734f9-8983-4ca5-87ce-bbf15a827998',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  5,
  'Ajoutez les champignons préalablement nettoyés et laissez cuire, 25 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '95ed606a-96f2-44f4-891e-db1ea2b1c5d5',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  6,
  'Retirez tous les légumes et mixez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '83548264-9f65-45a5-a550-7c3d4bf40b65',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  7,
  'Rajoutez la purée obtenue',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'aae8eed1-2fc2-4a26-bfb1-3e8743cd9539',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  8,
  'Salez et laissez mijoter, 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eb4ae8e1-e453-4a11-ad68-a3c3b0ca1b99',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  9,
  'Retirez les morceaux d’agouti et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0fde8e42-b82f-4167-87d2-4795d20568a5',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  10,
  'Dans le jus de la sauce, ajoutez la poudre de nanmoukou et mélangez énergiquement à l’aide d’un fouet',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd357e502-d503-4036-88fb-c2d2e66e6440',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  11,
  'Rajoutez la viande',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ecff5d9d-4674-405a-bb11-6de1dc9ec55f',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  12,
  'Rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0de728ba-7017-4a94-a236-0fb72d0d0d17',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  13,
  'Laissez mijoter, 15 min et c’est prêt',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'dec5a2bc-476e-48b2-9791-18c9521fe09c',
  '6527c467-8cea-464c-b768-2bbae7b7235f',
  14,
  'Servez avec du foutou d’igname ou du riz.',
  NULL
);


-- RECETTE 3: ZRIN
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'ZRIN',
  'Recette traditionnel : ZRIN',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2cdc687a-16f5-43c9-88f1-c7a8e03c947e',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'd’agouti fumés',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c381046f-1361-42ad-949a-0e5db14ff747',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'poissons magne fumés',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ff8fcb28-aab2-4110-b581-ddbad0d2e11a',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'piment en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'dff98db6-fd70-4429-98bc-c504aa5a9faa',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'gombos frais',
  'pièces',
  10,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '098a1feb-215c-4113-9ae3-b50bc548ea56',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'gnangnan',
  'poignée',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a88dc005-62ba-4cb6-a7f4-4f6c8e50f033',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'potasse',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9c1197fa-e961-4b7e-b01d-aaf848500b09',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'feuilles de zrin (kwala)',
  'bottes',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd2ab0813-7afb-4c6a-b028-362c261d3822',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'd’huile rouge',
  'tasse',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e6a8d3c5-2c52-48f0-80f6-a0db335509a7',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'poisson faisandé',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6b5c6a30-6c11-4749-94a8-7dd9af704dc9',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8078d5cf-5ab5-4e42-a7b5-0e8f550e74af',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  1,
  'Lavez les morceaux de gibier et mettez-les dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3196ab69-154b-4d54-88b9-8acfb580c283',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  2,
  'Ajoutez 2 L d’eau, l’huile rouge, le sel, le piment en poudre, les feuilles de zrin préalablement équeutées et lavées avec le gombo frais, le gnangnan et l’adjovan',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '85af7286-5a3c-402d-b18e-c3d103833340',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  3,
  'Ajoutez la potasse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f99a4b99-d88c-4081-a840-5f10d0645122',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  4,
  'Portez à ébullition pendant 40 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'adcb263f-b7f8-4776-9d28-863f9dc1e6b9',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  5,
  'Au terme de ce temps, sortez les feuilles, les gombos frais et le gnangnan',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '81f36767-3211-4a84-9ffa-44ffbfbf3222',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  6,
  'Ecrasez-les dans un talié puis remettez la pâte obtenue dans la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a3990af8-1d0e-4b0d-a83a-bbd8f4af2e6e',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  7,
  'Portez le tout à ébullition pendant 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7f1bea8d-4b5b-411b-8330-e14103e9a5c2',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  8,
  'Rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ea8e8c67-5080-4520-b8d7-987e44da1f9a',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  9,
  'Laissez mijoter, 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c8d45863-c8d1-4f59-bbdb-35a5ea15230b',
  '2210de61-8449-4010-9224-9a08f3c9299b',
  10,
  'Servez avec du foutou de banane ou du riz.',
  NULL
);


-- RECETTE 4: CHIPS DE PATATES DOUCES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  'CHIPS DE PATATES DOUCES',
  'Recette traditionnel : CHIPS DE PATATES DOUCES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '24b6ab45-851b-4108-bec0-2a81de1f1e78',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  'patates douces',
  'g',
  400,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9082be5d-8d71-4f9a-a891-f36bc7c01bdd',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  '½ L d’huile Dinor pour la friture',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '618422d4-b4b0-419b-878f-7ed45e691de4',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '13b0d759-a41b-4245-bbdd-b9311bcffe3f',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  1,
  'Epluchez et coupez les patates en rondelles très fines',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9d053261-0dec-4983-89ff-cfe5b4173b44',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  2,
  'Rincez et séchez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bc484ebb-96d1-4199-9a03-66415cb93f5d',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  3,
  'Chauffez l’huile de friture et faites-y frire les rondelles de patates douces',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd354d2df-cd5e-4d94-a945-44386e0da9bc',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  4,
  'Retirez-les de l’huile lorsqu’elles remontent à la surface',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '26f350a2-bd9f-48ff-84f1-daf9bc0c4943',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  5,
  'Egouttez-les sur du papier absorbant',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '82135341-5348-4a1c-a92a-4d9f09fe3231',
  'e9aad7bd-ecc6-4b73-99c9-f366d2a52e2b',
  6,
  'Salez et servez aussitôt.',
  NULL
);


-- RECETTE 5: AGOUTI PIQUE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '4711484d-f761-4097-8aa2-57951181b29d',
  'AGOUTI PIQUE',
  'Recette traditionnel : AGOUTI PIQUE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '11221267-4a6b-4b3a-9c2a-8bf54a1200a8',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'agouti entier',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '89e42ca6-4768-4396-b4d0-063cb202a3b4',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'piments secs',
  'pièces',
  10,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '839898d0-e74c-404c-aea4-0e17cf2ed9a1',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'oignons hachés',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6d81bdac-4177-4422-a8b9-054400ed688d',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'gingembre haché',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7bac4604-42a7-4ad4-ab0a-1f0d52ece502',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'd’huile',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '52fa4b95-2b11-4306-9d22-2e3bb5c92c1c',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'Des piques à brochettes en bambou',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '308c6848-4f30-43f1-8293-fec432d671c8',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '364b715c-fd78-4a5a-937e-67fdc8e59939',
  '4711484d-f761-4097-8aa2-57951181b29d',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '71939f2f-6dcf-45c4-ad77-9c698519a8ed',
  '4711484d-f761-4097-8aa2-57951181b29d',
  1,
  'Lavez l’agouti soigneusement et faites-le sécher',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1ff303b2-26d3-449f-82d0-295a88157296',
  '4711484d-f761-4097-8aa2-57951181b29d',
  2,
  'Coupez-le en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '37ba2d8a-744e-4910-8346-5dd9b8adbaf9',
  '4711484d-f761-4097-8aa2-57951181b29d',
  3,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '18dfbfcc-306f-487f-a111-856980375fef',
  '4711484d-f761-4097-8aa2-57951181b29d',
  4,
  'Ecrasez le piment sec et mélangez-le aux oignons hachés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9edd9479-57d3-4344-9655-e31a60099e03',
  '4711484d-f761-4097-8aa2-57951181b29d',
  5,
  'Ajoutez le gingembre et l’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '986fed6c-0e87-4a7a-9dc8-946667e47454',
  '4711484d-f761-4097-8aa2-57951181b29d',
  6,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7886448b-fd7e-4f24-a486-a679ea3e9704',
  '4711484d-f761-4097-8aa2-57951181b29d',
  7,
  'Mélangez le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9fe4f30f-add8-4b37-b29d-b15fa6c85cd9',
  '4711484d-f761-4097-8aa2-57951181b29d',
  8,
  'Farcissez les morceaux avec la marinade et embrochez-les avec des piques en bambou séché',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e28a74bc-9677-4c42-bb78-25d394b9a9cc',
  '4711484d-f761-4097-8aa2-57951181b29d',
  9,
  'Faites cuire l’agouti au feu de bois à la flamme pendant 2 h à 3 h',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c21ae60e-ca50-4f3c-8727-eb6d7b069a78',
  '4711484d-f761-4097-8aa2-57951181b29d',
  10,
  'Servez l’agouti avec une sauce pimentée et de l’attiéké ou de l’igname vapeur.',
  NULL
);


-- RECETTE 6: KEDJENOU D’AGOUTI
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'KEDJENOU D’AGOUTI',
  'Recette traditionnel : KEDJENOU D’AGOUTI',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '36ff5b11-f484-4783-a694-1a903db7a420',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'd’agouti frais',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'af677227-3a24-44e7-a0ac-0a49eaaf6419',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '44dec3bc-3473-47c2-8e8c-db999f448062',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'tomates fraîches',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2ff7bc6e-990a-4180-b748-d9ab280cc7e0',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e1835e3a-2345-48de-b3a3-df0f5b71326b',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'piments frais',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '42a6066c-f3b7-4351-a9f3-ff2d9b5c3146',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  '½ L de vin de palme',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6c4a72ef-eab3-4880-ac98-98c6915d80f7',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '73f1abd1-236c-4fce-9c4f-df5d39d502e9',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  1,
  'Lavez tous les légumes et écrasez-les dans un talié',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0dd1b1fe-6746-418b-a10f-0f6bf5e94443',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  2,
  'Nettoyez soigneusement les morceaux d’agouti',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3145eb9e-74bb-407e-9608-f6088fb6ceca',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  3,
  'Disposez la viande dans une casserole et ajoutez la purée de légumes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6de1c57c-c9a8-49b0-8372-3478f7aa3228',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  4,
  'Salez généreusement et ajoutez le vin de palme',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1e619778-a43e-4e9b-b97a-dc0a0a6a15ad',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  5,
  'Couvrez et laissez cuire, à petit feu, pendant 40 min, en remuant chaque 15 min, sans ouvrir la casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '973fce79-9520-4481-b05d-9ee7c38a989a',
  'ca27e03b-926a-4437-ad1a-173009fc15fd',
  6,
  'Une fois cuit, servez votre kedjenou avec de l’attiéké ou du riz.',
  NULL
);


-- RECETTE 7: MANKOU FLOLO (sauce piments doux) la biche
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'MANKOU FLOLO (sauce piments doux) la biche',
  'Recette sauce : MANKOU FLOLO (sauce piments doux) la biche',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ba66aab7-2447-476d-ba2d-cfa8640db8d3',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'biche fumée',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a6e5a661-4d07-4a39-a45f-90250ee1784f',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'poisson faisandé (adjovan)',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '47688bed-210f-4874-ae67-0aa3a46f8823',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'piments doux',
  'poignées',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'df4af3d2-d292-463e-b5f2-4c4a56e2bae3',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'oignons africains',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '53210cb9-9ab8-4e8b-8e2a-7095fc028071',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'tomates paysannes',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c03c31dd-e986-4d8f-9f3e-d336cc4febb9',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '78de85b6-c30a-4eec-8518-466f3af97711',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a0142095-5a76-43ca-afb8-fce270b239a9',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  1,
  'Nettoyez et lavez les piments doux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd1dac1e5-274d-4bad-80ec-2b740370e579',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  2,
  'Lavez les oignons épluchés et faites de même avec la tomate et le piment frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '07660060-6e92-4f54-800b-7d8f92326510',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  3,
  'Lavez soigneusement les morceaux de gibier et l’adjovan (poisson faisandé)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd6e8b923-41a1-4c09-884d-92d477b72dec',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  4,
  'Mettez tout dans une casserole, ajoutez 1 L d’eau puis portez à ébullition pendant 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '490dbc48-c736-431f-bc46-44c66ae6cec5',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  5,
  'Retirez les légumes puis écrasez-les dans un trépied ou un talié',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '849cfc94-1bdc-4c56-a686-89d83d70188e',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  6,
  'Rajoutez la pâte à la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7b4bb773-ef39-4cd3-a5e2-5d2a24f85f3e',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  7,
  'Laissez cuire pendant 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ef2e91b2-20d1-4360-a1df-ef415cec32b5',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  8,
  'Rectifiez l’assaisonnement et laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2a9e6d2b-f758-4a62-a48e-8e10012233d1',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  9,
  'Servez avec le foutou d’igname',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '765d8e4a-92bd-49c9-babe-5a473243f52e',
  '546b69a9-889e-4bd3-941f-16de2cc17c26',
  10,
  'Suggestion : vous pouvez faire cuire les piments doux séparément et les ajouter au jus de cuisson de la sauce après les avoir réduits en purée.',
  NULL
);


-- RECETTE 8: GOUAGOUASSOU (mélange gnangnan et gombos frais)
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'GOUAGOUASSOU (mélange gnangnan et gombos frais)',
  'Recette sauce : GOUAGOUASSOU (mélange gnangnan et gombos frais)',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '415eafcc-adeb-45a4-b598-2087dd2839ef',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'biche fumée',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'afe23d4d-9b14-4a12-9207-48ec8b7ec3d2',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'gombos frais',
  'pièces',
  20,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd1b9e01f-61d6-446d-bde2-397bb90c9b95',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'gnangnan (petites aubergines amères)',
  'poignées',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '14e4b46e-e0f5-45a4-a2b4-6db64b0e006b',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'tomates paysannes',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3cca797d-291d-4a80-befc-8a43b55461b2',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'oignons africains',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f9af63ef-4fb3-4b8a-9384-ea798cab4fb9',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'poisson faisandé (adjovan)',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ce167e25-d2db-4ee1-be8e-263eb99ac9c6',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'poudre de poisson',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3e7edb8e-09ca-4938-be83-5d5766feda7e',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bfeb3801-c0e5-4e4f-9422-8f89c3c91d7b',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0b45125f-7c28-4777-b69c-9cae24e7b133',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  1,
  'Détachez les petites aubergines des grappes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5378ceac-100c-4ba2-89d6-cbb941436e5f',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  2,
  'Coupez les extrémités des gombos',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '25aec692-f4e3-4142-8800-29f58e05317f',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  3,
  'Nettoyez et coupez les oignons en gros dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5d6ced8b-ce2c-4f71-ada1-9302fa0032e3',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  4,
  'Lavez les tomates',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3b8cc189-e066-4d36-a7d3-b607b11e8587',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  5,
  'A l’aide des doigts, malaxez les tomates pour obtenir une purée grossière',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '544b9b87-d2f1-41ff-adc2-6a7d0a70307e',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  6,
  'Dans la casserole, mettez la viande, les oignons coupés en gros dés, la purée de tomates délayée dans une petite quantité d’eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fcff1e5c-6a8b-4fed-9ee3-6e056aad5763',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  7,
  'Salez et laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3a15ab7c-6acf-4fdc-a97f-6f494d4a589f',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  8,
  'Versez 1 L d’eau dans la préparation et ajoutez les gombos frais, le gnangnan et le morceau de poisson faisandé',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9e38123e-4809-41cd-bc53-3524b9cddd0e',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  9,
  'Laissez cuire, 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '57803761-ea64-4e78-9662-09d978d32479',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  10,
  'Retirez les légumes de la préparation et écrasez-les séparément',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7c2d93db-f6bb-48ed-9b54-91522ee06d0a',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  11,
  'Rajoutez les légumes écrasés à la sauce et rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '974d5293-c18d-4873-aa08-36b7631cf16a',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  12,
  'Laissez mijoter, 25 min, puis servez avec du foutou de banane',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3136d7b1-5000-4432-b355-69fc9a56b65e',
  '9ca6de3d-94cc-4ee3-9db3-230c32c40c57',
  13,
  'Suggestion : vous pouvez faire cuire séparément les petites aubergines et le gnangnan et les écraser également séparément avant de les ajouter à la sauce.',
  NULL
);


-- RECETTE 9: RIZ DINOR A LA SAUCE CURRY AU POULET
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'RIZ DINOR A LA SAUCE CURRY AU POULET',
  'Recette sauce : RIZ DINOR A LA SAUCE CURRY AU POULET',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '149d43be-52da-45ca-9773-f1ed9fc00507',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'riez dinor',
  'g',
  400,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c32b135f-033a-420c-b20a-0fa7ab1ef295',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'filets de poulet',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '62217e84-e09b-4499-80e6-08a2509a4409',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a84343d2-0a7c-41f9-b4d8-b48ab8884ec5',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  '½ tasse de bouillon de volaille',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bf7804eb-d068-42f4-b1a8-ded801e01daa',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'crème liquide épaisse',
  'brique',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3b7df9e6-c3f5-4d45-bf9b-bd9df494bffd',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'à 3 cuillère à soupe de curry',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e4665455-4b26-4109-a9de-b1110ba494cc',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'd’huile',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b1589554-4199-4e2b-aa63-5ea4db069392',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  '½ bouquet de persil',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '38cde4d4-392b-4519-bc69-c3ef7ff6c224',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5f112971-cb6d-43c6-a544-3e2be4d96399',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  'poivre du moulin',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3880f993-d3da-4d35-97d0-6a7dd2bcca6b',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  1,
  'Faites cuire le riz comme vous avez l’habitude de le faire',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fc25079c-7485-48d5-98bd-b3e9b6b7110a',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  2,
  'Une fois cuit, égouttez-le et gardez-le au chaud',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b9ea7e6b-1c8d-46f6-b9ec-f905d40a4f92',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  3,
  'Epluchez l’oignon et émincez-le',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '686cf03d-d570-44b5-abbf-cdc039d7cc94',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  4,
  'Coupez les filets de poulet en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '29a3aebd-ab00-4586-b867-cba6e44e621a',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  5,
  'Dans une poêle, faites chauffer l’huile et jetez-y les oignons émincés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f0989c8b-d868-4af2-994d-763ea71f7b32',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  6,
  'Lorsqu’ils sont bien dorés, ajoutez les morceaux de poulet',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cde86d75-6c30-455d-a473-af4ab9a53268',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  7,
  'Faites revenir le tout quelques minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'db066b09-ab4a-4221-a502-f5ebeb7ecab3',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  8,
  'Ajoutez ensuite le bouillon de volaille et laissez mijoter une minute',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bccc9f4f-455e-4c07-a523-794c50ba483e',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  9,
  'Versez enfin la crème liquide, le curry et le persil ciselé',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e60bb53a-4e92-429a-be7a-d25c0074ce82',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  10,
  'Salez et poivrez à votre convenance',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'da380a58-f3cd-472e-bbb8-e6d521a53bfc',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  11,
  'Mélangez bien et laissez mijoter, 2 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '90ebc339-1372-4902-b37c-70d5c24d625a',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  12,
  'Dressez les assiettes en déposant une belle timbale de riz Dinor au centre et en ajoutant le poulet au curry par-dessus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '546a16fe-4577-430e-a154-0b18e2655632',
  '25b47f73-d76b-4880-8461-959d9f0b91b7',
  13,
  'Servez immédiatement.',
  NULL
);


-- RECETTE 10: GNANGNAN A L’HERISSON
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'GNANGNAN A L’HERISSON',
  'Recette traditionnel : GNANGNAN A L’HERISSON',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4f7df57c-d10d-44b9-a9c1-93aebf07f90d',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'hérisson fumé',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a54d3663-4ce6-464e-920f-f921de9bd00b',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'petites aubergines amères',
  'poignées',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7a916b99-9070-454d-b937-5b597ae1d0d1',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'petits oignons africains',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8da47f44-6db7-41f6-9e5a-3987af60014b',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd1348b1f-f6c1-4ed7-afe2-b801fcf0b2cc',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'tomates paysannes',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '103caf30-ac30-4f21-b99d-80b10ea7c150',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '23c74fea-3b57-4b91-b3fb-39320c201cf3',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  1,
  'Equeutez le gnangnan et lavez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1c54b0ee-3f38-406a-a010-37b9b53e2517',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  2,
  'Faites cuire le gnangnan dans de l’eau à couvert pendant 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e3d76095-a9c1-4911-9ce7-4d23881f2073',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  3,
  'Lavez les tomates et les piments frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5330da94-27de-4d22-aa1b-32c216bf3f2a',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  4,
  'Epluchez les oignons, lavez-les puis coupez-les en deux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '918760b6-d64c-4ef9-804b-18233b664157',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  5,
  'Pendant ce temps, dans une autre casserole sur le feu, ajoutez les morceaux de hérisson fumé, les piments frais, les tomates et les oignons',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b477f00f-5a01-43aa-ac79-015423ebbd0b',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  6,
  'Ajoutez un ½ L d’eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cba9d4e4-0cf1-4837-8054-1c50c438dd2c',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  7,
  'Portez le tout à ébullition pendant 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3649af14-a12b-4cff-b1ce-51d39f0cf8da',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  8,
  'Retirez les légumes de la sauce puis réduisez-les en purée (pas trop fine) et ajoutez le tout à la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '197087a7-f16d-4dc3-9dcb-f1f06a085030',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  9,
  'Ecrasez le gnangnan dans un trépied ou un talié puis ajoutez-le à la sauce et assaisonnez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3c05cb08-30b2-4fb5-ad4e-ee87c54834d6',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  10,
  'Laissez la sauce cuire, rectifiez l’assaisonnement et servez avec un foutou d’igname',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2d6a7655-4726-48ad-91bb-4ea2fb66a1dd',
  'fd534422-b82f-499d-bd85-3963f73ffdd8',
  11,
  'NB : Une des recettes incontournables pour la fête de Pâques.',
  NULL
);


-- RECETTE 11: PEPE SOUPE A L’HERISSON
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'PEPE SOUPE A L’HERISSON',
  'Recette traditionnel : PEPE SOUPE A L’HERISSON',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1fd6f7dd-3220-4735-8de2-8ffe86b16df7',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'hérisson frais',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e0622d15-c315-4289-a6f1-a624db4b74b5',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8a307f55-2271-4396-a827-a88d88405ba1',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'd’ail',
  'gousses',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5db42013-fc84-4518-ba0b-233f4ef6f757',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'tomates fraîches',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd49a21d8-54e4-47ea-896d-4716e2b43868',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'd’akpi',
  'grains',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'aeed311e-b9b3-4a48-9aea-3be8546538bb',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'gingembre',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c49cd538-9cb1-44ea-b6de-fca3fa07774a',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'fc1af721-9532-41d5-82a6-5bcad935cbfb',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd7253ab6-400e-4472-af6e-dd8f27c9088e',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8d9767db-8d0f-4146-a0f5-f112cd8d57d4',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  1,
  'Lavez les morceaux de hérisson',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'dcb79419-e19a-4050-a1d1-9652da809e4b',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  2,
  'Disposez-les dans une casserole, salez, poivrez et laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2653079b-66c4-43de-8d05-3552dfb18c44',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  3,
  'Epluchez les oignons et l’ail',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '041e9462-b01e-41bf-b62f-19839847d4b4',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  4,
  'Ajoutez-les ç la préparation ainsi que les tomates fraîches et les piments frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '359cd9bb-5cec-4cdf-ae13-dcf59a591026',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  5,
  'Mouillez la préparation avec 1 L d’eau et portez à ébullition pendant 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f79d478a-9014-40f5-a641-427988edce55',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  6,
  'Retirez les légumes de la sauce et écrasez-les sur un caillou africain jusqu’à l’obtention d’une purée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9edd1684-15b2-424a-b0b3-972893e68fcb',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  7,
  'Rajoutez la purée à la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '330f2670-9052-489c-9f73-ba2f437e9866',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  8,
  'Salez et ajoutez le gingembre haché et l’akpi écrasé',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e7e56f62-eec8-4af7-a476-2be1a5a39e36',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  9,
  'Poursuivez la cuisson de 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bdbb0802-c46d-40c7-afa7-07b988070b62',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  10,
  'Rectifiez l’assaisonnement et laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4569238d-e353-4268-ac6d-4d333443c619',
  'df20b8a8-3558-4c42-bc62-e3425d9aa01f',
  11,
  'Servez le pèpè soupe avec de l’attiéké.',
  NULL
);


-- RECETTE 12: DJOUMBGLE SAUCE GRAINE AU PANGOLIN
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'DJOUMBGLE SAUCE GRAINE AU PANGOLIN',
  'Recette sauce : DJOUMBGLE SAUCE GRAINE AU PANGOLIN',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '51c82939-3d08-460c-ab00-815eb6bc395e',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'pangolin frais en morceaux',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b5fe6707-cb10-42e3-8973-e881191cf4f7',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'graines de palme',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c87b14bb-314d-492d-8686-3195f35c48d4',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'oignons africains',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3568143e-976d-41fc-9826-77dac8b163a3',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'tomates paysannes',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9481eb76-5183-490f-a9c7-8969afa311ed',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '33eb7106-ade2-4448-9c20-20395e6375cc',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'poudre de djoumgblé',
  'cuillère à soupe',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a7bd678b-e817-4574-ac0f-0b26c2e3201f',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4dc31497-f539-4f0c-b13d-900deed4091f',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  1,
  'Lavez les graines de palme',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '13f69acc-148f-4542-bf32-288eac59986c',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  2,
  'Faites-les cuire dans un 1 L d’eau pendant 1 h',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b2f8fbbd-2f95-424b-9fd1-7040b77c051d',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  3,
  'Pilez la graine dans un mortier et malaxez la pulpe dans un 1 L d’eau pour en retirer le jus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ae82762c-e3ed-4854-b4d9-7022107f7f37',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  4,
  'Passez le jus au tamis',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fbfe13ab-32e6-4dd5-a244-db174c7a5cee',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  5,
  'Lavez soigneusement le pangolin',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2f0ca130-f752-47ac-9bb2-8e611f658380',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  6,
  'Lavez les légumes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '49f466dc-c6e0-4ad1-b72d-e8dbe60d62fe',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  7,
  'Mettez le gibier dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f31b38aa-2c22-4b65-b77e-bff7750f4d4e',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  8,
  'Salez et laissez frémir, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '41ba7b9d-c208-4a4f-b365-0e38a4650e6c',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  9,
  'Versez le jus de graine sur les ingrédients et portez la préparation à ébullition, à petit feu, pendant 1 h 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '32cfae01-6c28-46e4-ac9b-62078e3c60a8',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  10,
  'Retirez les légumes puis écrasez-les dans un talié',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '00de1fcf-9339-42ac-bbd2-bf5189f392be',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  11,
  'Rajoutez la pâte de légumes et laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b1c73fde-9ae4-4544-89c5-f3484b7d521f',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  12,
  'Ajoutez la poudre de gombo sec tout en tournant afin d’éviter les grumeaux et poursuivez la cuisson de 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '47642609-0988-4d86-abd5-dbe38e1edfc5',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  13,
  'Rectifiez l’assaisonnement et servez avec un foutou de banane ou d’igname',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8a12af1e-34d4-4a11-aebf-081f51e637a6',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  14,
  'Petite astuce de grand-mère : vers la fin de la cuisson, pilez 2 à 3 piments frais que vous ajoutez à la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'edfb48fd-626a-4a1d-a5eb-738eed07759e',
  '77bf051c-702f-426c-89e4-1f9930b9d357',
  15,
  'Cela parfume agréablement la sauce.',
  NULL
);


-- RECETTE 13: RAT BRAISE A LA VILLAGEOISE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'RAT BRAISE A LA VILLAGEOISE',
  'Recette traditionnel : RAT BRAISE A LA VILLAGEOISE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3274611e-eb61-43a7-bd5b-4b48782072aa',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'rat fumés',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5ce8fc37-d733-4696-80b6-3eae0c023e12',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'cedf73b4-e5fe-461f-b5c5-8df83372d4db',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3b465aa6-418c-4609-9c85-96adec1537f8',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '31ba3121-f76a-44d4-8016-11489e81a08a',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'piments secs',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'df6eb127-bc80-460e-8f1b-6f2583dd5f8e',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'd’huile',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a4088630-189a-4efa-9fa1-8a63028211c1',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '60eb18e5-90e0-47ad-a3a4-208605892f98',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4440d47c-af3e-4739-9857-88e93500293f',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  1,
  'Lavez soigneusement les morceaux de rat',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7679e037-2b89-4791-b63c-10bcb3fa5255',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  2,
  'Ecrasez sur un caillou africain l’oignon, les tomates fraîches et le piments sec',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3a12a416-516a-415b-b1f3-03d61fe64243',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  3,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2b7e50b7-4fe7-4055-a6b6-d8caa3a9d1b9',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  4,
  'Ajoutez l’huile et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a2b4b8e7-df63-4620-8240-7ed9f806041b',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  5,
  'Farcissez les morceaux de rat avec la marinade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7c7b54db-f438-46f6-aa63-66f1818c160b',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  6,
  'Disposez-les sur la grille et faites-les cuire au feu de charbon de bois, pendant 15 min, de chaque côté',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a2cb0f07-fc46-4300-a726-4ff1b3efb745',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  7,
  'Retournez-les, de temps en temps, afin d’avoir une cuisson uniforme',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '880d5145-f9bc-4e6e-8109-6cc12537dccf',
  'e67dd881-5d33-4f02-891e-47dce5e0a994',
  8,
  'Servez votre rat palmiste avec de l’attiéké et une sauce tomate pimentée.',
  NULL
);


-- RECETTE 14: TARTELETTES AU SURIMI ET MAYONNAISE DINOR
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'TARTELETTES AU SURIMI ET MAYONNAISE DINOR',
  'Recette dessert : TARTELETTES AU SURIMI ET MAYONNAISE DINOR',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Dessert',
  cat_dessert_id,
  ARRAY['Dessert']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ce06504d-9beb-405f-8b9a-428d0828825b',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'fonds de tartelette cuits',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '01d64d1e-c6ee-4882-8a3d-df6ca7598cd8',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'maïs en boite',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8ae23003-538b-4f97-ae19-68a39b05f977',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'bâtonnets de surimi',
  'pièces',
  16,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bd8a7a28-dd45-48ae-9f55-6ed06447ab15',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'mayonnaise Dinor',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd86e5a2b-8cb5-4265-93c3-4d1c914602ac',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f697a551-8b3e-498c-9096-2771f8297d2c',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '22e5135e-507b-4080-825c-0b1b17c86115',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  1,
  'Egouttez le maïs',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c1c5eb86-e7b1-4607-9cc6-89acf9305d94',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  2,
  'Coupez les bâtonnets de surimi en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '028c4fc5-1db2-4c0a-b57e-4f4924fa0fce',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  3,
  'Versez le maïs et le surimi dans un saladier',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9e4cbd1b-4ede-48b8-b888-cd7599758b79',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  4,
  'Ajoutez la mayonnaise, le sel, le poivre et mélangez bien',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '46f15c78-d7c4-4631-b96c-b210c560da2a',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  5,
  'Réservez au frais jusqu’au service',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5ae160d3-71e8-4813-be44-31cb7b61bd2d',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  6,
  'Au moment de servir, garnissez les tartelettes avec la préparation',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f21c04e5-8eb9-44d9-bdea-6fc817da31f6',
  '18b8e20d-a78d-41e0-b086-214a27e2f347',
  7,
  'Dégustez sans attendre.',
  NULL
);


-- RECETTE 15: ETOUFFE DE RAT PALMISTE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'ETOUFFE DE RAT PALMISTE',
  'Recette traditionnel : ETOUFFE DE RAT PALMISTE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'eaefeb0e-132b-41c3-80d2-e87be563e592',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'rat',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'fadbc7b3-78ba-4987-9aad-a453e97808ed',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '52ee4786-591f-4dcd-a6a3-d16267dd1bc5',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '080bac63-1d4d-4f61-8e6c-8bcebcaa5e7f',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'abb86863-c07d-4cbf-85aa-8742577b47b6',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'grosses aubergines',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '16757d6e-2ca8-4b50-ab67-5b4556f78bac',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'gingembre haché',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e8350d6a-4ee7-4a79-8310-1745c60e06be',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'Des feuilles d’attiéké',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e6d8a0bf-3d50-47f6-a181-994d839f6c50',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'afbe20ff-ab9b-43ab-a738-89a727f162c1',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1eea4e48-0093-4726-b5aa-7399a35c2344',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  1,
  'Lavez les morceaux de rat et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bbb62e13-b403-4277-8221-25555e6064fa',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  2,
  'Epluchez l’oignon et lavez-le',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '915990f7-2bc4-43c4-a70e-1219085941a8',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  3,
  'Faites de même avec les autres légumes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '697da51f-d345-447a-825e-cb211519b1e5',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  4,
  'Ecrasez-les dans un talié (oignon, piment frai et tomates)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '13b22e32-b58e-409a-a96d-3ce7c1618b4c',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  5,
  'Coupez les aubergines en petis dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '57142938-38f6-49bd-997a-7f581725d91d',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  6,
  'Ajoutez la pâte de légumes à la viande ainsi que les morceaux d’aubergine',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ced352cc-60b9-446c-9d54-50817b95a0ca',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  7,
  'Salez et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c724b1f9-1752-4533-b9d6-47ad18dc08d6',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  8,
  'Disposez le tout sur des feuilles d’attiéké et mouillez la viande avec un ½ verre d’eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2ca97f48-2710-4824-8551-625b5a0cb2c2',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  9,
  'Refermez correctement le paquet avec une ficelle afin de faciliter la cuisson',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '40a76a05-7318-4946-a40e-8f4979a25ada',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  10,
  'Disposez la papillote sur une grille et laissez cuire au feu de charbon de bois pendant 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '03ef2d8c-7bf9-4791-9b16-5f7a89c1f12c',
  '0f31a5b5-e170-4ef4-92b1-76488b98f5e6',
  11,
  'Servez avec de l’igname ou de la banane vapeur.',
  NULL
);


-- RECETTE 16: AKPI TRO (sauce akpi) Porc-epic
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'AKPI TRO (sauce akpi) Porc-epic',
  'Recette sauce : AKPI TRO (sauce akpi) Porc-epic',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0283a7cc-cb76-409d-bd0c-cddd408152ba',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'porc épic fumé',
  'morceaux',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'fa7bad31-3f14-4041-9406-69378e51e431',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'grosses poignés de grains d’akpi',
  'grains',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9b6b8109-c309-4ae3-a49d-c2afa0efda21',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'oignons africains',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ad04ac8b-b155-4be8-8cca-6fc5057d906a',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'tomates paysannes',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '309f26b9-d387-445a-af54-4e90f3149385',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3c6aad78-add0-4a0b-abd0-732e69b787b2',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'poudre de poisson',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8d1333f0-e60b-4e2c-90a6-eded5d13bc2c',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8c65c336-70c6-46a3-862a-102dbe26c8f5',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  1,
  'Lavez les morceaux de porc-épic',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '23fe01be-6971-476c-b578-a437729d0a95',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  2,
  'Mettez les morceaux de gibier dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6b204220-73e6-45ea-a5ee-7d4c6e3d5256',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  3,
  'Versez un ½ L d’eau, salez et portez à ébullition pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0cdf0aeb-c324-4937-a0f2-8f0f2e6d64e7',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  4,
  'Poursuivez la cuisson en complétant l’eau (1/2 L)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0d4f0971-9c10-4320-84d0-346d7ad4826f',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  5,
  'Ajoutez les tomates, les oignons (3) et les piments frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5b92d693-7ba7-4729-aa1c-df76bc8cfc9d',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  6,
  'Laissez cuire, 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2dc3d65a-0fda-4d4e-98fa-b08eb5eef51d',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  7,
  'Retirez les légumes et écrasez-les dans un talié',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '03eb7482-0afc-4ee7-8614-b22c824ab404',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  8,
  'Rajoutez la purée obtenue au jus de cuisson de la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0d08fcdb-f3ed-42ae-ae10-1df2973a6fdd',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  9,
  'Ajoutez la poudre de poisson et continuez la cuisson de 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eb3a92f7-ea1f-437b-b665-cb42fae316ee',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  10,
  'Ecrasez, sur un caillou africain, les grains d’akpi jusqu’à l’obtention d’une pâte lisse et sans grumeaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '242ab0ed-dc2a-4d70-a2d2-b1afc9e96533',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  11,
  'Recueillez une partie du jus de cuisson de la sauce et mélangez-y la pâte d’akpi',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '96431702-944d-40af-a2b5-56f682b0db30',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  12,
  'Versez ce mélange dans le jus de cuisson de la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f4c2a3b9-1dcd-4239-9f49-8d8eccc3d17a',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  13,
  'Poursuivez la cuisson de 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'af1c508d-2889-4cd1-aade-b1f69731617d',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  14,
  'Rectifiez l’assaisonnement et ajoutez le dernier oignon coupé en petits dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ab39bec7-b0f5-43cc-b865-69d28fa50e4b',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  15,
  'Laissez mijoter, 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '26df806f-fe08-4886-ab5b-18de60e8b2d8',
  '6de3565c-8fba-4bcb-948e-49f6ffa856a9',
  16,
  'Servez avec le foutou de banane.',
  NULL
);


-- RECETTE 17: TRA TRA pour 4 personnes
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  'TRA TRA pour 4 personnes',
  'Recette traditionnel : TRA TRA pour 4 personnes',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '24a6853a-66d1-4a95-b19b-5df731371a2c',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  'farine',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9688233b-f30c-4537-bbe9-a5596dfa2f5e',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  'levure boulangère instantanée',
  'sachet',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '550bccee-5b35-49cb-8ae8-710eedcb1efc',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  '½ L d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4bbfa7b6-f175-4388-870f-b4ddeab38681',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  'd’eau chaude',
  'cl',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7b394ab4-c303-4854-86bf-586ec14d66e9',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  'Une pincée de sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ccc40951-5ca3-436c-aeee-c96d90a69c95',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  1,
  'Mélangez à la farine, le sucre, la pincée de sel et la levure',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '791b6e04-a18c-4de8-8999-d1a762301c01',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  2,
  'Ajoutez l’eau, mélangez à la spatule et laissez reposer la pâte hermétiquement fermée pendant 5 heures',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '10d68578-43d3-4940-8de0-b1aba8a47abc',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  3,
  'Prélevez la pâte à la main et faites-là frire dans une poêle à fond plat',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '96b4fddf-00f5-4525-ac7f-8f9eda439bfe',
  '01804f85-0d72-45c8-a49d-4e3b6beda5ae',
  4,
  'Laissez bien dorer 4 min sur chaque côté, retirez de l’huile, égouttez et servez.',
  NULL
);


-- RECETTE 18: L’ASSIETTE DU CHEF
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'L’ASSIETTE DU CHEF',
  'Recette traditionnel : L’ASSIETTE DU CHEF',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'cb822fd7-b76c-4448-b396-552f4c488c47',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'suprême de volaille',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '508f6049-7f89-4e26-9426-9d886e6b37a6',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'd’akpi',
  'g',
  50,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b6e38a52-cff9-42b0-9633-204f8cdbac0a',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'd’huile',
  'cuillère à soupe',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '634f494e-9e92-452e-b71b-634b8a6964db',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'd’ail',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd4e00f5e-9064-4a3a-a10d-7bd132f09d7c',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'gingembre',
  'g',
  20,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '11347a0f-fe74-4ba9-ab7b-46811d2a56cb',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'kankankan',
  'cuillère à soupe',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b41dab02-61f0-48e3-84ca-9d6e3ff1c83d',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'céléri',
  'botte',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a6949468-e264-4caf-9323-73607f295a87',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1f91bdd7-ce2b-4cfd-b5d2-f2215118b0c4',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'poivre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '085cd912-1331-4892-a7f8-029cd1c95471',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'patates douces',
  'kg',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1ac44006-9dcc-4846-b247-8babe55d68e3',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'beurre',
  'g',
  50,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5fc9ca35-4f4f-432b-8394-6cd128c42f9e',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  'l’huile pour la friture.',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7e9f5db4-f073-46b2-bed4-b4c1adb7f1f0',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  1,
  'Lavez et égouttez les suprêmes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd4f2f841-0ec7-4280-b26b-c61950241296',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  2,
  'Mixez ensemble les ingrédients de la marinade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd2acbcdf-0df8-4e1c-907c-70ad7934c480',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  3,
  'Réservez une persillade pour les patates douces',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '977fa98c-c468-43dc-989d-71fbea129fb8',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  4,
  'Assaisonnez et marinez les suprêmes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9dd112eb-1276-4ea8-a04d-a6eefc227c6e',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  5,
  'Réservez-les au frais pendant 1 h',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3864293f-6d91-4fc6-bc0d-0b09fbb0a85f',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  6,
  'Lavez et pelez les patates douces',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9be2727e-b606-4361-9276-d83c0032ae27',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  7,
  'Tranchez-les en rondelles dans le sens de la largeur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bd76b87d-05d1-4beb-9bc2-3929902c39fd',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  8,
  'Blanchissez-les ensuite à l’eau bouillante salée pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '72764cfb-7f82-42a0-b990-1e080c3e3d50',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  9,
  'Egouttez-les et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '060b1cb9-b5e1-4708-bd77-b6ad2d018931',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  10,
  'Poêlez les suprêmes et faites-les cuire au four, 10 min, à 180°C',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0afeba16-920b-42e4-bafa-6f7cacfeba29',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  11,
  'Chauffez la friture et faites-y cuire les patates douces',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7acdf9d5-49db-4091-83e9-09e2a3bcfa8d',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  12,
  'Ensuite, sautez-les au beurre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ac53318a-b61e-441a-bb5e-39f22c0a73aa',
  '0f320a9b-e1d9-481a-98cd-038cff92ba02',
  13,
  'Persillez-les puis dressez.',
  NULL
);


-- RECETTE 19: COCKTAIL POMME-CITRON
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  'COCKTAIL POMME-CITRON',
  'Recette cocktail : COCKTAIL POMME-CITRON',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Cocktail',
  cat_cocktail_id,
  ARRAY['Cocktail']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b2fdd792-5d54-490c-ae2a-47a8b665d71f',
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  'jus de pomme PRESSEA',
  'cl',
  24,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd79ddc09-8f46-4c45-bcaa-4eeab389b519',
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  'jus de citron',
  'cl',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a8f3c14f-66e3-4513-8433-b2b8413ad468',
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  'sucre vanillé',
  'cuillère à soupe',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bd863e77-b358-495e-ad36-cfccd08955ff',
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  1,
  'Mélangez ensemble le jus de citron et le sucre vanillé jusqu’à ce que le sucre soit totalement dissous',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e760b1ba-2f1d-47e8-8cdb-afe36c9fa827',
  'bdd94fad-c8fa-4c9a-97b0-de0f16be398d',
  2,
  'Ajoutez le jus de pomme et servez frais dans 4 verres.',
  NULL
);


-- RECETTE 20: GATEAU AUX DATTES pour 4/5 personnes
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'GATEAU AUX DATTES pour 4/5 personnes',
  'Recette dessert : GATEAU AUX DATTES pour 4/5 personnes',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Dessert',
  cat_dessert_id,
  ARRAY['Dessert']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '39e573ad-5571-42cb-b972-f8a57bf02cc8',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'yaourt à utiliser comme mesure',
  'pot',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '65127e6e-c885-4ad7-ab69-31ddbf803031',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'farine',
  'pots',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '127382cf-22f3-44a8-9ba8-b2da298cc6db',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  '½ pot de sucre blanc en poudre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b765e0a6-28f0-41a4-98fa-f233af569b37',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'œufs',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e552b60b-4443-4e88-96be-1e0f120cf421',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  '½ pot d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '30b1312f-f0d2-4842-a98b-aa12978f83fb',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'levure chimique',
  'sachet',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '32168c89-bb22-4375-a6ca-d17fe1dce12f',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  'Une quinzaine de dattes',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7e2f8b2e-1bcd-4f3c-bd21-487af2ce4920',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  1,
  'Préchauffez le four à 170°C. Dans un saladier, mettez le yaourt, les œufs et le sucre et mélangez jusqu’à obtenir une texture mousseuse.',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '76e2914f-a3f7-4495-87db-4d5fd9b5b6c4',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  2,
  'Incorporez lentement la farine et la levure. Ajoutez l’huile et enlevez les noyaux des dattes pour les ajouter à la pâte.',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7890d05e-7b78-41b1-b2c2-437fc2a0cb80',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  3,
  'Versez la pâte dans le moule et enfournez 30 à 35 min.',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '39da79fb-a33d-44cf-a448-0d977c93d661',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  4,
  'Pour démouler, passez la lame d’un couteau sur le côté, puis renversez le gâteau avant qu’il ne refroidisse.',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4ef4e1bf-2167-479c-b3ef-ee24834fe7e6',
  'b65c3164-df10-4227-88dc-2b682fea16be',
  5,
  'Vous pouvez remplacer les dattes par des raisins secs ou autres fruits secs. Santé & bien-être',
  NULL
);


-- RECETTE 21: SALADE DE LEGUMES A L’AGOUTI
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'SALADE DE LEGUMES A L’AGOUTI',
  'Recette santé & bien-être : SALADE DE LEGUMES A L’AGOUTI',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5b4eaacd-3e78-4a72-9752-46c31fed3a75',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'carottes',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '44d0f087-a819-4628-b9c3-ccecb526726a',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bcc26011-97e3-4e22-9f35-38f43e1f00fe',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'poivron rouge',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '71a535ef-a282-4afb-930b-467e2f15c092',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'persil',
  'brins',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '050cb6e2-2854-44b4-b29e-152d7ce66672',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'concombre',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ae7f87de-37d0-47d1-8f9e-c43b8070185a',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'tomates cerise',
  'pièces',
  12,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a63a1b7c-6cee-4e56-85cc-2b34887b8b11',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'd’agouti',
  'g',
  300,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1275d1b6-f81b-40c0-b92f-638fb4828cad',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'd’huile d’olive',
  'cuillère à soupe',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7a9f6eae-cb06-494d-92ee-3274ca1fc3a8',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd7aad7f8-7704-4cbc-a6e2-e181bc3369f5',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'poivre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c9269f16-7791-41aa-9449-1373185fe3e1',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'Le jus de 2 citrons',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a9512a1d-0190-4237-ae53-5976a7db1b12',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'd’huile d’olive',
  'cuillère à soupe',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b7d5b3e2-f140-47d2-9945-a8f51d30044a',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '63f51d06-b1b6-422c-80b8-5716779a5854',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '638e0c7f-20b3-4672-b52a-bc265ad064cb',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  1,
  'Lavez soigneusement le gibier',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4348eb1e-111e-4abe-89ba-b47a1192145a',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  2,
  'Mettez-le à cuire dans l’eau bouillante salée et poivrée pendant 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '064a0bfe-7c17-4baa-adec-96a2d0543c07',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  3,
  'Retirez le gibier de l’eau et émincez-le',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '19bd9a81-a5ca-4a60-ad20-648ee9906ff2',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  4,
  'Chauffez l’huile dans une poêle et faites-y sauter les morceaux de gibier jusqu’à ce qu’ils soient dorés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9db3590f-ffae-4c73-9d35-b13bd7ed6f2d',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  5,
  'Coupez les carottes en julienne et émincez les oignons',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a0ca86d3-dbd0-4627-980e-65d160df419c',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  6,
  'Coupez le poivron en petits dés et le concombre en rondelle fines',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f35625bc-0ad9-494a-bf43-a37838626bce',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  7,
  'Répartissez les légumes dans une assiette',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8ecae545-5c14-4f4f-bbeb-a5f0f252c3f4',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  8,
  'Disposez par-dessus le gibier et la tomate cerise',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b695dd6a-4790-4a8c-bab2-de598c5a9959',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  9,
  'Versez la vinaigrette sur la salade, mélangez et c’est prêt',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8054b0a8-2841-4e23-8f2c-447819b0abcc',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  10,
  'Ps : Faisant partie de la catégorie des viandes maigres, le gibier est très conseillé pour les personnes désireuses de maintenir leur ligne',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '46ff0f57-5390-4c09-b36f-b31a36a42f80',
  '955a51cf-3613-45bd-b6d7-d012ec6f38a6',
  11,
  'Nous en voulons pour preuve cette recette de salade de légumes à l’agouti.',
  NULL
);


-- RECETTE 22: SALADE DE FRUITS AU TAMARIN
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'SALADE DE FRUITS AU TAMARIN',
  'Recette santé & bien-être : SALADE DE FRUITS AU TAMARIN',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '09ee1825-320a-4c20-9713-d36236a8e78b',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'ananas',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9025b2e4-3430-4e99-aa77-45092ec052d8',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  '½ pastèque',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0511fc5e-7782-4ecb-8148-a8a87ef76865',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'pêches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c29840ef-c842-42f7-8f1b-c94747b23e48',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'melon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4080e726-d55c-4b05-a53a-24a158b7c4e1',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'kiwis',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7d1b2d1c-530b-4b9b-8ca3-c67959f0ebb4',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'banane',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '03a7cbda-02b1-4f20-9927-a88519d0d253',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'oranges',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e4de66c1-4240-496f-8983-accc40be760b',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'pommes',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c564feb2-b4fe-4070-b143-45718f468a40',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'sucre vanillé',
  'sachets',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3d2a60dd-dcb6-4fb7-9f29-7a76b722010a',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'sucre en poudre',
  'g',
  100,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a8f672c7-5f50-4ff3-86b3-92669b2fc1ad',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'Le jus d’un citron',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '41c6cf7f-3727-4714-9039-5a3a9158d125',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'Le jus de 2 oranges',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3cf89145-3dd8-40ee-bb08-c75226676445',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  'jus de tamarin',
  'cl',
  50,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ffc20d40-d2ec-4a7e-a264-505eafd1273f',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  1,
  'Pelez l’ananas, retirez le cœur et découpez la chair en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8256c096-f88f-47f2-9e7c-b1f8ca0f14d2',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  2,
  'Coupez le melon, épépinez-le puis coupez-le en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3e9add28-c7c0-4eb3-8a1f-04e002f729c8',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  3,
  'Pelez les pêches, les pommes et coupez-les en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c2a0d508-b7d6-4bc6-8293-845d198060ed',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  4,
  'Lavez les fraises, équeutez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'afb2ae0c-b9d5-4bfe-86c3-aa82d3697a87',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  5,
  'Pelez les kiwis, coupez-les en rondelles puis en quartiers',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b6e61e87-79b3-4625-99df-f61c9869ddad',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  6,
  'Coupez la banane en rondelle et arrosez-la de jus de citron afin d’éviter qu’elle noircisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '49cf4379-118f-469e-b25d-1eb0f7da408d',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  7,
  'Evidez la moitié de la pastèque',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c8377aec-0244-4587-99ad-c456efac7f4f',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  8,
  'Faites des petites boules à l’aide d’une cuillère',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '34d50a0e-99d0-40b5-af91-226b3532ad4f',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  9,
  'Pour la quantité, cela varie selon votre goût',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2b548557-a012-4ddd-a6bf-ac4873926360',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  10,
  'Réunissez tous ces ingrédients dans la coupe de la pastèque, elle vous servira de saladier',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6559ec42-68f3-4441-9d75-46154bd9bf6c',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  11,
  'Pour finir ; versez le sucre vanillé, le jus de tamarin et le jus d’orange sur les morceaux de fruits',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e16c6ea8-01b1-411f-a302-ca68dc090610',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  12,
  'Mélangez doucement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0cb71c18-d2b1-4ac0-9398-5ecab794ca68',
  'a47c6103-b51a-4784-a96d-f4aef2226e07',
  13,
  'Réservez au frais et servez.',
  NULL
);


-- RECETTE 23: TISANE AU GINGEMBRE ET CITRON
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  'TISANE AU GINGEMBRE ET CITRON',
  'Recette santé & bien-être : TISANE AU GINGEMBRE ET CITRON',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0a340188-d685-4dee-a415-e267afe4f656',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  'à 4 fines tranches de gingembre frais',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ce8b44c1-70c2-4efa-8717-5acf37fcc73f',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  'd’eau',
  'ml',
  250,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '89e4f386-02ec-437b-b4cd-6ba4bb73f8d3',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  'citrons (ou le jus de 2 citrons)',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '070992a8-a1ed-43c7-b1bd-648ce54b002d',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  'miel',
  'cuillère à soupe',
  4,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ebd9eec2-d1c6-42a1-b6be-3bc12748c754',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  1,
  'Portez l’eau à ébullition puis ajoutez les tranches de gingembre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '15346a72-f0ec-44c6-bc3f-b22d7bf75a7f',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  2,
  'Laissez infuser 5 à 10 minutes (afin d’obtenir une dose efficace en substances actives)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ebb41097-0e27-446b-af37-900ed0010108',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  3,
  'Pressez les citrons et rajouter le jus à la tisane de gingembre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0748547b-3a13-44a2-8f4c-93117e2e12e6',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  4,
  'Rajoutez le miel et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '013153d3-ea22-40f3-bbec-39b905e509ae',
  'd1ce99bf-7812-46e2-afcb-8ba1a6447f4e',
  5,
  'Filtrez éventuellement avant de servir.',
  NULL
);


-- RECETTE 24: SAUCE ARACHIDE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'SAUCE ARACHIDE',
  'Recette sauce : SAUCE ARACHIDE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '114f8ad2-c4aa-4fd0-a575-2df089339b70',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'viande de bœuf',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '42f1e7f6-0b9b-4b27-a037-5324bb120b50',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'poissons fumés (capitaine)',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5f0eb3f7-ed1b-4d41-8963-f93268ef0dbb',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'pâte d’arachide',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2be6b8d3-acbd-4a75-b678-7ef2644396bb',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9d3570d8-b332-4cf4-bb74-de9381dbb425',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'tomates fraîches',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0a2f57d6-72f0-4647-b87c-53ed8821bdcf',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'tomate concentrée',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b5df2eb3-1049-40f5-8485-691cc9456b47',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'poudre de poisson fumé',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b805b647-512b-4db0-9979-b290cea5a446',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b78f2951-0a13-42be-8204-ab9fba4b6825',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'gombos frais',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b3390316-2cdd-4b03-9f9f-1691ed632b46',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f4823b86-3b24-448c-9ec9-3354eba97601',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  1,
  'Coupez la viande en morceaux et lavez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '77a5c1cc-600f-46b9-9062-e61141e3ba87',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  2,
  'Mettez la viande dans une casserole et faites-la revenir pendant 5 min à couvert',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3217ca2d-a8c1-4840-a907-3ddadc010bde',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  3,
  'Ajoutez les oignons épluchés et entiers, les tomates fraîches, les piments frais et la tomate concentrée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3896cf4c-f6e9-4241-a4e4-43a85f884f7c',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  4,
  'Mouillez la préparation avec 1 L d’eau et portez-la à ébullition pendant 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f6623f09-1fa4-40d0-8cf8-50b7bc9fa841',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  5,
  'Rajoutez la pâte d’arachide à la sauce et continuez la cuisson de 10 min, le temps que la pâte se dissolve complètement dans la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a65b106b-6ae8-4795-82cb-8acc0a9a0416',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  6,
  'Retirez tous les légumes et écrasez-les jusqu’à l’obtention d’une purée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7ebdc08b-e41e-4891-83b4-88d70751a538',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  7,
  'Rajoutez la purée obtenue ainsi que le poisson fumé à la sauce et laissez cuire, 1 h à petit feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '27655fa0-e924-4aee-99a2-25d21b05fa33',
  'ad216ac6-9562-4ce1-a859-99da3015fe2c',
  8,
  'Rajoutez les gombos frais, rectifiez l’assaisonnement et laissez mijoter 15 min avant de la servir avec l’accompagnement de votre choix : riz ou foutou.',
  NULL
);


-- RECETTE 25: SOUMARA LAFRI
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'SOUMARA LAFRI',
  'Recette traditionnel : SOUMARA LAFRI',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ca455ca4-147e-416e-a912-54b34573caf4',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'bœuf',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '79690cf4-65d9-4cc9-a112-93639f726f40',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'riz',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5a2c56cc-5596-4ab1-bd7c-f784faedfe65',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'crabes',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9daa4af5-0e76-4c98-bd34-c99a7234a0bd',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'tomates',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'de8399ce-5cfb-4ec7-ae91-98c3bb5f3708',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'aubergines',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9c7c0b5b-a4a8-4660-a1cf-837ce3cb0404',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'gombos frais',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd7396e33-298f-44da-978f-28908da4048e',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'oignons',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '766ffd10-7318-474e-a307-06bed1337fb8',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'd’ail',
  'gousse',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4428c388-a8ca-436b-b33f-e01787910bf3',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'tomate concentrée',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '67b13c8e-cab5-4563-bb14-a4ee5bbf31ac',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'piments',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4a960b23-ad06-48e8-9b92-d4d012087d0f',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'soumara',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4c054213-198e-4475-b822-cb91881ae00f',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'persil',
  'brins',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1e01c4cb-d176-46c1-a7b6-1fd6ac0d88fd',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'd’oignon',
  'feuille',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '392166d2-31c7-4158-88cf-131fe27bc4f2',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'cubes d’assaisonnement',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a0080d2c-2e13-49c7-9eb7-14ca653330ea',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  'papier aluminium.',
  'pièce',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e3c59829-02c4-4806-bcc2-ed7708f1a19b',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  1,
  'Portez une casserole contenant 1 L d’eau au feu, ajoutez les gombos et les aubergines équeutés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '80063442-a8dc-4648-aafd-68e29c52a724',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  2,
  'Après 10 min d’ébullition, ajoutez le riz préalablement lavé et égoutté',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eebe2424-f12a-4a55-9c49-7658a08fa808',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  3,
  'Faites un mélange avec le soumara moulu, la poudre de crevettes, la poudre de poisson sec et le sel',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6df08d40-5d5b-416b-a2e5-3acdda39be30',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  4,
  'Quand l’eau s’est complètement évaporée, faites des creux de part et d’autre dans le riz et mettez-y le mélange',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a9d1c268-600e-40ac-abe7-494b374ff88f',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  5,
  'Couvrez le riz avec un papier aluminium et laissez cuire à la vapeur à petit feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f3125c33-15c3-41a8-afc4-eb367a05bc1c',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  6,
  'La sauce tomate : Réduisez en purée les oignons et l’ail',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1b021b75-5493-4bdf-9b3c-38558c012464',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  7,
  'Ecrasez les tomates et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cb66f94b-3e6b-4450-9ce9-09da414e6bd0',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  8,
  'Ciselez la feuille d’oignon et le persil',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '01eb48b1-baff-4bd1-9bd4-8967bc285674',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  9,
  'Précuisez la viande pendant 1 h',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '56139727-6530-4aea-a7cb-3755cbdc9e62',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  10,
  'faites dorer la viande et les crabes pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b1ab1b9c-2736-4abc-84f7-a2bd2d8d0f15',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  11,
  'Ajoutez la tomate concentrée, le poivre et le persil',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '07c86585-c751-49f8-9d0d-4cfb353f5453',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  12,
  'Après 2 min, ajoutez la purée d’oignon et d’ail, faites cuire 5 min et ajoutez la purée de tomate et la poudre de crevette',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7cef435a-7a49-409e-bafe-0aee52bc92a2',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  13,
  'Mouillez la préparation avec un ½ L d’eau, laissez réduire à la sauce jusqu’à ce que l’eau finisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd44e9f7b-355c-43fa-a1a2-fb1e2c89797c',
  '81e9429d-5863-4264-a877-62cac2c4ac18',
  14,
  'Servez avec le riz.',
  NULL
);


-- RECETTE 26: BOUILLIE DE MIL AUX 4 SAVEURS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'BOUILLIE DE MIL AUX 4 SAVEURS',
  'Recette accompagnement : BOUILLIE DE MIL AUX 4 SAVEURS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Accompagnement',
  cat_accompagnement_id,
  ARRAY['Accompagnement']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '57baaf90-5c73-483f-b101-d907e2e0be2c',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  '½ kg de farine de mil',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '44bf65bd-20dc-4053-8809-4029630ed70a',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'citron',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0e49bd9c-e6fd-47dc-9d82-5ce1b3e8b0cc',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'sucre',
  'g',
  250,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9e444715-0970-45b9-ac8b-e9600aeded9f',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'sucre vanillé',
  'sachet',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1ad71fa7-c4da-4138-88f7-cbed6593c91e',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'gingembre en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '28ba63d7-eac1-4dff-959f-790154eb7310',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'cannelle en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '833f006f-2757-4bd7-af33-8efa6c7232a5',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  'muscade râpée',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '104d6d09-3250-4394-b3eb-415c7e0451b0',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  '½ cuillère à café d’anis.',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a8625360-582b-438f-bdd8-2f73aa342685',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  1,
  'Passez la poudre de mil au tamis',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ab58497a-8fe7-4c2c-b0c1-67368b3e4004',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  2,
  'Mouillez la poudre de mil sans qu’elle ne devienne une pâte',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1af0b2a4-193e-46ca-b566-30d9984a8950',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  3,
  'Déposez cette farine mouillée sur un tamis à grains (tamis carré en fer) et faites des grains en remuant',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '69aeea25-c4de-4769-be7d-17f5bea6cfe3',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  4,
  'Vous pouvez faire des grains à la main également',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a2e05e0a-a591-4a7d-b580-faf3ba7d4ff7',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  5,
  'Veillez à un bon équilibre entre l’eau et la farine : les grains ne doivent pas être colés ni s’émietter au toucher',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a6f25d28-d614-4fc9-a4b0-8d20f28a977f',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  6,
  'Séchez ces grains de mil à l’air libre pendant une demi-journée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a8b8d4db-75f7-409b-a70f-b145b87f1aba',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  7,
  'Portez un démi-litre d’eau à ébullition',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '73a420d2-bb71-45a2-a752-78077b1b3705',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  8,
  'Versez-y les grains de mil en remuant pour éviter que les grains ne se collent',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0a5958e5-729b-4ccd-8b75-6999daed6a0a',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  9,
  'Laissez cuire pendant 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2363d394-d8e8-4b17-b97a-28d79a53b1a1',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  10,
  'Après les 15 min, ajoutez à la préparation le gingembre préalablement râpé et un démi-verre d’eau auquel vous aurez mélangé le jus du citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e8af5edb-ab2a-482f-afbc-4c06f10a4fbd',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  11,
  'Poursuivez la cuison de 15 min puis sucrez et laisser mijoter 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '26c8e08a-4e6d-4185-b4cb-1162c6e5530b',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  12,
  'Avant de servir, mélangez les épices et ajoutez-les à la bouillie',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b463c537-17af-4183-8372-4b1274292b44',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  13,
  'Mélangez bien et servez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4876c2d0-3f27-4512-8fb0-36e0dc17e095',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  14,
  'Suggestion : Vous pouvez également utiliser selon le même procédé des grains de mil déshydratés (prêts à l’emploi) que vous trouverez en supermarché',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9e9868be-6c30-4722-85a5-2064285cbb05',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  15,
  'Nb : Si la bouillie est trop liquide, avant d’y ajouter le sucre, délayez un peu de poudre de mil que vous avez réservé dans de l’eau que vous ajouterez à la préparation pour l’alourdir',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6e170091-37be-4975-ad6c-4d9148542646',
  'a26b1c39-67f0-4c37-9ff2-c55067336da6',
  16,
  'Les crustacés à l’honneur',
  NULL
);


-- RECETTE 27: BIEKOSSEU DE CRABES Crabes
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'BIEKOSSEU DE CRABES Crabes',
  'Recette fruits de mer : BIEKOSSEU DE CRABES Crabes',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e9848d3e-ee4e-47e6-b6c4-a86af506c0c4',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'crabes de mer',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5c5b0fb7-5ee3-4eda-a74f-06fd831b88bd',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'tomates fraîches',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ff828278-23bf-430c-9316-f9071d2f00ff',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'oignons',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '810d0dd3-d27d-4e82-8ec0-7d6fe15a71bf',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'piments frais',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9b2af40d-a505-47c8-8547-51cdeae1496a',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'd’aubergine (klogbo)',
  'poignées',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '71adb9e7-a52f-49c3-9f07-0cc5e6168406',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'd’ail',
  'gousses',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '50cf1960-b94e-43a0-bd44-7e15d7725908',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'Des feuilles d’attiéké',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8dfe070a-ad50-43ca-951d-bda9e3bd22f3',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  '¼ L d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '56f1402e-43ba-4108-b46d-bdd6daad21b3',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c50e0379-1e32-441f-be23-dcd78fb9b08d',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0abba77b-c9d2-4c0f-8eb3-75ea12dd2f35',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  1,
  'Nettoyez soigneusement les crabes et coupez-les deux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f3b065bd-cdce-4164-9921-2cf114d388d4',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  2,
  'Nettoyez les feuilles d’attiéké et tapissez-les au fond de la casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd3e8ee83-db3d-43e0-9483-ad8a9983ac0a',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  3,
  'Disposez les crabes sur les feuilles Ecrasez ou mixez 2 oignons, 4 tomates fraîches, 3 gousses d’ail et 3 piments frais jusqu’à obtenir une purée fine',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '46855fee-8b7a-4e28-8452-b771f10d486e',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  4,
  'Assaisonnez et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5a8a983a-5ca2-42d5-88a1-6f98c70c3a2f',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  5,
  'Ajoutez un verre d’eau et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '32973a04-3390-4622-9149-23303c0d7a3e',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  6,
  'Versez le mélange sur les crabes avec un peu d’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a9ec1749-947f-4ec2-af20-edbff94b8833',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  7,
  'Couvrez et laissez cuire, pendant 30 min, à feu doux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3397351c-96c7-4257-ac23-a3b6d5652884',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  8,
  'La sauce aubergine : Faites cuire, dans un ½ L d’eau salée, les aubergines avec les légumes restants (1 oignon, 2 tomates fraîches, 3 piments et l’ail) pendant 25 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '31302377-9089-4b26-ae23-b910c999a8fc',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  9,
  'Une fois cuits, retirez-les puis mixez le mélange jusqu’à obtenir une purée lisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '12ce0da5-e2c2-4e91-be4e-3192de1d19cd',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  10,
  'Mettez la purée dans le fond d’eau qui a servi à cuire les légumes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6a3adcbb-808f-4e50-b802-c421dc11c7df',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  11,
  'Assaisonnez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '41328f19-aaf5-4800-bf0a-0e367bf16165',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  12,
  'Laissez cuire, 10 à 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6164e3a1-1a1f-4651-9045-f9c3afb6271f',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  13,
  'Rectifiez l’assaisonnement à votre goût',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '51213846-2ecb-4f39-a865-abb202d137f7',
  'de810966-0621-4b9c-a129-4faa3ac94cad',
  14,
  'Servez avec du foutou de banane.',
  NULL
);


-- RECETTE 28: CRABES BRAISES 225
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'CRABES BRAISES 225',
  'Recette fruits de mer : CRABES BRAISES 225',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '15ac2f96-f036-4e85-9d32-baf4331f9ca8',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'crabes',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c317fc66-f8cc-4051-9797-68660a50138b',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'be838966-5132-4ca6-aa2b-69e977b553be',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'tomates fraîches',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '964efef0-addf-47f9-9c46-715ca9c9c92c',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'kablè',
  'feuille',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '42f941df-cf2c-4bd7-8298-f4c4c6bd9037',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'piments secs',
  'pièces',
  10,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd030dd8a-aeee-4862-9fab-414eaefd40ed',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'persil',
  'brins',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3f89a344-5d86-4a98-a963-29dc09fdb2a8',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'd’huile',
  'cuillère à soupe',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bac2d1cb-3f4d-407b-9ff5-604f9dc80e1a',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '53ebde6e-a375-4afc-98e1-40e6f1f8f12d',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'aae124a4-4f99-46fb-be52-47d0bab32d77',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  1,
  'Nettoyez les légumes, le piment sec et le persil',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7f0ba5db-de78-4ac9-b200-d210241fd6cc',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  2,
  'Mettez-les dans un mixeur et ajoutez-y la feuille de kablè',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8421bbd5-696c-4130-8eac-318d6cb84b05',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  3,
  'Ajoutez l’huile et mixez le tout jusqu’à obtenir une purée lisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '90fc20b3-3e90-40b1-a97a-9d64c2d9241d',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  4,
  'Assaisonnez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '284831df-8a93-406c-8ee5-15f29732e413',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  5,
  'Farcissez les crabes préalablement nettoyés avec la marinade et laissez reposer, 20 min, au frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '924e4790-879f-4f14-9196-ec600c539f04',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  6,
  'Disposez les crabes sur un barbecue traditionnel ou électrique et laissez-les griller, 15 à 20 min, à feu doux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8b8ef783-d4bc-4a11-bef1-5887d17bc30f',
  'ce5cfe56-1344-4216-a17b-c4fe57e274d8',
  7,
  'Garnitures : alloco avec une sauce pimentée à la moutarde.',
  NULL
);


-- RECETTE 29: GRATIN DE CREVETTES A LA BECHAMEL
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'GRATIN DE CREVETTES A LA BECHAMEL',
  'Recette fruits de mer : GRATIN DE CREVETTES A LA BECHAMEL',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'eef3fc18-a6f6-4b63-a4de-a175acd3611b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'crevettes fraîches',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6e046905-b4a9-4bda-8cbe-884f33e7d535',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'Pour la marinade des crevettes',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '63f79842-e057-48b9-9488-add3dbbc1647',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'persil chinois',
  'brins',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '49323d29-c18c-4a3c-9cb7-5650a76175c7',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'd’oignon',
  'feuilles',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4f1dcc33-1b24-4efe-bbe6-f8b04de5ee1e',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'd’ail',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '10b7c6bb-83ad-49cc-b706-4069bb66f2ad',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'piments frais',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd6f513d0-8525-40b7-909a-b795d5cb3389',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'gruyère râpé',
  'g',
  300,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'eb58acd5-65ab-4f7b-81ad-93295c14308b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'œufs',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9f801c97-d477-4a58-abe4-01bf1913099b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'farine',
  'g',
  30,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2d8c9662-18e8-4651-a61a-458eaf66f36e',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'beurre',
  'g',
  30,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '30bbe086-acfd-4887-a967-2dd2772fbcab',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  '½ L de lait',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c1b35247-a516-45d1-84b3-542d8965d365',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'noix de muscade',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd1df9c6f-7eff-446d-ac91-166ade9488e6',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'beurre pour le moule',
  'g',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '16a62319-3d08-4d99-89ec-a8b8afdee794',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'œufs battus en omelette',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '648db0b0-c2c1-45d0-af5e-96bff6dd624b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3d3e0dc7-8d06-423e-9fca-bd038f0a6f46',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fd2fa6e7-39c4-4aed-9732-b4a020969d08',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  1,
  'Lavez les crevettes et décortiquez-les',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4fdc4d8e-4039-4a71-b0ca-242b8fe05ffe',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  2,
  'Mixez le persil, les feuilles d’oignon, l’ail et le piment',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4364f80c-bd64-4b46-a976-485861a2a1d2',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  3,
  'Assaisonnez et mélangez bien le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5a91f197-d38d-41c6-92d2-1d64a878681b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  4,
  'Trempez les crevettes dans cette marinade et laissez reposer, 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cc7d494b-5bb7-4011-809c-45ea4f291c2b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  5,
  'Pour la sauce béchamel : Dans une petite casserole sur feu doux, mélangez le beurre et la farine',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eddc1587-bb9b-4d8e-8fba-f039abc43919',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  6,
  'Ajoutez le lait froid en une seule fois',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c83cfa17-f159-4052-b3af-059ee56c1c64',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  7,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e91f1fb3-e9ca-4630-84b0-52b088d900ed',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  8,
  'Ajoutez une pincée de muscade râpée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7e5ac59a-7003-4e73-b0b8-f43c412a25ba',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  9,
  'Portez à ébullition sans cesser de remuer avec le fouet',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd7eead19-dfbf-44eb-880a-62aa459b015b',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  10,
  'Laissez cuire une dizaine de minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '37c02ec1-8948-416a-8694-c063c9825d04',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  11,
  'Remuez de temps en temps',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '49648db6-0c50-44db-b741-964aaff90d75',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  12,
  'Ajoutez-y les crevettes et laissez cuire, 10 minutes encore',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5f2b4e39-b5fd-4e1f-b715-98a19e2e7620',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  13,
  'Dans un plat à gratin beurré, répartissez la béchamel',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c6190531-ef87-4dd8-baad-16b8299427c0',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  14,
  'Ajoutez les œufs battus en omelette et finissez avec le gruyère râpé',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b123f384-a63f-4587-95ff-bb76136b964d',
  'd8086764-1baf-4e49-9030-2b31489d3fdb',
  15,
  'Faites gratiner la préparation, à four chaud, pendant 20 minutes à 160°.',
  NULL
);


-- RECETTE 30: BEIGNETS AUX CREVETTES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'BEIGNETS AUX CREVETTES',
  'Recette fruits de mer : BEIGNETS AUX CREVETTES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a982b745-7ab0-4002-8fb8-2f1bbd886b01',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'grosses crevettes crues',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '20474119-939b-414a-ab76-f2fa318740a2',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'œufs',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7e04f2ec-50ce-4615-9a39-c1ac4474a73e',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'Une pincée de sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f01cd4c5-6808-4211-97c6-ac1085997788',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'farine',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '68eb6267-550c-40f9-a615-a83338ef916a',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'levure chimique',
  'sachet',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ff4ad7a8-bb22-468c-9436-def6bed9c151',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'd’eau',
  'cl',
  15,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd55c8e52-a58a-4840-9849-015c4975c498',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  '½ L d’huile pour la friture',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ab7f0815-859d-4a7e-a082-193615d2bc74',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '713ca4f1-7e68-435b-bb32-997014f8d05f',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'poivre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '77726ec7-94e6-4f6d-b434-ccd608e42dda',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'sauce de soja',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ca2d2f91-c858-4b36-a149-d830d53fafd3',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'gingembre en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '29e198f4-ff29-4f24-baf3-a036e7353d19',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'persil',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b8d80637-e170-4c8d-b1c4-f9948cf27996',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  'd’huile',
  'cuillère à soupe',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a659f141-eb59-4ffc-ab78-1eee06a9404f',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  1,
  'Pour la pâte à beignets : Battez les œufs en omelette avec le sel et le poivre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0fec0d2b-c5f2-44ef-ad01-dd828316fdb2',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  2,
  'Ajoutez la farine, la levure et l’eau ou le lait jusqu’à l’obtention d’une pâte homogène et fluide',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '890dbc90-7319-484f-a749-8a1010c6b404',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  3,
  'Cependant, cette pâte doit être encore assez épaisse puis laissez reposer, 30 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '14cda233-60c3-4d9a-a60b-a2236e37e428',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  4,
  'Pour la marinade : Dans un plat, mélangez la sauce soja, le gingembre, le persil et l’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2727691d-8adf-4164-814c-57dc90365edb',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  5,
  'Décortiquez les crevettes en laissant les queues',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a583496d-b688-4182-b681-ea19c6b1294a',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  6,
  'A l’aide d’un petit couteau pointu, pratiquez une incision le long du dos et ôtez l’intestin en forme de veine noire',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e84e1406-3904-4798-84a6-c0569532df54',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  7,
  'Rincez les crevettes, séchez-les avec du papier absorbant et mettez-les dans la marinade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f23650fc-0a3e-4db5-b258-361a1cd32813',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  8,
  'Mélangez, filmez le plat et placez-le, 30 min, au frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '542f55b3-5419-451c-af4d-e34104b30808',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  9,
  'Passé ce temps, égouttez les crevettes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '25d2889b-7c80-451a-bb49-d882e7ac49ed',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  10,
  'Mélangez de nouveau la pâte à beignets au fouet',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7ae1b88c-112c-4406-ad2f-516a1e6374e7',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  11,
  'Faites chauffer l’huile de friture',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fe885261-e888-41dd-82d6-cc0e7eecfaa1',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  12,
  'Lorsqu’elle est à bonne température, enrobez les crevettes dans la pâte à beignets en les tenant par la queue et trempez-les dans la friture par petites quantités',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '19c433d8-c1e8-491e-be8d-c789972f8903',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  13,
  'Lorsque les beignets sont bien gonflés et dorés, retirez-les avec une écumoire ou une araignée et posez-les sur du papier absorbant pour les égoutter',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ea47cc45-90dd-48b5-ab23-ac8ec08b9b96',
  'bcff8608-30ec-48aa-87f1-5cb38646110a',
  14,
  'Servez-les chauds avec de la sauce aigre-douce, pimentée à l’ail toute prête et disponible dans les supermarchés.',
  NULL
);


-- RECETTE 31: CREVETTES CREOLES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'CREVETTES CREOLES',
  'Recette fruits de mer : CREVETTES CREOLES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2d51fd5a-20ab-4c6b-9804-fb344c23a745',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'crevettes roses',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7605a205-7beb-4f6d-8b9a-7ae0c7e018b0',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'citron vert',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8dc145ef-49a9-4304-9aaf-6e81c541a07b',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c0a455b0-3a84-419e-9fdc-d143b6966130',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'tomates fraîches',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '068d0002-4794-4d2a-9845-8309860ef5f1',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'd’ail',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '246721c5-3688-404d-a1ba-6887d8c6ce10',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'crème fraîche',
  'cuillère à soupe',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd9e68863-1099-40f0-998d-055c5d3bd1dd',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'laurier',
  'feuille',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '48ffc5ca-8337-44ba-b783-9e95e755eb93',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'persil',
  'brins',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '27e95a2a-df8d-4d90-8535-29ffd3cbab83',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  '¼ d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '55fdaeaa-c92e-4a80-a9a9-16aa7e07d53d',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b27bd714-71b9-4def-933b-a289e19cc672',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eae8a86b-c6b0-4fee-8825-990954da32f4',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  1,
  'Enlevez la peau du citron à l’aide d’un économe et émincez finement l’écorce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5c131672-a55c-45f7-ba2f-d1d248ad963a',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  2,
  'Pressez le citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '96f86963-6e6f-4949-863c-2fceed2dfaf0',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  3,
  'Emincez les oignons et faites-les blondir dans l’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '606b5d07-c237-4eeb-90e6-8c36fe57ac18',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  4,
  'Ajoutez les tomates coupées en dés, l’ail coupé en petits morceaux, le persil cisélé et les zestes de citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f1967c2f-2d0e-4c9d-aba7-6fc7b1539f60',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  5,
  'Salez, pouivrez et laissez mijoter, 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd34511bd-2780-42b7-a517-8e69a8b38f05',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  6,
  'Ajoutez la crème puis les crevettes et le jus de citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd6f9292e-0733-4544-93cb-b0090f5858ab',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  7,
  'Rectifiez l’assaisonnement et laissez chauffer, 5 min, à feu doux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f591a4d7-1f42-4ecb-afc0-c0065771b462',
  '1116e6cc-c993-4e91-ab03-00c6ab8a0b86',
  8,
  'Servez avec des pommes sautées.',
  NULL
);


-- RECETTE 32: BOUCHEES DE CREVETTES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'BOUCHEES DE CREVETTES',
  'Recette fruits de mer : BOUCHEES DE CREVETTES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '43b690ab-213d-4c03-ac1b-9d71ecdd372e',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'pâte feuilletée de 200 g',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1606f9d5-7fd4-4be9-9db0-9b41d117fe33',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'échalotes',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd76ed74a-8bee-4999-906b-23c8ead98acd',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'd’ail',
  'gousses',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c9b312ac-0957-4429-8031-8a01121aa6e0',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'germes de soja (facultatif)',
  'g',
  20,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '87a1d9ae-79d9-46bc-9b5e-13700a09823b',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'sauce de soja',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '32cd64b2-5b05-4ff0-a5ea-e49a3d856b4a',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'coriandre',
  'brins',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7f39aa04-fe82-44f9-8130-1d8cfb584761',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'gingembre',
  'morceau',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '211fea22-1e22-490c-8582-d142ba5dd5c2',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'carottes',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0941c9db-a4d0-41d4-815e-222b79ccde68',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'sucre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '79644e66-7475-47fc-921a-d1d740592afe',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'crème liquide',
  'ml',
  50,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5b31c6af-46ef-475a-bbe4-5e2249c35d8b',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'cfa70f81-edb6-4288-b940-41a2a4eb0bc8',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'dd1f3321-9a06-4f0d-8e13-95cebf89ce65',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  1,
  'Pelez les échalotes et l’ail',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e3aa6154-eaee-4eb3-8039-ce575f697488',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  2,
  'Pelez et râpez le gingembre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8115c984-092c-4468-bf7c-87288abbc2f9',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  3,
  'Décortiquez les crevettes, hachée l’ail, l’échalote, la coriandre et la carotte, coupez les crevettes en dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8cd93e19-0488-4537-92f2-744c34ba24cd',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  4,
  'Ajoutez à la préparation le gingembre râpé et la sauce soja',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '95d9766d-362e-499b-80bf-b08783f5d1bb',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  5,
  'Mélangez bien le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4ac6d947-682e-4388-a6d5-896387f445a8',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  6,
  'Coupez des petites formes rondes dans la pâte feuilletée puis les cuire à 180°C pendant 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '63bd9833-3be7-48db-a289-0f4bd199b516',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  7,
  'Faites revenir tous les ingrédients puis ajoutez la crème et laissez cuire pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b6bca6b9-777d-46d1-8505-8b0f144b2613',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  8,
  'Assaisonnez et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '04fc4ae5-3e76-43a8-baab-00fc3dc215b4',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  9,
  'Coupez une partie du feuilletage puis déposez une grosse cuillère à soupe de préparation (la farce de crevettes) sur la pâte et refermez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd1a97695-f202-443e-aa20-128efd011903',
  '3ec7099f-5550-4521-ba47-bb53fa95aa76',
  10,
  'Sur les assiettes, déposez un peu de crudités, ajoutez les bouchées, une feuille de coriandre, servez aussitôt.',
  NULL
);


-- RECETTE 33: CREPES SALEES AUX CREVETTES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'CREPES SALEES AUX CREVETTES',
  'Recette fruits de mer : CREPES SALEES AUX CREVETTES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9b457d47-27e0-4095-aead-7bc145cb9b95',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'farine',
  'g',
  175,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '855560ff-dbcf-4906-9a51-217339ec1912',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'œufs',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6ceac82b-7a50-449c-b1a3-0fe14353de22',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'sel',
  'g',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ebeeb4e9-336a-49d7-96b0-02f21600d2dc',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'd’eau',
  'ml',
  65,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ebb02fe8-ce02-455d-b0e6-ebe6f57b270d',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'lait',
  'ml',
  315,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6c311c4c-8e52-482d-b2ed-73a3c586c635',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'beurre',
  'g',
  60,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f72fb885-5095-4d16-af3a-1765cc72a620',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'farine',
  'g',
  30,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c44c5fea-f410-4a04-9fb5-6f1306fbbfb5',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'lait',
  'ml',
  375,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '96180fdb-7bb6-4492-be11-506c9773218a',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'crevettes fraîches',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bd0346c5-1585-44a3-b061-8f844797e6e3',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  '¼ L d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '46bf3c3c-4777-418b-ab6d-d537d7b2c799',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f20fd059-d077-4c77-a3a2-eb3963655050',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'gruyère râpé',
  'g',
  150,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '430c1ef6-6787-4eb9-a6ab-b2e9308067cb',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'beurre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8c8fc638-762b-4f7d-83cd-4190ada801ba',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2fc463f6-c733-4294-a384-1927e9a03671',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ac523e46-03c2-4061-86c1-095d0acaca7e',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  1,
  'Pour les crêpes : Mélangez la farine, le sel et l’eau pour faire une pâte fluide et terminez avec le lait',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b68296ab-4f27-4dfc-a021-24a25c050cae',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  2,
  'Mélangez bien le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '158a35b8-0291-49aa-a992-a92f928bfd4b',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  3,
  'Laissez reposer, au froid, environ 1 heure',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '143146eb-2aae-489a-a3e4-5692b5bd7811',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  4,
  'Faites cuire chaque crêpe, des 2 côtés, dans un peu d’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8da56b67-00c9-47e5-bf24-08e19667493f',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  5,
  'Pour la sauce : Faites fondre le beurre dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '332170f2-ab28-46f7-9b2a-2a55b6a10cd7',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  6,
  'Ajoutez la farine délayée dans un ½ verre d’eau et laissez cuire 2 à 3 minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ecf08a13-b24d-4eb7-ba52-357ca04c88d6',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  7,
  'Versez-y le lait chaud en remuant progressivement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e7a8afd8-97f7-44d7-8f62-9f196d3a854f',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  8,
  'Laissez cuire pendant 15 min et assaisonnez au goût',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '35c06e2b-8e6a-449e-a01b-4be4b01b5da3',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  9,
  'Faites sauter dans une poêle de beurre les oignons émincés et les crevettes pendant 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '30360c47-bbf8-4926-bd65-9b39c6639fe8',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  10,
  'Assaisonnez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '530aa0e5-9118-4ab1-924d-5d384166cb42',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  11,
  'Ajoutez cette dernière préparation à la précédente et mélangez bien le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8fca1cb5-1d0a-4af5-bab2-9965c57cca79',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  12,
  'Garnissez chaque crêpe de 1 à 2 cuillère(s) de crevettes en sauce et roulez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ae4b2b52-0409-471a-8e6e-4742f3779f8f',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  13,
  'Disposez-les dans un plat à four, saupoudrez-les de fromage râpé et faites-les gratiner 5 à 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '712af5e8-9a79-4e1b-ac41-298eb550912b',
  '05c0dcde-7c0d-48ea-99a6-e6b3150da040',
  14,
  'C’est prêt !',
  NULL
);


-- RECETTE 34: CHOUKOUYA DE GAMBAS Les Gambas
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'CHOUKOUYA DE GAMBAS Les Gambas',
  'Recette fruits de mer : CHOUKOUYA DE GAMBAS Les Gambas',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2da430ad-c621-4055-bc74-a8b39b98f4ee',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'gambas',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '930d7bed-67a4-40b4-8c2a-b4f56dca72aa',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b71d5609-b624-43ec-8403-3da0b8314215',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5b3233bf-73bf-4e5e-9aa1-4872b47fa5f8',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'piments frais',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '01608da7-1ae0-4910-aeaa-6bcc80e7774d',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'd’huile',
  'cuillère à soupe',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '41ad0cba-eff9-42af-a9fe-0175fe130642',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'piment en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7bb6a68d-8448-4f7b-a6ca-6c8ba2e7ea33',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'poudre d’oignon',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e1549d6e-1f0d-46fe-a564-8bad298d5ca9',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'kankankan',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c567502d-7fee-4242-9c08-0770225fd624',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a4587206-d04a-4e8e-bc83-6cab79de5b89',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  1,
  'Nettoyez les gambas',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'abe8ba9f-48f5-40a7-85d1-02977497dc29',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  2,
  'Mettez le piment en poudre, la poudre d’oignon, une partie du kankankan, 3 cuillères à soupe d’huile et le sel dans un bol',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2e075825-97fd-445c-991a-0c174d9fd9ba',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  3,
  'Mélangez bien le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '19bb28da-aac9-4050-a4ab-d307d22b6de6',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  4,
  'Trempez les gambas, dans la marinade, pendant 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '42f3a2fc-55f5-4642-9fc1-5330536118c8',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  5,
  'Coupez les légumes en gros dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '45bfb45b-8612-45a9-a701-70939fb6dea5',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  6,
  'Badigeonnez la grille d’huile et disposez-y les gambas',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '257c3873-846b-43d4-880e-a877ddbfcfd9',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  7,
  'Laissez cuire 5 min en retournant puis ajoutez les légumes en gros dés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bbe8b633-f531-4f59-ad84-6d76364524e3',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  8,
  'Ajoutez le kankankan et l’huile restante',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ef2f22c1-a0dd-43e7-a911-1e8f53dbbe93',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  9,
  'Laissez cuire, 15 min, en mélangeant de temps en temps',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2cdb0e89-beee-4f73-80d3-34c39e8c0ef0',
  '3cf86e98-3912-4a91-aedc-bcadf42f545f',
  10,
  'servez avec de l’attiéké.',
  NULL
);


-- RECETTE 35: GAMBAS A LA CREME
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'GAMBAS A LA CREME',
  'Recette fruits de mer : GAMBAS A LA CREME',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '88a7b8a3-caab-48f0-8f81-fe43ce91b068',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'gambas',
  'g',
  600,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c766956c-da65-44e0-93e7-ab596e5a8973',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'crème fraîche',
  'ml',
  250,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '56e47ed3-3758-4147-ba04-a777aba0cbb8',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8c3d9b3f-df80-435c-a76e-b4ac248697d9',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'd’ail',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4453be0d-e575-46a9-9242-93aee7a7143c',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'curry',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4558e2c1-995a-4b6b-8994-1bd81e37d538',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'piments frais',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6ecc75ca-542b-44c9-919a-82f06b510555',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  '¼ L d’huile',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'dcb172de-20ab-4b39-aab7-72289808cc36',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9df2957b-8efa-4075-a61f-5f4c3e9977c3',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'df052264-11a9-4de3-98e4-59ffcef30eb1',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  1,
  'Commencez par décortiquer les gambas',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '23cd6126-3fac-433b-9523-561d6547778b',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  2,
  'Faites revenir les gamas dans une sauteuse avec le curry, l’oignon émincé et le piment frais, dans 4 cuillères à soupe d’huile, pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ac893385-3d97-4f30-86b7-52c106c4fed4',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  3,
  'Une fois dorés, rajoutez la moitié de la crème fraîche et laissez cuire, à feu doux, pendant 10 min.salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5c8fc88e-7cf5-4d6f-b278-4bb1c741dd29',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  4,
  'Mettez les tagliatelles dans l’eau salée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3ae2c218-77f6-4e09-b7f0-48918a784ab6',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  5,
  'Une fois cuites, égouttez-les et rajoutez-les aux gambas',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4b76465d-e5f9-443a-8a35-c47c87cc1f89',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  6,
  'Rajoutez la crème fraîche restante',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3a0fa4fc-1887-4132-b8ed-8c164b4856c1',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  7,
  'Goûtez et rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c816d522-19d1-4d81-aa1f-5006aa13ef5e',
  'a39c78e1-509b-4d92-9efc-c0955ab6025e',
  8,
  'Laissez mijoter, 5 min, avant de servir.',
  NULL
);


-- RECETTE 36: CROUSTILLANTS DE GAMBAS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'CROUSTILLANTS DE GAMBAS',
  'Recette fruits de mer : CROUSTILLANTS DE GAMBAS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e499b68d-8a00-457b-869e-c40e8510dca3',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'grosses gambas',
  'pièces',
  16,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2a1338ae-2c83-44c5-9f36-31a8510b5644',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'rectangles de pâte feuilletée',
  'pièces',
  16,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '61fbf6a6-83c4-46fd-8de5-569a745bfa95',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'persil ciselé',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1dc1adeb-c65d-4bd3-87ec-d1313e918e06',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'gingembre en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '241e7196-c723-4866-95b4-c57c876436d1',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  '½ L d’huile pour la friture',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'fe37e345-6c15-4ae4-bced-afb47f7e690f',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'citron vert',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6f195ebb-fa3f-4574-a1ca-4ea725319600',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '47f575b6-67bc-40b2-8197-135cd95e90a6',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'poivre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ee3ea125-0897-49a1-b1c3-99f7f314da04',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'Egouttez-les sur du papier absorbant.',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0789bff9-8604-4a1f-8732-107508e2d744',
  '0b034d40-e45b-452d-8790-63410f3c4c83',
  'Dressez les gambas sur une jolie assiette et saupoudrez-les de persil haché.',
  'unité',
  1,
  NULL
);


-- RECETTE 37: RIZ AUX GAMBAS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'RIZ AUX GAMBAS',
  'Recette fruits de mer : RIZ AUX GAMBAS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '25cbc366-aa8e-44cf-bf98-a4d724647424',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'riz Dinor',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5a6ad217-cff7-4f69-97fd-0b250a4a9cf8',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'gambas',
  'g',
  500,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ef103d5a-0fbe-4b0e-8fd4-4d3bb01db2ba',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'poivron rouge',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '22fde015-8349-46d5-a01c-0097bd0370fc',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'petite carotte',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '58227a69-21f4-4421-9c95-c68f909689de',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '488b78d1-f4ba-4d42-ba1c-4ab7e94ce3a3',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'd’huile Dinor',
  'ml',
  40,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd3f9cc27-2ab4-4436-b6d2-ccedc78b81d2',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'petits pois',
  'cuillère à soupe',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '066da715-1420-484a-85b8-0cd0751e12be',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'persil ciselé',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd4e00e06-951b-455f-a439-285f6e4d5c6d',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'd’ail haché',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'af605d50-e675-4050-a6af-1aaeb12fb95d',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'sauce soja',
  'ml',
  45,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e23a5d61-df6d-474e-8cdf-02be16b96dfb',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3e32dc48-428a-4ac9-a4be-a9d23fce797e',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '814be6be-1145-4cce-a01a-16838b404d57',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  1,
  'Faites cuire le riz comme vous avez l’habitude de le faire',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a0e5b9af-3119-4c33-ba61-1721099ca9bf',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  2,
  'Coupez le poivron et les oignons en cubes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9020a962-becf-4a07-a3a4-6faf6a9c1d1d',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  3,
  'Pelez et coupez en cubes la carotte',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e0aaf305-7683-4f37-851a-ea53f617a454',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  4,
  'Dans une poêle, chauffez l’huile à feu vif',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c36c7b0e-3b1e-49fc-91b7-e8a414391985',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  5,
  'Saisissez le poivron, l’oignon et la carotte deux minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '079d2105-4bb9-4ad1-8c99-0bf93b2f1510',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  6,
  'Ajoutez les gambas, l’ail, le riz et la sauce soja',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '564a1228-9248-4026-9091-549a2bd2cea2',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  7,
  'Chauffez de 3 à 4 minutes, à feu vif, en remuant',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '71269273-3f52-4a17-a6c8-c0dd29478d08',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  8,
  'Rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9efba48e-d0d1-487d-b4c5-7dc5d00724cf',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  9,
  'Au moment de servir, ajoutez les petits pois et remuez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '944dc023-9980-4b69-9d22-b0c147ee20bb',
  'afc179b7-730e-4ca7-90dd-962590eb077f',
  10,
  'Saupoudrez de persil ciselé.',
  NULL
);


-- RECETTE 38: PRINTEMPS AUX GAMBAS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'PRINTEMPS AUX GAMBAS',
  'Recette fruits de mer : PRINTEMPS AUX GAMBAS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '49bd29c8-bc8f-456d-93b7-7310f3346510',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'paquet de feuille de riz',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '643bcae3-8cc8-4a6a-a2bd-239a9ae8ca94',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'paquet de vermicelles de riz',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'af04a367-ecd4-4ad0-b3ff-dea495eed0f6',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'queues de gambas cuites',
  'g',
  300,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '03e5c6f0-53d1-4300-88b1-9cb228766529',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'Des feuilles de salade',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3ee5775b-c7dd-44ca-a227-5bfdf05d48d5',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'persil ciselé',
  'brins',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a828da76-5faf-41dc-a3db-fa030956dc19',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'menthe ciselée',
  'feuilles',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1cc5ed00-70fa-4166-8c71-b391e24b65f4',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'carottes râpées',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '76a57b80-68db-422b-963d-46d56ac81620',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3e92905e-1142-4a30-930c-117022215fb4',
  '1c26d130-1808-4d63-9ec8-6c7cc42a4255',
  'poivre',
  'unité',
  1,
  NULL
);


-- RECETTE 39: TARTARE D’ECREVISSES, les écrevisses
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '00a662bc-4185-4184-915f-29d008084362',
  'TARTARE D’ECREVISSES, les écrevisses',
  'Recette fruits de mer : TARTARE D’ECREVISSES, les écrevisses',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '73aa73dc-30e1-46d4-8c84-1e697f1a4b36',
  '00a662bc-4185-4184-915f-29d008084362',
  'chair d’écrevisses cuites et hachées',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd08e5842-e0e6-4071-914a-eebb7c49d6d5',
  '00a662bc-4185-4184-915f-29d008084362',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7cf57769-f2e4-44b8-80ad-fad7fafa6cad',
  '00a662bc-4185-4184-915f-29d008084362',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '29881437-692f-4a9a-9d16-f76897ba0af8',
  '00a662bc-4185-4184-915f-29d008084362',
  '½ cuillère à café de piments en poudre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '491f017f-a8b3-44e8-845f-c8c9269c8773',
  '00a662bc-4185-4184-915f-29d008084362',
  'ciboulette',
  'botte',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '41208cc1-fd6d-49c0-88d5-83bec41553b5',
  '00a662bc-4185-4184-915f-29d008084362',
  'jus de citron vert',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd66686f6-2918-46d0-9e63-f7525c2e81f2',
  '00a662bc-4185-4184-915f-29d008084362',
  'persil',
  'brins',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3914ec4f-e697-40df-9dc1-eacfec1abf0f',
  '00a662bc-4185-4184-915f-29d008084362',
  'moutarde',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6ab24a39-addb-489e-ab82-e4ef7a1e5061',
  '00a662bc-4185-4184-915f-29d008084362',
  'jaunes d’œufs',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '56b02b8f-45de-496f-88d6-e1f87b2d3797',
  '00a662bc-4185-4184-915f-29d008084362',
  'd’huile',
  'ml',
  250,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a65c7f2b-db35-44d3-be5e-b1d38d935059',
  '00a662bc-4185-4184-915f-29d008084362',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '56d3b789-effa-47c8-b5c1-29c682b1d64e',
  '00a662bc-4185-4184-915f-29d008084362',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f3cb957a-f20b-48ba-8acb-9034305746b4',
  '00a662bc-4185-4184-915f-29d008084362',
  1,
  'Réalisez une mayonnaise en mélangeant la moutarde, le jus de citron vert, rajoutez 2 jaunes d’œufs et fouettez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5d300e47-cecd-4b4d-b46f-2de48aa8f9db',
  '00a662bc-4185-4184-915f-29d008084362',
  2,
  'Ajoutez ensuite l’huile en mince filet continu puis, dès que la mayonnaise prend, augmentez le filet d’huile',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4dfa9e09-4065-4eea-a6e5-5957f9f3cd11',
  '00a662bc-4185-4184-915f-29d008084362',
  3,
  'Ajoutez à la mayonnaise, le persil et le piment en poudre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd113c468-89fd-4c95-853c-feaf176b87f6',
  '00a662bc-4185-4184-915f-29d008084362',
  4,
  'Assaisonnez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '77c525fc-8a3f-4b31-a215-0445e869c65a',
  '00a662bc-4185-4184-915f-29d008084362',
  5,
  'Emincez l’oignon, la ciboulette et les tomates fraîches',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '78ed8197-339c-4207-aa62-c5d5b52a15c1',
  '00a662bc-4185-4184-915f-29d008084362',
  6,
  'Mélangez-les à la chair d’écrevisses',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '60e221df-2245-48c1-b871-ac2b1bc7d800',
  '00a662bc-4185-4184-915f-29d008084362',
  7,
  'Ajoutez la mayonnaise aux écrevisses et servez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f26c3c29-e2bb-4c1a-8533-6e1eeda42639',
  '00a662bc-4185-4184-915f-29d008084362',
  8,
  'Conservez votre tartare au frais avant de le déguster.',
  NULL
);


-- RECETTE 40: GUACAMOLE D’ECREVISSES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'GUACAMOLE D’ECREVISSES',
  'Recette fruits de mer : GUACAMOLE D’ECREVISSES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ab33990f-7055-49a5-b310-500e8a99ecca',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'queues d’écrevisse (sous vide, telles que les crevettes décortiquées)',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a8dde5ae-3eea-4a4a-854e-42331a797eac',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'avocats bien mûrs',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '270aec3b-92e8-4363-9f4b-542d1593c065',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'gouttes de citron',
  'pièces',
  5,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6b154325-c8d1-4d81-becc-f60987c7cc17',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'crème fraîches',
  'cl',
  25,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '09c32f8f-fb84-4e3c-9342-639c82493354',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3b1a8ca7-d90a-4884-944e-9e0835c8229c',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  1,
  'Ecrasez la chair des avocats',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '24aef94e-71fb-4f0a-8ad2-85b5fb295f9b',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  2,
  'Ajoutez quelques gouttes de jus de citron pour éviter que le mélange noircisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'de274511-41cc-4d90-a6af-d6c563ab45cd',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  3,
  'Assaisonnez et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5e82edaa-b0d5-488e-8893-ffaeaa65d0b1',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  4,
  'Répartissez le mélange obtenu dans le fond des verrines',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4d2568c4-bd2d-407b-a2a6-83e57d3080f5',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  5,
  'Recouvrez-les d’une couche généreuse de queues d’écrevisses',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '845f719f-9d6c-4dba-b144-21c753ca0ff7',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  6,
  'Battez la crème fraîche pour obtenir une chantilly',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b0102e84-ad37-4b9a-a32a-2f29b2ff16fe',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  7,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cb50ed82-3106-451b-85cd-29d52651f54b',
  'e8931cb8-c13d-4709-a58e-d96baee5248f',
  8,
  'Recouvrez au frais jusqu’au moment de servir.',
  NULL
);


-- RECETTE 41: CASSOLETTE DE MOULES, les moules
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'CASSOLETTE DE MOULES, les moules',
  'Recette fruits de mer : CASSOLETTE DE MOULES, les moules',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '55fb6e38-e55b-4244-8f17-dabec68e47d0',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'moules',
  'g',
  150,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f45ba2c1-5b27-4465-973f-15ac0831d689',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'vin blanc',
  'cl',
  25,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a404d452-e826-4072-93af-295230acad19',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'eb744e03-2058-4e02-816f-995fda481a55',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'beurre',
  'g',
  20,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '71e95217-f958-461a-9f3b-5a02eba2f790',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'persil ciselé',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd7596d32-3f09-4e72-92e5-9ecaf937e3c1',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'poireau',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '100b846d-f004-409a-ab3b-b39a07000d80',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'la sauce au citron',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '723ab985-406d-4aef-ac63-e87d9bea3343',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c1c2deff-f226-4b75-8499-b36d3333542f',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '569e9598-998a-4bdd-be99-b41096b4ae95',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  1,
  'Coupez le poireau en julienne et faites-le revenir dans 10 g de beurre pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0d076bb3-ebd8-46c4-89e2-18aa7a280485',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  2,
  'Ajoutez un ½ verre d’eau, salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1900464a-7f28-4ca4-a777-ea9b61fe7679',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  3,
  'Laissez cuire, 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7cba28fa-3aff-4412-930c-8aa6f409ca1f',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  4,
  'Pour les moules : ouvrez les moules et conservez leur eau dans un récipient',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2fe188b5-b8bd-402c-a127-e5076549b431',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  5,
  'Décortiquez la chair',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4b42bfc3-9eb3-47fe-a694-dcb2bdc689bc',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  6,
  'Dans une casserole, faites chauffer l’eau des moules et pochez-y celles-ci',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '95b63c45-7efe-4e48-9df2-e143f6bc0253',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  7,
  'Faites fondre le beurre restant et 1 oignon émincé dans une poêle',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f46d8f88-93d6-4cf6-be82-83ed0240606c',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  8,
  'Ajoutez les moules et laissez cuire, sur feu moyen, pendant 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e3dfa823-daf4-4815-b875-d132ca1a7998',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  9,
  'Ajoutez le vin blanc et le persil pendant la cuisson',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b9f7ebf5-c2cd-4ee9-95d5-4af01d6e7490',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  10,
  'Une fois les moules bien ouvertes, décortiquez-les et réservez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd207faa2-5f89-45a0-939c-1a9b7d474deb',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  11,
  'Dans les casseroles, mettez un lit de fondue de poireaux puis quelques moules et versez par-dessus un peu de sauce au citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '39ca2175-75e5-486b-bd7c-94e4aaa9d5a5',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  12,
  'Passez la préparation au four, pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f599fc41-ab68-4427-82a8-ee95cd2557ef',
  '13841c07-da46-4931-bf8a-cd6a2ce7db6f',
  13,
  'Bon appétit !',
  NULL
);


-- RECETTE 42: SPAGHETTI AUX MOULES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'SPAGHETTI AUX MOULES',
  'Recette fruits de mer : SPAGHETTI AUX MOULES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ead4f900-b1f8-4590-bdda-d29a79af2e97',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'moules',
  'g',
  40,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '11397255-6b6b-49f0-8001-2a5fde6a52cc',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'd’huile d’olive',
  'ml',
  15,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6d272c77-7b01-47c2-8179-9fb1957c2db2',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'd’ail',
  'gousse',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3c035612-901d-487a-9b97-faf68092d10b',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'piments hachés',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '03cdcb50-dcc6-49a8-bc4f-e9e418f3919c',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'tomates fraîches',
  'pièces',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e9b85fa2-4803-4feb-88cb-3bab32521398',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'persil ciselé',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a9ded5bf-0336-4a50-b742-479848460871',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'spaghetti',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8bbc00ac-f0c7-4761-879d-b98eef4ae677',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'sauce tomate fine',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '19e4edc2-b644-42e2-91ce-48cf9bcc28c5',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '45fbf90c-9ae5-4a25-8465-208a2b6acb99',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f394df3e-6d37-434d-977a-5d56b51cf621',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  1,
  'Rincez avec soin les moules, en utilisant une brosse pour enlever tout reste de sable',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '52f18080-04b4-4568-aabd-a4ebd1f0d4b5',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  2,
  'Jetez celles qui restent ouvertes même après avoir été « tapotées » délicatement et qui ne sont plus comestibles',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '68a91f06-8ec2-4516-9765-c646a7534728',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  3,
  'Mettez les moules dans une casserole avec un ½ L d’eau et laissez cuire à couvert, environ 7 min, de sorte à ce que toutes les moules soient ouvertes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ba8454f2-cfcc-48dc-b70b-611cd61cb35d',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  4,
  'Chauffez l’huile dans une sauteuse à feu moyen',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9c6624a3-e0c2-4d6e-ba31-f66ef8a3a3b8',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  5,
  'Ajoutez l’ail et le piment rouge',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '01ff438d-65d4-4293-a2e5-221b49c49ea0',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  6,
  'Laissez cuire, 1 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '96369896-11ce-4244-8829-f63999a6a7a5',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  7,
  'Ajoutez les tomates en dés, l’ail haché et le persil',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a185a048-1794-417b-b6ff-7e64f89b7816',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  8,
  'Salez, poivrez et continuer à cuire, à feu doux, pendant 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '064afb4b-5734-4ad5-ab66-ef30ccc7bea8',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  9,
  'Faites cuire les pâtes comme vous en avez l’habitude',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd99573c4-7681-4124-85c7-68c5b2041d35',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  10,
  'Sortez les moules de la casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0dee25ad-6369-41a5-85ce-2ee0f617ee16',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  11,
  'Filtrez le liquide à travers une passoire pour éliminer tout reste de sable et de coquille brisée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '451b09d2-198b-453d-9f9b-33eb580a0410',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  12,
  'Retirez les moules de leurs coquilles, en gardant quelques-unes pour décorer',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '29d2ff3d-60cc-4033-acf9-8028a36e93f4',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  13,
  'Mettez toutes les moules dans la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '124a6464-ebb6-4af8-b0d6-03fd56f52e49',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  14,
  'Ajoutez le liquide de cuisson des moules par portion préparée et chauffez le tout doucement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b384b4e6-8751-4a8f-829b-3013383a997e',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  15,
  'Versez les pâtes égouttées dans la sauteuse, ajoutez la sauce tomate fine et mélangez le tout',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1c573c8f-3328-48b4-9784-ac88a1edcbd3',
  '331b29e7-c810-4b43-adc0-d438d21e0674',
  16,
  'Servez dans les assiettes chaudes.',
  NULL
);


-- RECETTE 43: LANGOUSTE BRAISEE, les langoustes
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '6407a625-1192-476b-8b2c-348d24700899',
  'LANGOUSTE BRAISEE, les langoustes',
  'Recette fruits de mer : LANGOUSTE BRAISEE, les langoustes',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6314362f-8e51-4502-a593-c9f5a695b4e7',
  '6407a625-1192-476b-8b2c-348d24700899',
  'langoustes',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '32216823-beef-4b0a-b395-13975eb8c927',
  '6407a625-1192-476b-8b2c-348d24700899',
  'citrons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e9470374-2252-4519-ade1-ae208bdac9e5',
  '6407a625-1192-476b-8b2c-348d24700899',
  'd’oignon',
  'feuilles',
  3,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '74184c54-0ed3-45dd-9716-c82079ccb479',
  '6407a625-1192-476b-8b2c-348d24700899',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9409e40b-f05c-4312-8834-6e67bf312707',
  '6407a625-1192-476b-8b2c-348d24700899',
  'piment frais',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8ee2cccf-17d4-404e-bb72-d48ddbebcaab',
  '6407a625-1192-476b-8b2c-348d24700899',
  'd’huile',
  'cl',
  15,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5c181a5c-dea0-47df-a41c-4dda1b3849b9',
  '6407a625-1192-476b-8b2c-348d24700899',
  'd’ail',
  'gousses',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'da91d706-03b4-435c-b6b6-1a25387da4e2',
  '6407a625-1192-476b-8b2c-348d24700899',
  'vinaigre',
  'cuillère à soupe',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a8844e7f-13fa-4717-a820-985ce633c07d',
  '6407a625-1192-476b-8b2c-348d24700899',
  'petit bouquet de persil',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bedb6622-794a-4bb8-9bb9-52d4e1112cbf',
  '6407a625-1192-476b-8b2c-348d24700899',
  'piment en poudre',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e8ec933e-cb36-483f-9cce-dabe98adbeba',
  '6407a625-1192-476b-8b2c-348d24700899',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a42eade3-2ed2-4aef-b765-fcbde12307a1',
  '6407a625-1192-476b-8b2c-348d24700899',
  1,
  'Pelez et hachez très finement l’ail, les oignons et les feuilles d’oignon',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1741579e-2668-42f9-a323-6d24cc133a0b',
  '6407a625-1192-476b-8b2c-348d24700899',
  2,
  'Rincez le persil et hachez-le',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e3529705-5e05-4513-966a-e7f067a8a7c7',
  '6407a625-1192-476b-8b2c-348d24700899',
  3,
  'Pelez et épépinez le piment, puis hachez-le',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '77281d10-f14e-4561-b70a-9d915f3dbee3',
  '6407a625-1192-476b-8b2c-348d24700899',
  4,
  'Pressez les citrons et versez le jus dans un petit saladier',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5f4ec8b2-4664-4c5b-9d77-0e13c49d5770',
  '6407a625-1192-476b-8b2c-348d24700899',
  5,
  'Ajoutez tous les ingrédients de la marinade et 5 cl d’eau bouillante',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5ee45ceb-3ddb-4918-b452-02698dd303c2',
  '6407a625-1192-476b-8b2c-348d24700899',
  6,
  'Salez, poivrez puis mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'efa50c52-5983-4bbb-b2c0-6216b594e9d3',
  '6407a625-1192-476b-8b2c-348d24700899',
  7,
  'A l’aide d’un grand couteau tranchant, coupez les langoustes en deux dans le sens de la longueur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd1fbeca4-f0d6-4800-bbc9-5c7e6e5ac0fe',
  '6407a625-1192-476b-8b2c-348d24700899',
  8,
  'Badigeonnez la chair de marinade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1f3453ca-f05e-48d9-a117-a45f942a623e',
  '6407a625-1192-476b-8b2c-348d24700899',
  9,
  'Posez les langoustes côté carapace sur la grille de barbecue au-dessus des braises et faites-les griller pendant 10 minutes environ',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd8b0e0b5-f89f-44d0-b7b6-defadbc2e55e',
  '6407a625-1192-476b-8b2c-348d24700899',
  10,
  'Retournez-les, puis faites-les cuire, 5 à 8 minutes côté chair, en les arrosant de temps en temps de marinade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'dcef5d3e-a335-4a7a-b766-35bfac406f02',
  '6407a625-1192-476b-8b2c-348d24700899',
  11,
  'Servez aussitôt avec de l’alloco.',
  NULL
);


-- RECETTE 44: LANGOUSTE AUX AGRUMES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'LANGOUSTE AUX AGRUMES',
  'Recette fruits de mer : LANGOUSTE AUX AGRUMES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a599b46f-fda0-40ac-9fed-f06dd952f6b6',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'orange',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '0a5d42bd-f9ac-4f41-8f61-8a15ca9f1754',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'petites queues de langouste',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '52574ae5-c794-437f-b01b-d9f3eab5bc6d',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'd’huile d’olive',
  'cuillère à soupe',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '063f456f-9142-4c76-9be9-ba6cfd25bb2d',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'vinaigre aux fruits de la passion',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'fae65b40-771f-4c5b-94a0-6d4f9ee15126',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'laitue',
  'poignées',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '5f1f6150-c3e7-42cb-8480-2278a61ce910',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'ç soupe de persil ciselé',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a86a95f7-dcc1-40e6-afd5-81d26203b55c',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  'Sel',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2fc7b6f4-033d-4703-955f-8a8e404781b5',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  1,
  'Lavez les langoustes sous l’eau froide',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '48077bc3-d98d-4717-ae43-24ae2dd52aae',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  2,
  'Blanchissez-les, 15 min, dans de l’eau salée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '34cc0db9-990c-417c-a9b3-5028142e7f6b',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  3,
  'Coupez les queues de langouste à l’aide de ciseaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cc2027b3-d36c-478a-85ba-e47bbda99852',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  4,
  'Découpez les queues en tranches',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1f80207f-d0d8-4e3f-9300-5147d12b30b6',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  5,
  'Mélangez l’huile d’olive et le vinaigre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1066b313-355e-40ac-b19a-e3023a1b0d97',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  6,
  'Mettez une partie de la vinaigrette sur la salade',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '612f9769-8a6f-460c-932c-d7e142bc72aa',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  7,
  'Pelez à vif les oranges et coupez-les en deux, puis en tranches',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cf149db9-a0d5-4388-a99b-441d31f83166',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  8,
  'Déposez les quartiers sur la salade ainsi que les queues de langouste découpées en tranches',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '439a6879-8bd9-435f-a941-c2a1a1127aa0',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  9,
  'Versez le reste de vinaigrette sur les morceaux de langouste',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f407f3d6-af19-409e-9078-db3c4f7cd0ee',
  'ebcef19b-161c-475e-bfa2-9eaa7d16f904',
  10,
  'Décorez avec du persil et servez immédiatement.',
  NULL
);


-- RECETTE 45: SOUPES DE CRUSTACES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'SOUPES DE CRUSTACES',
  'Recette fruits de mer : SOUPES DE CRUSTACES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a0864f89-6d5a-4a35-b7c0-9150b91e5ace',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'crabes',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '47e0ae1f-318b-42f3-8d0c-71d641b5d3e6',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'grosses crevettes',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '06e78bc9-168f-441b-9e17-c055623a6813',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'langoustes',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '81b64eba-3046-4748-9c48-546a08677c60',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'gambas',
  'pièces',
  8,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2fc6b43f-c8f8-4ec8-a0e4-86824fce7fe8',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'moules',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a9a4649e-c383-476f-b0b9-dae05b46a9f0',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'huitres (facultatif)',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e342911e-e8d2-4412-a6cc-fb3a420defa9',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  '¼ L d’huile rouge',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '517aeca6-08aa-4088-9849-cf7e96ddfd2d',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'oignons',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'dd9188d2-0bdb-4589-991c-0c6c6864d886',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'd’ail',
  'gousses',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '51fb63f1-9e58-4d0c-8623-77fef08f502f',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'tomates fraîches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '183b065e-7177-4e7e-bb4b-b44d0f349489',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'piments frais',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8c1696fc-9909-42ec-a823-0fee2d609494',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'aubergines',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b9e18971-73c9-4be6-b983-d8a1d340baf6',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b86e3cf2-e74c-4ec8-9f8f-136e8033c85d',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e6ea215c-fc76-44c1-9552-6f3ae1330341',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  1,
  'Nettoyez tous les fruits de mer et mettez-les dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8a84fe21-dcb5-45db-adb1-ed3ec88a39d4',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  2,
  'Hachez finement l’ail et 1 oignon',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '81be56bf-d894-4879-a585-eb309fcda0e5',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  3,
  'Ajoutez la purée obtenue, le sel et le poivre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7b994baa-79c6-487b-8243-9215c3add8f0',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  4,
  'Laissez mijoter, 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8552219e-bb1f-4268-87a0-ce79c8534cbc',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  5,
  'Mouillez la préparation avec 1 L d’eau et portez à ébullition, 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '72a02283-8280-4791-a367-c1cf1953f3db',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  6,
  'Ajoutez l’huile rouge et le reste des légumes nettoyés',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bebd5612-32f7-4914-a64f-8db3f58abcc8',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  7,
  'Salez et laissez cuire, 20 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2ad07c7b-b738-41e2-8582-b84df0873883',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  8,
  'Rajoutez la purée de légumes à la sauce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6a6febe0-a1cd-4074-95fa-efd3fba0a4a2',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  9,
  'Laissez mijoter, 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '17d3620c-968b-45a9-9397-3884e1c83290',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  10,
  'Goûtez et rectifiez l’assaisonnement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e04fc651-d8c3-4792-a993-1914e8164cf9',
  '516df808-1a31-477e-83ab-c5488b4a2774',
  11,
  'Laissez mijoter 5 min et servez avec de l’attiéké.',
  NULL
);


-- RECETTE 46: CREME BRULEE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'b164701a-1760-4767-aca9-01b64d16002e',
  'CREME BRULEE',
  'Recette dessert : CREME BRULEE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Dessert',
  cat_dessert_id,
  ARRAY['Dessert']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '689ddda6-e23b-4235-8c07-52e4c39c6871',
  'b164701a-1760-4767-aca9-01b64d16002e',
  'jaunes d’œuf',
  'pièces',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f7708b9c-c6dc-400d-939e-4779c9115679',
  'b164701a-1760-4767-aca9-01b64d16002e',
  'crème liquide',
  'cl',
  40,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '76ab32df-3aca-487f-aa51-624f8a759046',
  'b164701a-1760-4767-aca9-01b64d16002e',
  'lait',
  'cl',
  25,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8290b326-f2db-40e4-8484-362f2f070425',
  'b164701a-1760-4767-aca9-01b64d16002e',
  'sucre en poudre',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c86f0009-b0bd-40e2-bd2b-bf4aec1740d3',
  'b164701a-1760-4767-aca9-01b64d16002e',
  'sucre roux',
  'cuillère à soupe',
  4,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c637b660-84d0-4db7-ade0-01401e360045',
  'b164701a-1760-4767-aca9-01b64d16002e',
  1,
  'Portez le lait à ébullition pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '88b603c0-542f-4a7e-af7a-5a57fd0e890a',
  'b164701a-1760-4767-aca9-01b64d16002e',
  2,
  'Ajoutez la crème et le sucre hors du feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f9c63e39-3e9d-47f9-b4df-852c7ff5ca24',
  'b164701a-1760-4767-aca9-01b64d16002e',
  3,
  'Ajoutez les jaunes d’œufs, mettez à chauffer tout doucement (surtout ne pas bouillir), puis versez dans 4 petits plats individuels',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '23ea5373-de35-44bf-899d-623eb4cd889c',
  'b164701a-1760-4767-aca9-01b64d16002e',
  4,
  'Enfournez et laissez cuire tout doucement, à 180°, environ 50 minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd8f33854-9fdd-4885-8fdd-d8d90c1d38de',
  'b164701a-1760-4767-aca9-01b64d16002e',
  5,
  'Laissez refroidir puis saupoudrez la crème avec du sucre roux et brûlez-le avec un petit chalumeau de cuisine',
  NULL
);


-- RECETTE 47: LA MARQUISE,
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'LA MARQUISE,',
  'Recette cocktail : LA MARQUISE,',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Cocktail',
  cat_cocktail_id,
  ARRAY['Cocktail']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b8b956f0-bab2-4c6b-a133-9b24c84a86cf',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'vin mousseux',
  'l',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a5ae6b9d-4491-4393-b0c8-bf8f7a4551a3',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'limonade',
  'l',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '40e160d2-2c9e-4c31-842c-12ae0ec3c3a0',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'sucre',
  'g',
  200,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '25ffb62d-6a38-4d2b-ae0e-d4de663926cf',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'rhum blanc',
  'cl',
  35,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '03c4f626-7ca7-4733-a348-e3cf6bc321c6',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'oranges coupées en quartiers',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1504744e-c8cc-4415-b4d2-2bdbf4294965',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  'citrons coupés en quartiers',
  'pièces',
  2,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a05cbfae-354c-4867-998d-7ccdd120f9ae',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  1,
  'Dans un grand saladier, versez le sucre et le rhum puis ajoutez les fruits',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2517e1aa-0f9d-47ea-8985-ec1f7fc06d3a',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  2,
  'Recouvrez le récipient d’un ^papier cellophane et laissez mariner, au frais, pendant deux jours',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '099f0005-9a11-40fe-90d0-33d5f0a8f145',
  '1d2007b2-46fa-43ee-988e-5920a10e4bd8',
  3,
  'Ajoutez la limonade et le vin mousseux juste avant de servir et dégustez votre cocktail marquise bien frais, décoré d’une rondelle d’agrume.',
  NULL
);


-- RECETTE 48: PAMPLEMOUSSES AUX CREVETTES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'PAMPLEMOUSSES AUX CREVETTES',
  'Recette fruits de mer : PAMPLEMOUSSES AUX CREVETTES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Fruits de Mer',
  cat_fruits_mer_id,
  ARRAY['Fruits de Mer']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6a24d808-f455-41e8-ad51-49b046746c90',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'pamplemousses',
  'pièces',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'f2d0cf0f-fd9d-49b1-b1f5-042dbd39e709',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'crevettes décortiquées précuites',
  'g',
  100,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '935894da-2127-439b-802c-37cf1b253b6b',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'tomates',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '86f7b6e4-b8b5-4878-b819-cd26c6ff54ca',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'citron',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '57e2e4ba-a55d-4486-9e5b-077ec07c4750',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'crème fraîche à 0% de matières grasses',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c866f19a-e135-4a25-be4d-96adf44df4d3',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'ketchup',
  'cuillère à soupe',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '54c991ca-8e9e-4bbe-9cd6-0b443d10fbf6',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'persil',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2eedb588-dd17-4986-99d0-2938a5cebf48',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '1e794432-311c-4797-88f5-2ba896b47f62',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  'poivre',
  'unité',
  1,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5c0faa8f-1f73-42b7-a31c-ea106e3116a2',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  1,
  'Coupez chaque pamplemousse au tiers de sa hauteur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3ea8084b-1fdd-4b97-aef9-8cdfe873d5a2',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  2,
  'Evidez-les et retirez-en la chair que vous couperez en petits morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '05e236cf-1200-4e18-9c8b-32f7c664eebb',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  3,
  'Incorporez-y les tomates coupées en dés ainsi que les recettes décortiquées',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '26a95566-81cc-4031-8ef8-a266a44f1e4f',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  4,
  'Versez la crème dans un saladier et mélangez-y le jus de citron, le ketchup et le persil haché',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1d572ba3-1f15-4625-8d6d-ba4267ca0f51',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  5,
  'Salez et poivrez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c6a46042-b0a0-4f66-8a3f-aa5a4b2cd5f3',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  6,
  'Mélangez bien cette sauce, puis ajoutez les morceaux de tomates, pamplemousses et crevettes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'eb447db5-1b02-483b-b542-655fd45faac7',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  7,
  'Remplissez-en les pamplemousses évidés ou servez dans une assiette',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3f00f3b9-b4a3-4bdc-a12c-4f64d78d1340',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  8,
  'Servez bien frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '90408d2a-868f-4a08-9783-10f77d0014c2',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  9,
  'Bienfaits : il préviendrait des maladies cardio-vasculaires en abaissant le taux de cholestérol',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '85b3998d-bfd5-472f-8812-2f416bd9fac3',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  10,
  'Blanc ou rose, le pamplemousse se consomme avec plusieurs recettes surtout pour les plats de cuisine minceur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '22e594b3-0ea1-4449-b8f4-3eacc999956d',
  '674ea1dd-2a95-4825-a4ca-30056d3774f3',
  11,
  'Le goût frais, tonique et légèrement amer se marie à merveille avec les crevettes.',
  NULL
);


-- RECETTE 49: TCHEP SENEGALAIS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'TCHEP SENEGALAIS',
  'Recette accompagnement : TCHEP SENEGALAIS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Accompagnement',
  cat_accompagnement_id,
  ARRAY['Accompagnement']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'c4aea377-9971-4761-a733-20f6e290d892',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'poissons frais (Barracuda, dorade, tilapia, etc)',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8ec295cb-4457-4cc2-b5a5-24ceaf600c5b',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'riz parfumé cassé (le riz siam)',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bfa3d958-f902-400b-858c-fa5eaf4a42b0',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'd’ail',
  'gousses',
  6,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a0d2d49a-7f5d-4a6f-9ee8-6c5bb80ccfa4',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'petit bouquet de persil',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2dc5a069-e2fc-410f-b1e5-9a86150a4b4c',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Piments',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd0a02bff-4702-4184-9399-665641f6015d',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'selon votre goût',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b7bf7dba-a669-4029-b007-b32b5ddb4c6b',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'poivron',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '7aeae86f-6527-42cf-af96-57ebd2caedc2',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Légumes aux choix (Citrouille',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a79b10fe-8c65-4bd9-9326-106110c8e089',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Aubergine',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9e861444-c6ef-4756-a4b2-49401ae470d8',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Choux',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8bed2417-ace5-4944-8b91-8095a33170b1',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Carotte',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'e5bd0872-759f-49ea-ab5d-e3c8ead23c2b',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Manioc',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b8b38719-8745-40e0-b8f4-cd927b0879a2',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'aubergine blanc)',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '402ed88f-f0a8-4686-917a-8f86d6be66f2',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'tomates fraiches',
  'pièces',
  2,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '44a73fc1-c463-4231-aaed-28643621b075',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'tomate concentrée',
  'g',
  150,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '663b7ec1-8114-4ca9-9609-ce9f58ab5e88',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'oignon',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'bd796776-4ae3-4ddb-a1ef-3beec2e4107a',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6ba0219a-4f09-4f26-b97d-28e817320709',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'selon votre goût',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'd72f99c2-4068-4963-b490-401b5d9660d4',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Une Feuille de laurier',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '161c2c93-0c56-4721-9462-f5c4566de011',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Quelques gombos et des feuilles d’oseille',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'ba373f1f-1ec3-4043-a520-3f92a68487ed',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'Cube de bouillon (Bio',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '70aff223-538e-4349-ad6c-dc1933f73bb8',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'fait-maison',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '9edcc08f-5f70-4cb6-b381-520700d9697c',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  'd’huile pour le riz',
  'ml',
  200,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c0c24251-1a34-465c-a2b4-e1c0ea5d8c2f',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  1,
  'Piler ensemble les gousses d’ail, les piments, le poivron et le persil',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '97e2f298-d2a8-449f-aea4-523fb77f8e0a',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  2,
  'Bien piler le mélange et diviser le en 2, sur une partie mettre un peu de sel, du poivre noir, le cube fait maison',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1fba99bd-9306-4e10-bf70-d789e0a17e75',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  3,
  'Faire des petits trous sur les poissons et introduire ce mélange dans les petits trous comme farce',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '161d053c-788d-46e9-a4b0-c4350f169700',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  4,
  'Chauffer l’huile et faire frire les morceaux de poisson, retirer et réserver',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f042a2b4-fee6-4649-9269-14add7a6523f',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  5,
  'Couper l’oignon et ajouter dans l’huile chaude, faire sauter jusqu’à ce qu’il devienne tendre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '37387b11-6f46-43ec-8ee2-6b01221df587',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  6,
  'Ajouter la tomate concentrée, les tomates fraîches écrasées et laisser cuire une quinzaine de minutes en remuant occasionnellement',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7458e08f-4615-4f99-8a74-d37f71f88f3f',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  7,
  'Ajouter la feuille de laurier, le reste du mélange de persil, un peu de poivre noir, un peu de cube fait maison et faire sauter quelques minutes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '236b753a-7805-4c14-8936-fc44bfc7f0be',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  8,
  'Ensuite mettre les légumes de votre choix (citrouille, carotte, choux, aubergines, manioc, gombo, le piment et l’aubergine), les morceaux de poisson frit et couvrir de 2 litre d’eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2ab57c53-971d-4f54-b857-0c0b913a9e64',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  9,
  'Laisser les légumes cuire complètement; Après cuisson retirer tous les légumes et les poissons',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0d3813f7-95a1-4010-84a6-036a64715a0d',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  10,
  'Laver le riz plusieurs fois et le faire cuire à la vapeur une quinzaine de minutes sur une marmite à la vapeur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '16b22f3d-dfe5-4ddd-8336-3b1da0a4b8db',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  11,
  'Retirer et mettre de côté',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fa1dfc65-9637-427c-a457-a91f879b3a1e',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  12,
  'Retirer une louche de la soupe et garder pour la sauce d’oseille',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8ced45c8-ab18-4c44-b563-c347f817b344',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  13,
  'Puis mettre le riz dans la soupe, ajouter du sel et du cube à votre goût',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4595e7b1-8bae-4021-abed-784a0ce663c9',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  14,
  'Réduire le feu et laisser le riz cuire complètement à feu doux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd0b3a24f-8c9a-4159-9f09-98b02f8c3fbb',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  15,
  'Dans une petite marmite, faire cuire les gombos et les feuilles d’oseille avec un peu d’eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0a40a26e-c530-4ee0-a7da-fceb06731ded',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  16,
  'Pilez le tout ensemble (gombo et oseille) puis mettez la soupe que vous avez réservée avec un peu de sel; retirer et mettre de côté',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '47c533d9-8190-454e-8bef-9626d3d0ff62',
  'b997081c-64dc-4673-8293-96e7739b89c7',
  17,
  'Servir le riz avec les légumes, le poisson et la sauce d’oseille.',
  NULL
);


-- RECETTE 50: BROCHETTES DE POULET
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '8777065d-5439-4941-8418-815aaa61e46f',
  'BROCHETTES DE POULET',
  'Recette traditionnel : BROCHETTES DE POULET',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Ingrédients
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '21ee1206-3b76-49ad-ab84-58022fd24dff',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'blanc de poulet',
  'kg',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a21f5d98-b437-46d6-a441-bf394286ad6a',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'Pour la marinade:',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '95452e2c-0b72-4f98-8946-a20dc547a336',
  '8777065d-5439-4941-8418-815aaa61e46f',
  '½ oignon rapee',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'b71e0173-50c1-48b4-9679-e5a0fe04fc7b',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'd’ail râpée',
  'gousses',
  4,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '41d2019f-9d41-4d12-a730-d877f71dad14',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'Epices au choix:',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '632c2cb4-f0f0-45c7-8099-a3cee517cd57',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'cc de gingembre en poudre',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '4be8aea9-66b0-4228-bd06-e1fa17e41115',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'cc de poivre noire',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '3a5596f2-e50b-45c5-9a92-b12c67364a89',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'cc de paprika',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '6c00fe2a-7aa8-4ec8-86cb-4fd077f494da',
  '8777065d-5439-4941-8418-815aaa61e46f',
  '½ cc de curry en poudre',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '943ab7c9-1ec9-4aef-9b4b-c957a471fb0a',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'Une pincée de curcuma',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '80b5422e-99c6-442a-bdf3-deba5b4be2de',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'facultatif',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '772eb2c3-e54d-4401-a917-8d9b95f8d832',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'moutarde',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '96190819-5a8a-4799-948e-6ea5b303aa29',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'jus de citron',
  'cuillère à soupe',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '2ec9c00f-cdff-4e9b-bdc4-8b7a05345d9e',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'Sel',
  'unité',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  '8cbc191c-53c4-43b6-8093-ab69be863ecc',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'cc de cube de bouillon bio',
  'pièce',
  1,
  NULL
);
INSERT INTO ingredients (id, recipe_id, name, unit, quantity, price_per_unit) VALUES (
  'a125795e-1779-4c76-8206-cf1307793449',
  '8777065d-5439-4941-8418-815aaa61e46f',
  'd’huile',
  'cuillère à soupe',
  2,
  NULL
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '46cb3f30-d0a5-41bc-9334-c3b0bc2ba0a0',
  '8777065d-5439-4941-8418-815aaa61e46f',
  1,
  'Dans un saladier, faire la marinade en mélangeant tous les ingrédients de la marinade ensemble',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '10896682-99c9-45e4-9e83-238534e1e453',
  '8777065d-5439-4941-8418-815aaa61e46f',
  2,
  'Mettre les cubes de poulet dans le saladier et bien mélanger',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bc55f659-8d09-4fb3-aae1-a7d7cc9a18fa',
  '8777065d-5439-4941-8418-815aaa61e46f',
  3,
  'Laisser mariner une heure',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3450bccc-13a9-474b-92ba-4243f4857fe2',
  '8777065d-5439-4941-8418-815aaa61e46f',
  4,
  'Mettre le poulet sur les brochettes, vous pouvez alterner avec les légumes de votre choix',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '57c0c6b6-d7e9-4bdb-9902-b9792f3e705c',
  '8777065d-5439-4941-8418-815aaa61e46f',
  5,
  'Faire chauffer une poêle antiadhésive, déposer les brochettes dessus et cuire chaque côté jusqu’à coloration dorée (5 min environ par côté)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c20d8f6e-f634-46a1-a314-71be0c7a28be',
  '8777065d-5439-4941-8418-815aaa61e46f',
  6,
  'Mettre le reste de la marinade au fur à mesure sur les brochettes (voir vidéo)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '379bd965-4e22-4682-9e8c-d8beb1c99a06',
  '8777065d-5439-4941-8418-815aaa61e46f',
  7,
  'Servir avec ce que vous voulez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '57b83813-2a0b-4660-b388-72e1961a9441',
  '8777065d-5439-4941-8418-815aaa61e46f',
  8,
  '^ AUTRES PLATS IVOIRIENS',
  NULL
);


-- RECETTE 62: LA SAUCE FEUILLE DE MANIOC (option pâte d'arachide)
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '3c120636-de75-4d71-9ae7-f87a509a51ad',
  'LA SAUCE FEUILLE DE MANIOC (option pâte d''arachide)',
  'Recette sauce : LA SAUCE FEUILLE DE MANIOC (option pâte d''arachide)',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '145cebe3-18de-4b36-9cb4-889c5b7cb65c',
  '3c120636-de75-4d71-9ae7-f87a509a51ad',
  1,
  'Les recettes à suivre pour les plats de bawin, gnonmi, couscous marocain et tajine',
  NULL
);


-- RECETTE 63: SMOOTHIE PROTEINE à la vanille et aux pois
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'd7955587-6ba8-4c9a-aea4-a06876f4b216',
  'SMOOTHIE PROTEINE à la vanille et aux pois',
  'Recette santé & bien-être : SMOOTHIE PROTEINE à la vanille et aux pois',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '08c6c70c-5c7e-4ed4-95e0-6fac1ff3fd58',
  'd7955587-6ba8-4c9a-aea4-a06876f4b216',
  1,
  'Placez taus les ingrédients sauf la glace dans un mixeur et mélangez',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8ce54932-4ab3-48d3-a568-8b7bfe73974e',
  'd7955587-6ba8-4c9a-aea4-a06876f4b216',
  2,
  'Ajoutez de la glace et mélangez à nouveau jusqu''à obtenir une consistance lisse.',
  NULL
);


-- RECETTE 64: HOUMOUS AU CITRON
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '4070dd9f-2f5c-4fd3-b9b1-724e52cefbed',
  'HOUMOUS AU CITRON',
  'Recette santé & bien-être : HOUMOUS AU CITRON',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e0505f5b-e562-45c2-9b4c-3cc00cb8204e',
  '4070dd9f-2f5c-4fd3-b9b1-724e52cefbed',
  1,
  'Mettez les oignons nouveaux, les pois chiches, le tahini, l''eau le jus et le zeste de citron, l''ail dans un mixeur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4c89b9c1-88c0-402e-b26c-2deab7fe2b5c',
  '4070dd9f-2f5c-4fd3-b9b1-724e52cefbed',
  2,
  'Ajoutez le sel et du poivre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cb8c8991-0f71-4cd4-9a32-9c96c7bfcf3b',
  '4070dd9f-2f5c-4fd3-b9b1-724e52cefbed',
  3,
  'Mixez 15 - 20 seconde jusqu’à ce que le mélange soit bien lisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '59d6b78a-282c-4fa7-b694-dbf3a5be1ab8',
  '4070dd9f-2f5c-4fd3-b9b1-724e52cefbed',
  4,
  'Servez le Houmous dans un bol avec quelques feuilles de menthe fraîche.',
  NULL
);


-- RECETTE 65: PUDDING DE CHIA (2 personnes)
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  'PUDDING DE CHIA (2 personnes)',
  'Recette santé & bien-être : PUDDING DE CHIA (2 personnes)',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f780820f-f4cd-46e4-8cac-f10fb8e1d306',
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  1,
  'Prenez 2 pots en verre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7f2f9260-248e-4b0d-8619-73fb0b704643',
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  2,
  'Placez 20 g de graines de chia, 120 ml de lait d''avoine et un peu d iextrait de vanille dans chaque bocal',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd4fc334a-1e9b-4edf-a3d7-aa91c7e0b985',
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  3,
  'Secouez le bocal pour mélanger les graines de chia',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '00ff6b1f-cf34-4ec6-b019-2d47d5731bf4',
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  4,
  'Réfrigérez au moins 2 heures ou toute la nuit',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5031e5be-771e-4fca-bf06-d266a7c41423',
  '23eb679c-2dc4-4ad3-bdca-9de9239ba829',
  5,
  'Agitez doucement et/ou remuez avant d''ajouter le reste des ingrédients.',
  NULL
);


-- RECETTE 66: LAIT D'ARACHIDE VANILLÉ (1 litre)
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  'LAIT D''ARACHIDE VANILLÉ (1 litre)',
  'Recette sauce : LAIT D''ARACHIDE VANILLÉ (1 litre)',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '153c122f-1c9d-4378-bbde-2ca3649aac76',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  1,
  'Étape 1 : Fendre les gousses de vanille en 2 et récupérer les graines à l''aide de la pointe d''un couteau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '97ba0768-9be3-4f31-b334-5289e2405830',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  2,
  'Étape 2 : Tremper les arachides dans l''eau avec les gousses et les graines durant toute une nuit',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f9f13f5e-2eea-4a25-8e39-1e8156ac7641',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  3,
  'Le lendemain retirer les gousses et verser les arachides ainsi que leur eau de trempage dans un mixeur ou un blender',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8c77a46c-8350-47c4-b5d3-8658d951567e',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  4,
  'Mixer jusqu''à l''obtention d''un liquide homogène',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4868428f-1265-4d2d-ac19-6c1a2be8373b',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  5,
  'Étape 3 : Passer la préparation au tamis en pressant bien pour faire ressortir un maximum de lait',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '20dc8e20-d0aa-4a84-a90d-30dcc5a638f1',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  6,
  'Verser dans des bouteilles en verre et conserver 3 jours maximum au frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '63e033d5-275f-4565-bc1d-307d6e90bb7c',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  7,
  'Secouer avant de servir',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '15f35210-d67e-4773-9d91-1a4747293492',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  8,
  'Bon à savoir : Le résidu issu du pressage est appelé okara',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1192b0e0-7b78-434c-a879-5a223dd24856',
  '32f7fd55-fbff-40ae-ba2f-b8b1751b4284',
  9,
  'Il est très riche et peut entrer dans l''élaboration de plusieurs recettes.',
  NULL
);


-- RECETTE 67: CHOCOLAT CHAUD AU PIMENT
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  'CHOCOLAT CHAUD AU PIMENT',
  'Recette boisson : CHOCOLAT CHAUD AU PIMENT',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4fdf5a2d-9eb7-4a54-b4b3-844f7bf69456',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  1,
  'Chocolat chaud au piment Étape I : Porter la crème et le lait à ébullition avec le piment',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '81c97bb6-2cc4-4a2f-99da-42289e1618aa',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  2,
  'Fors du feu, couvrir et laisser infuser pendant 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0830fbec-8339-42ec-aefb-ae4b60b18574',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  3,
  'Etape II : Hacher grossièrement le chocolat et l''ajouter dans le lait chaud',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'cff949aa-8388-4d74-a47d-cf9d1c10a6a0',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  4,
  'Remettre sur le feu et laisser épaissir à feu doux tout en mélangeant durant 5 à 10 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '80df4803-7bef-42bc-8171-c752ce015001',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  5,
  'Retirer du feu selon la consistance souhaitée (plus ou moins liquide) et servir aussitôt, dorée sur tous les côtés (ne pas dépasser 5 min au total)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '19f34940-c48e-487e-b364-483dfbc5bc66',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  6,
  'Réserver sur une assiette et parsemer de fleur de sel',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'e5a2ab61-34a2-47da-8bf0-2b74ec49b04c',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  7,
  'Recouvrir d''aluminium et laisser reposer 5 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '848179b6-aafc-47e7-b984-da384a117cf8',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  8,
  'Chocolat viennois aux épices africaines Étape III : Reprendre la version du chocolat chaud au piment et remplacer le piment par 2 c',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'fdbe17dd-85e3-4f9d-8685-572769ea183d',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  9,
  'à café le mélange d''épices',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '58bd13e2-5442-4221-88d2-c0f6fca0cca4',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  10,
  'Astuce : placer la crème et le saladier au freezer 15 min avant de commencer afin qu''ils soient bien froids',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '59170dd1-59e5-4977-aa57-dffb39024595',
  '1140c63a-e29f-47e9-9c4b-dd103656d443',
  11,
  'La chantilly est prête lorsque l''on retourne le saladier et qu''elle reste figée aux parois.',
  NULL
);


-- RECETTE 68: INFUSION GLACÉE BISSAP BLANC. ROSE. COROSSOL
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  'INFUSION GLACÉE BISSAP BLANC. ROSE. COROSSOL',
  'Recette boisson : INFUSION GLACÉE BISSAP BLANC. ROSE. COROSSOL',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '645b1e56-b60a-46a0-ad5e-079251508ce9',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  1,
  'Étape I : Rincer les fleurs d''hibiscus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4191f7a2-61e2-4d01-a68d-a8c12020b358',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  2,
  'Porter l''eau à ébullition et retirer du feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '45033b65-0862-4322-b893-ae8d0797422d',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  3,
  'Y faire infuser les fleurs, couvrir et compter 15 min',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'aff587b5-7ad4-4690-b906-37dfcb3f22ba',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  4,
  'Etape II : Passer le liquide au chinois et répéter l''opération 2 fois pour bien enlever les éventuels résidus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0c7ffe28-c51d-4de4-b739-d03b0211ce37',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  5,
  'Ajouter le sirop de sucre de canne, l''eau de rose et verser dans une carafe',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '2936cd2d-cdb4-4ed9-969d-b25c25095808',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  6,
  'Étape III : Couper le corossol en morceaux plus ou moins gros',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1337c51d-15df-4adc-a153-898e80583e30',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  7,
  'Ajouter ces morceaux à l''infusion et placer au réfrigérateur durant 1 nuit',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'abe614eb-05a4-48ac-b649-70a1ef3ef452',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  8,
  'Étape IV : Passer l''infusion au chinois et bien presser le corossol contre les parois afin de récupérer tout le jus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5d15f7f5-fcc2-474a-ad01-696b48be6e78',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  9,
  'Mélanger et déguster bien frais',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3ee643ef-d038-4713-a0bc-65c391031b88',
  '4b61dfda-da77-4633-bf89-7ce614f55d95',
  10,
  'Astuce : un corossol mûr est mou au toucher avec des épines bien écartées',
  NULL
);


-- RECETTE 69: JUS DE BISSAP À LA FLEUR D'ORANGER
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '2be13487-eaa3-4921-a420-e911ad306e85',
  'JUS DE BISSAP À LA FLEUR D''ORANGER',
  'Recette boisson : JUS DE BISSAP À LA FLEUR D''ORANGER',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1df6a316-a3d7-45f8-b78b-e2af95e09b86',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  1,
  'Étape I : Rincer les fleurs d''hibiscus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ccb8fdcd-039f-4c2b-838a-9020ceaf367f',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  2,
  'Porter l''eau à ébullition et retirer du feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3646b00b-9023-4e69-a4da-0e179a8e3b9e',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  3,
  'Y faire infuser les fleurs avec la menthe préalablement rincée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'b918a8f9-c572-4702-a8c0-c3b9275329e9',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  4,
  'Couvrir et laisser complètement refroidir',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1a30be5d-baf3-46d0-9949-99b7e6ffca95',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  5,
  'Etape II : Retirer la menthe et passer le liquide au chinois',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3e960e94-a245-47c4-b4b7-173570a4f0ea',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  6,
  'Répéter l''opération 2 fois pour bien enlever les éventuels résidus',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '67c0ff02-d8a9-410f-b748-37a4977203ae',
  '2be13487-eaa3-4921-a420-e911ad306e85',
  7,
  'Incorporer le sucre et mélanger jusqu''à ce qu''il soit complètement dissous Étape III : Aromatiser le jus de bissap avec la fleur d''oranger, mélanger et réserver au frais.',
  NULL
);


-- RECETTE 70: JUS DE GINGEMBRE PASSION
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  'JUS DE GINGEMBRE PASSION',
  'Recette boisson : JUS DE GINGEMBRE PASSION',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '59cbf1e1-32d5-43a9-965e-17d2af6948de',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  1,
  'Etape I : Rincer, éplucher et découper le gingembre en morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'de9df81e-9f3a-4688-99e8-cacb7b7bba17',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  2,
  'Rincer les fruits de la passion',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'acefe050-8a27-4755-90f3-5b0b401a0f45',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  3,
  'En prendre 5, les couper en 2 et récupérer la pulpe à l''aide d''une cuillère',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'a9cf59a8-a82d-4d03-bab8-9d9a0185d06f',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  4,
  'Étape II : Mixer le gingembre avec la pulpe des fruits de la passion',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bfb89a4b-5d3c-4427-aba6-118014490e4a',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  5,
  'Placer dans un saladier et recouvrir avec l''eau',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd5ff4550-9318-4970-8bd7-f86323031054',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  6,
  'Bien mélanger et laisser macérer au moins 1h',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'bf32e61b-9660-4cfd-bbcf-e28bc76d28a3',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  7,
  'Étape III : Passer la préparation au chinois afin de la filtrer',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd2c721bf-cf82-4fdb-aa52-a20535e12331',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  8,
  'Ajouter ensuite la pulpe du fruit de la passion restant, le sucre et le sucre vanillé',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '43e6278b-786f-4222-9e91-817f6972f31a',
  'ffa24adb-adea-45a0-85a3-5bde218f4a02',
  9,
  'Remuer pour dissoudre complètement les sucres puis réserver au frais.',
  NULL
);


-- RECETTE 71: JUS DE PAPAYE. FRAMBOISE. PAMPLEMOUSSE ROSE.
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'a723a266-0b12-4763-a405-851a0e091506',
  'JUS DE PAPAYE. FRAMBOISE. PAMPLEMOUSSE ROSE.',
  'Recette boisson : JUS DE PAPAYE. FRAMBOISE. PAMPLEMOUSSE ROSE.',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c32266f3-e51d-42fb-9957-2916ff19fc80',
  'a723a266-0b12-4763-a405-851a0e091506',
  1,
  'Étape l : Prélever la pulpe de la papaye à l''aide d''une cuillère',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '148f456d-122f-40e6-9b1d-5ebe01f722e2',
  'a723a266-0b12-4763-a405-851a0e091506',
  2,
  'Étape II : Extraire le jus de la papaye et des framboises à l''aide d''une centrifugeuse ou d''un extracteur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '93e1e4d4-72e1-4646-b2c4-8550e4ce66e6',
  'a723a266-0b12-4763-a405-851a0e091506',
  3,
  'Ajouter le jus de pamplemousse et le jus de citron vert',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1f1e6ad9-a593-412b-afa8-90293c679e14',
  'a723a266-0b12-4763-a405-851a0e091506',
  4,
  'Étape III : Bien mélanger, verser dans des verres et servir avec des glaçons.',
  NULL
);


-- RECETTE 72: JUS DE FOLONG. POIRE. DATTE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'e0534da8-96cb-4cd7-b11e-cfeb9ad18c47',
  'JUS DE FOLONG. POIRE. DATTE',
  'Recette boisson : JUS DE FOLONG. POIRE. DATTE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '0e90c27a-651e-4983-b663-0661a7bffc0b',
  'e0534da8-96cb-4cd7-b11e-cfeb9ad18c47',
  1,
  'Étape I : Dénoyauter les dattes',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '3314491b-bbc1-4dbb-8367-9d99bf06c0a5',
  'e0534da8-96cb-4cd7-b11e-cfeb9ad18c47',
  2,
  'Étape II : Extraire le jus des aliments à la centrifugeuse ou à l''extracteur',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c8403874-5615-4334-850a-86241b23fed2',
  'e0534da8-96cb-4cd7-b11e-cfeb9ad18c47',
  3,
  'Étape III : Bien mélanger, verser dans des verres et servir avec des glaçons.',
  NULL
);


-- RECETTE 73: SMOOTHIE BANANE BEURRE DE CAJOU
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'd50d537b-cc6f-47cf-9bf0-aedb8478d633',
  'SMOOTHIE BANANE BEURRE DE CAJOU',
  'Recette santé & bien-être : SMOOTHIE BANANE BEURRE DE CAJOU',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Santé & Bien-être',
  cat_sante_id,
  ARRAY['Santé & Bien-être']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '00b2e380-9f65-4c16-9771-fd6594624d7e',
  'd50d537b-cc6f-47cf-9bf0-aedb8478d633',
  1,
  'Étape I : Peler la banane et la découper en gros morceaux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '21cbd5c4-a55e-43b2-b136-65338a634ab5',
  'd50d537b-cc6f-47cf-9bf0-aedb8478d633',
  2,
  'Étape II : Mettre la banane, le lait et le beurre de cajou dans un mixeur ou un blender',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '616d81f7-23b2-4dd3-890d-af5f2ad28fb7',
  'd50d537b-cc6f-47cf-9bf0-aedb8478d633',
  3,
  'Étape III : Mixer jusqu''à l''obtention d''un mélange lisse, verser dans des verres et servir aussitôt.',
  NULL
);


-- RECETTE 74: SMOOTHE MANGUE NZUNZIBALI
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  'SMOOTHE MANGUE NZUNZIBALI',
  'Recette boisson : SMOOTHE MANGUE NZUNZIBALI',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '579d0bd5-2a21-4c9d-8d9b-06f01f5eb921',
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  1,
  'Étape I : Rincer la mangue et les nzunzibalis',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '41c38f68-f67b-4ff0-b910-e165d56cd77f',
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  2,
  'Éplucher la mangue et récupérer la chair',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ee515673-3c93-45ea-a3ad-3bedb0654785',
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  3,
  'Étape II : Mettre la mangue, les nzunzibalis et le lait dans un mixeur ou un blender',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'd08ea8ad-66ca-41e4-9f32-1c063133648d',
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  4,
  'Mixer jusqu''à l''obtention d''un mélange lisse puis passer au chinois',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ae06d649-600a-4e2a-869d-38931ec89cea',
  'a8e87ef9-e42f-4b30-8b0d-79cf82b740e8',
  5,
  'Étape III : Verser dans des verres et servir bien frais.',
  NULL
);


-- RECETTE 75: MILKSHAKE DE BOUYE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'c8b927cc-6852-489c-a16d-ff8e9df85388',
  'MILKSHAKE DE BOUYE',
  'Recette boisson : MILKSHAKE DE BOUYE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Boisson',
  cat_boisson_id,
  ARRAY['Boisson']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '8e9fdf0c-d551-4a0b-9613-758f431c11d9',
  'c8b927cc-6852-489c-a16d-ff8e9df85388',
  1,
  'Étape I : Mettre l''ensemble des ingrédients dans un mixeur ou un blender',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '73c92e79-99cb-406e-a7f3-0cdd2cab42f2',
  'c8b927cc-6852-489c-a16d-ff8e9df85388',
  2,
  'Étape II : Mixer jusqu''à l''obtention d''une consistance mousseuse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '5f7b05b7-4344-461a-b191-c550ef303346',
  'c8b927cc-6852-489c-a16d-ff8e9df85388',
  3,
  'Étape III : Verser dans des verres et servir aussitôt avec une paille.',
  NULL
);


-- RECETTE 76: BEURRE D'ARACHIDES AUX ÉCLATS D'ARACHIDES
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '250900a7-626f-4111-9a7b-9286adffbfa9',
  'BEURRE D''ARACHIDES AUX ÉCLATS D''ARACHIDES',
  'Recette sauce : BEURRE D''ARACHIDES AUX ÉCLATS D''ARACHIDES',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Sauce',
  cat_sauce_id,
  ARRAY['Sauce']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '994f14cb-a47d-4c32-be6e-b0ca72e438f4',
  '250900a7-626f-4111-9a7b-9286adffbfa9',
  1,
  'Etape I : Mixer au robot 300g d''arachides avec l''huile jusqu''à l''obtention d''une pâte homogène et lisse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '507881be-8bf4-472f-b5a1-6d695fca947b',
  '250900a7-626f-4111-9a7b-9286adffbfa9',
  2,
  'Etape II : Concasser les 20g d''arachides restant et les incorporer à la pâte',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '31ff8500-12cb-4827-8282-0dde02ca0e9b',
  '250900a7-626f-4111-9a7b-9286adffbfa9',
  3,
  'Étape III : Conserver le beurre d''arachide dans un pot stérilisé.',
  NULL
);


-- RECETTE 77: CONFITURE FRAISE.
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  'CONFITURE FRAISE.',
  'Recette traditionnel : CONFITURE FRAISE.',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '06722375-ccb3-4184-9c70-48ea931efa87',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  1,
  'Étape I : Laver, équeuter et découper les fraises en deux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '451f4322-3bb6-4d37-9578-6171e3a43b19',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  2,
  'Les recouvrir de sucre et de jus de citron',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '69732f1f-a43e-425b-9bcd-7e39406ee7dd',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  3,
  'Mélanger puis laisser macérer durant 1h à température ambiante sous un torchon',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '18cc7f40-1b2a-4465-8ff8-13f5c1d083eb',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  4,
  'Étape II : Porter les fraises à ébullition sur feu vif puis ajouter le vinaigre balsamique et le poivre',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7d54a06b-2cb6-4ffc-80be-006ea1e51e55',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  5,
  'Lorsque toute la surface bout, baisser le feu et laisser cuire à feu doux pendant 15 min en mélangeant sans cesse',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f18daa92-0dfc-457a-8644-a90178e14abf',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  6,
  'Étape III : Retirer la confiture du feu et enlever la mousse éventuelle sur le dessus avec une écumoire',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'ae9d3668-2dbb-4d54-a723-123cb90cb392',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  7,
  'Étape IV : Mettre la confiture dans des pots stérilisés et retourner jusqu''à refroidissement complet (cela est nécessaire pour une bonne conservation)',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '47d831e0-7b09-4360-82f1-7b344d046aaf',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  8,
  'Astuce : vérifier la consistance de la confiture en mettant une cuillère de confiture chaude sur une assiette froide',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '44fa5e84-62f7-406f-aa06-3b392bfc9246',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  9,
  'Laisser refroidir puis incliner l''assiette',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f6c9024b-28d0-452a-91fc-17148b300743',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  10,
  'Si la confiture accroche c''est qu''elle est prête',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9e75fe2b-a49f-4bdc-9606-f32f0ec70a3b',
  '5e777462-8593-40f8-b5a4-21ac15a11e9c',
  11,
  'Dans le cas contraire, la remettre à cuire pendant quelques minutes.',
  NULL
);


-- RECETTE 78: PÂTE DE TOFFEE
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  'PÂTE DE TOFFEE',
  'Recette traditionnel : PÂTE DE TOFFEE',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'be2a799f-c2a8-4bc1-85c1-7477362ece76',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  1,
  'Étape I : Placer la boîte de lait concentré sucré dans une casserole',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9e049156-75d0-45c2-9a32-7f1f3d1184c8',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  2,
  'Remplir d''eau jusqu''à ce que l''eau dépasse la boîte d''environ 1 cm',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '84e5fcd7-f562-4f3c-b717-9ff2fdac306a',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  3,
  'Étape II : Faire fremir pendant 3h45 en rajoutant de l''eau environ toutes les 30 min afin que la boîte soit toujours immergée',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'c77f796b-1fe3-4939-b436-fd367bbe14e1',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  4,
  'Vider l''eau et laisser complètement refroidir avant d''ouvrir',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '51b17909-0a49-477b-959e-efbc53d723c9',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  5,
  'Étape III : Fouetter pour obtenir un mélange homogène',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7dae8fd6-4e72-4eda-9217-c26e15b0f762',
  '40022fd6-23f5-46dc-a02d-9a2276d0fd01',
  6,
  'Conserver dans un pot stérilisé.',
  NULL
);


-- RECETTE 79: PÂTE À TARTINER D'ATANGAS
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  'PÂTE À TARTINER D''ATANGAS',
  'Recette traditionnel : PÂTE À TARTINER D''ATANGAS',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '51a8d003-4b27-4ffe-88d0-293ab9696d11',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  1,
  'Étape I : Porter à ébullition une casserole d''eau puis la retirer du feu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '48e35cf4-e260-4e42-b3e4-b0d1b330200a',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  2,
  'Étape II : Rincer les atangas et les plonger dans l''eau chaude',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6a147629-098a-4e3e-be6a-4e5125f5cab0',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  3,
  'Laisser reposer 10 min à couvert',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'f88f64c8-351e-4bce-af32-29c3435c8981',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  4,
  'Égoutter, peler et récupérer la chair',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '4bd8a1bc-5cbb-4d74-9a26-c9b144d85cc7',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  5,
  'Etape III : Mixer la chair des atangas avec le miel et la crème jusqu''à l''obtention d''un mélange homogène',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '9555f05f-e28d-4d58-a1a6-d67175de33bb',
  'e48458e0-a773-4e8c-ae58-39b37d4a76c9',
  6,
  'Étape IV : Conserver au frais dans un pot stérilisé.',
  NULL
);


-- RECETTE 80: LEMON CURD AU POIVRE DU KIVU
INSERT INTO recipes (id, title, description, image, price, time, calories, category, category_id, tags) VALUES (
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  'LEMON CURD AU POIVRE DU KIVU',
  'Recette traditionnel : LEMON CURD AU POIVRE DU KIVU',
  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&q=80&w=800',
  3500,
  '45 min',
  '450 kcal',
  'Traditionnel',
  cat_traditionnel_id,
  ARRAY['Traditionnel']::text[]
);

-- Étapes de préparation
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '6c93d5b7-2f33-424f-9c52-9c8a3c5e7381',
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  1,
  'Étape I : Mélanger au fouet les œufs, les jaunes et le sucre jusqu''à ce que le mélange devienne crémeux',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '1edd9004-4e9f-4d57-839f-b4cdfbd14467',
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  2,
  'Ajouter le zeste, le jus de citron ainsi que le poivre du Kivu',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '96d6c798-6cfd-4ced-8f77-7a502f09426c',
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  3,
  'Étape II : Faire cuire au bain-marie pendant 5 min jusqu''à ce que la crème épaississe',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  'dbd75166-fa3c-4446-bbfd-4c6681ceccce',
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  4,
  'Laisser refroidir complètement puis ajouter le beurre en petits morceaux et mixer',
  NULL
);
INSERT INTO preparation_steps (id, recipe_id, step_number, description, duration) VALUES (
  '7bca40b5-612d-460c-b22c-3a79bb620984',
  '645cd8db-e539-4b4e-9707-9f934f6d936f',
  5,
  'Étape III : Conserver au frais dans un pot stérilisé.',
  NULL
);


END $$;