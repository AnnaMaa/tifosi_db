USE tifosi;

-- Insertion des marques
INSERT INTO marque (nom_marque) VALUES
('San Pellegrino'),
('Coca-Cola'),
('Fanta');

-- Insertion des boissons
INSERT INTO boisson (nom_boisson, volume_ml, prix, id_marque) VALUES
('San Pellegrino Citron', 330, 2.50, 1),
('Coca-Cola Classique', 330, 2.00, 2),
('Fanta Orange', 330, 2.00, 3);

-- Insertion des ingrédients
INSERT INTO ingredient (nom_ingredient) VALUES
('Jambon'),
('Mozzarella'),
('Tomates séchées'),
('Basilic'),
('Roquette'),
('Pesto'),
('Parmesan');

-- Insertion des focaccias
INSERT INTO focaccia (nom_focaccia, prix) VALUES
('Focaccia Jambon Mozza', 7.90),
('Focaccia Végétarienne', 6.90);

-- Liaison focaccia-ingredient
-- Focaccia 1 : Jambon, Mozzarella, Basilic
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
(1, 1),  -- Jambon
(1, 2),  -- Mozzarella
(1, 4);  -- Basilic

-- Focaccia 2 : Tomates séchées, Roquette, Pesto, Parmesan
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
(2, 3),  -- Tomates séchées
(2, 5),  -- Roquette
(2, 6),  -- Pesto
(2, 7);  -- Parmesan
