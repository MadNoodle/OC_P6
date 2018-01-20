



INSERT INTO fournisseur
( supplierId, nom, commune, codepostal, adresse, contact) 
VALUES
(1,'SuperLegumes',	    'Rungis',	77000,	'4 allée des platanes',	'Paul Martin'),
(2,'France Boisson',	'Paris',	75018,	'45 boulevard Ney',	    'Georges Dupont'),
(3,'Viva Italia',	    'Meudon',	92000,  '12 rue de la cote',    'Marc Durant'),
(4,'Le boucher',	    'Paris',	75004,	'24 rue Saint Antoine',	'Grégoire Labille'),
(5,'Fromager',	        'Paris',	75008,	'4 rue Castex',	        'Olivier Fau'),
(6,'Moulin du chat',	'Paris',	75014,	'2 rue des graviers',	'paul le boulanger');

INSERT INTO ingredient 
(ingredientId,nomingredient, ingredientquantity, isavailable, supplierid) 
VALUES
(1,    'tomate',	        200,	true,	1),
(2,  'farine',           500,	true,	6),
(3,  'mozzarella',	    200,	true,	3),
(4,  'gruyère',	        200,	true,	5),
(5, 'gorgonzola',	    200,	true,	3),
(6, 'jambon',	        200,	true,	4),
(7,  'jambon sec',	    100,	true,	4),
(8, 'viande hachée',	100,	true,	4),
(9, 'parmesan',	        200,	true,	5),
(10,'pepperoni',	    100,	true,	3),
(11, 'roquette',	        150,	true,	1),
(12, 'champignon',	    200,	true,	1);

INSERT INTO pizza 
(pizzaId, PizzaName,  isavailable, prixunitaire, tpsPrepa) 
VALUES
(1,'Reine',	        true,	10.90,  '00:20:00'),
(2,'Margarita',		true,	10.90,  '00:20:00'),
(3,'Orientale',		true,	12.90,  '00:20:00'),
(4,'Pepperoni',		true,	12.90,  '00:20:00'),
(5,'Chèvre Miel',		true,	12.90,  '00:20:00'),
(6,'Veggie',          true,	14.90,  '00:20:00'),
(7,'4 fromages',		true,	14.90,  '00:20:00'),
(8,'Saumon',          true,	14.90,  '00:20:00'),
(9,'Hawaienne',		true,	14.90,  '00:20:00');

INSERT INTO ingredientlist 
(ingredientid, quantity, pizzaId) 
VALUES
(1,	3,	2),
(2, 5,  2),
(3, 3,  2),
(1,	3,	1),
(2, 5,  1),
(3, 3,  1),
(6, 1,  1),
(12,2,  1),
(1,	3,	3),
(2, 5,  3),
(3, 3,  3),
(7, 2,  3),
(10,3,  3);

INSERT INTO recette (pizzaId,stepid, step) 
VALUES
(1,1,	'Faire la pate'),
(1,2,	'Etaler le coulis de tomate'),
(1,3,	'Mettre 50 grammes de mozzarella'),
(1,4,	'Déposer des copeaux de jambon'),
(1,5,	'Déposer une poignée de champignons'),
(1,6, 'Mettre au four à 220°C / 10 minutes'),
(1,7,	'Saupoudrer d Origan'),
(2,1,	'Faire la pate'),
(2,2,	'Etaler le coulis de tomate'),
(2,3,	'Mettre 50 grammes de mozzarella'),
(2,4,	'Mettre au four à 220°C / 10 minutes'),
(2,5,	'Saupoudrer d Origan'),
(3,1,	'Faire la pate'),
(3,2,	'Etaler le coulis de tomate'),
(3,3,	'Mettre 50 grammes de mozzarella'),
(3,4,	'Déposer des copeaux de jambon'),
(3,5,	'Déposer des tranches de Chorizo'),
(3,6,	'Mettre au four à 220°C / 10 minutes'),
(3,7,	'Saupoudrer d Origan');

INSERT INTO drink
(drinkId,prixunitaire, nom, drinkquantity, isavailable, supplierid)
VALUES
(1,1.50,	'Coca Cola 33cl',	    200,	true,	2),
(2,1.50,	'Coca Cola Zero 33cl',	200,	true,	2),
(3,	1.50,	'Coca Cola Light 33cl',	200,	true,	2),
(4,1.50,	'Sprite 33 cl',	        200,	true,	2),
(5,	1.50,	'Nestea',	            200,	true,	2),
(6,	2.70,	'Heineken 25cl',	    200,    true,	2),
(7,3.50,	'Desperados 33cl',	    200,	true,	2),
(8,2.70,	'Vittel 50cl',	        200,	true,	2),
(9,4.00,	'San Pellegrino 25cl',	200,	true,	2);



INSERT INTO Boutique 
(shopId,commune,adresse,codePostal) 
VALUES 
(1,'Paris','58 rue de Belleville',  75020),
(2,'Paris','113 rue Cambronne',     75015),
(3,'Paris','23 rue Claude Tillier', 75012),
(4,'Paris','47 rue Gay Lussac',     75005),
(5,'Paris','98 rue Saussure',       75017);

INSERT INTO Client
(client_Id,login, password, isconnected, nom, prenom, telephone, commune, adresse, codepostal, email, shopid, zonelivraison)
VALUES
(1,'client1',  'eiffel',   true,   'Picasso',  'Pablo', '01.45.45.45.45',   'Paris',    '1 rue des cubistes',       75001,'ppicasso@gmail.com',	1,	true),
(2,'client2',	'foot',	    true,	'Tahar',	'Edmond',	'01.45.45.45.45','Paris',	'30 boulevard Malsherbes',	75017,'	etahar@gmail.com',	2,	true),
(3,	'client3',	'basket',	true,	'Bernard',	'Romain',	'01.45.45.45.45','Paris',	'14 rue Valadon',	        75007,	'rbernard@gmail.com',	3,	true),
(4,'client4',	'bowling',	true,	'Boissier',	'Clara',	'01.45.45.45.45','Paris',	'60 rue marcadet',	        75018,	'mboissier@gmail.com',	2,	false),
(5,	'client5',	'ecume',	false,	'Vian',	    'Boris',	'01.45.45.45.45','Paris',	'45 rue de la plaine',	    75013,	'bvian@gmail.com',	3,	true),
(6,	'client6',	'sabre',	true,	'De la Vega','Diego',	'01.45.45.45.45','Paris',	'50 boulevard du cheval',	75019,	'zorro@gmail.com',	3,	true),
(7,	'client7',	'petitdoux',true,	'Gates',	'Bill',	    '01.45.45.45.45','Neuilly',	'78 rue des platanes',	    92000,	'bgates@gmail.com',	1,	true);
INSERT INTO employe
(employe_id, login, password, fonction, nom, prenom, isconnected, commune, adresse, codepostal) 
VALUES
(0,	'noOne',	    'no',	    'no',	    'noOne',	'noOne',     	    true	,'noWhere',	'noWhere',	        0),
(1,	'pdubois',	    'test',	    'livreur',	    'Dubois',	'Paul',     	    true	,'Paris',	'37 rue de Sèvres',	        75006),
(2,	'onguyen',	    'fleur',	'commercial',	'Nguyen',	'Océane',   	    true	,'Paris',	'350 rue Lecourbes'	,       75015),
(3,	'cbourgeois',	'scooter',	'cuisinier',	'Bourgeois','Christophe',	    true,	'Paris'	,   '40 rue des Thermopyles',	75014),
(4,	'fbisson',	    'jeuVideo',	'livreur',	    'Bisson',	'François', 	    true,	'Paris'	,'  9 rue Maison Dieu',	        75019),
(5,	'mmoercant',	'afteffe',	'commercial',	'Moercant',	'Mikael',   	    true,	'Asnieres',	'12 rue Salengro',	        92000),
(6,	'bbauwens',	    'oie',	    'cuisinier',	'Bauwens',  'Béatrice', 	    true,	'Paris',	'35 rue d Avron',	        75020),
(7,	'hallart',	    'abeille',	'livreur',	    'Allart',	'Hugues',   	    true,	'Ermont',	'12 avenue des marroniers',	95230),
(8,	'jroig',	    'moto',	    'cuisinier',	'Roig',	    'Jean',     	    true,	'Versailles','1 boulevard Royal',	    78000),
(9,	'ggaillard',	'geek',	    'livreur',	    'Gaillard',	'Gilles',   	    true,	'Paris',	'141 rue de Charonne',	    75003);



INSERT INTO equipe 
(shopid, employe_id) 
VALUES
(1,	1),
(1,	2),
(1,	3),
(2,	4),
(2,	5),
(2,	6),
(3,	7),
(3,	8),
(3,	9);


INSERT INTO Commande
(client_Id,livraison, isPaid,pizzaQuantities,pizzaOrders,drinkQuantities, drinkOrders,employe_inCharge_id,status)
VALUES
(1, true, true, '1', '1', 1,8,1,'Livraison'),
(4, true, true, '3', '3', 2,1,3,'Préparation'),
(6, true, false, '1', '5', 4,1,6,'Préparation'),
(2, true, true, '1', '2', 4,1,2,'Confirmée');

INSERT INTO Commande
(client_Id,livraison, isPaid,pizzaQuantities,pizzaOrders,drinkQuantities, drinkOrders,employe_inCharge_id,status)
VALUES
(1, true, false, '1', '1', 1,8,0,'Livrée'),
(1, true, true, '3', '3', 2,1,0,'Attente'),
(1, true, true, '1', '5', 4,1,0,'Attente'),
(1, true, false, '1', '2', 4,1,0,'Livrée');

INSERT INTO Commande
(client_Id,livraison, isPaid,pizzaQuantities,pizzaOrders,employe_inCharge_id,status)
VALUES
(7, true, true, '3', '1', 1,'Livraison');

INSERT INTO Commande
(client_Id,livraison, isPaid,pizzaQuantities,pizzaOrders,drinkQuantities, drinkOrders,employe_inCharge_id,status)
VALUES
(1, true, true, '1,2', '1, 3', '1',8,1,'Livraison'),
(4, true, true, '3,1,2', '3, 2, 1', '2',1,3,'Préparation'),
(6, true, false, '1,5', '5,', '4',1,6,'Préparation');

