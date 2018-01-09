
CREATE SEQUENCE public.fournisseur_supplierid_seq_2_1_2;

CREATE TABLE public.Fournisseur (
                supplierId INTEGER NOT NULL DEFAULT nextval('public.fournisseur_supplierid_seq_2_1_2'),
                nom VARCHAR NOT NULL,
                commune VARCHAR(200) NOT NULL,
                codePostal INTEGER NOT NULL,
                adresse VARCHAR(400) NOT NULL,
                contact VARCHAR(100),
                CONSTRAINT fournisseur_pk PRIMARY KEY (supplierId)
);


ALTER SEQUENCE public.fournisseur_supplierid_seq_2_1_2 OWNED BY public.Fournisseur.supplierId;

CREATE INDEX fournisseur_idx
 ON public.Fournisseur
 ( supplierId );

CREATE SEQUENCE public.ingredient_ingredientid_seq;

CREATE TABLE public.Ingredient (
                ingredientId INTEGER NOT NULL DEFAULT nextval('public.ingredient_ingredientid_seq'),
                nomIngredient VARCHAR(40) NOT NULL,
                ingredientQuantity INTEGER NOT NULL,
                isAvailable BOOLEAN NOT NULL,
                supplierId INTEGER NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (ingredientId)
);


ALTER SEQUENCE public.ingredient_ingredientid_seq OWNED BY public.Ingredient.ingredientId;

CREATE SEQUENCE public.drink_drinkid_seq_1;

CREATE TABLE public.Drink (
                drinkId INTEGER NOT NULL DEFAULT nextval('public.drink_drinkid_seq_1'),
                prixUnitaire NUMERIC(6,2) NOT NULL,
                nom VARCHAR(40) NOT NULL,
                drinkQuantity INTEGER NOT NULL,
                isAvailable BOOLEAN NOT NULL,
                supplierId INTEGER NOT NULL,
                CONSTRAINT drink_pk PRIMARY KEY (drinkId)
);


ALTER SEQUENCE public.drink_drinkid_seq_1 OWNED BY public.Drink.drinkId;

CREATE TABLE public.Pizza (
                pizzaId VARCHAR(40) NOT NULL,
                isAvailable BOOLEAN NOT NULL,
                prixUnitaire NUMERIC(6,2) NOT NULL,
                tpsPrepa TIME NOT NULL,
                CONSTRAINT pizza_pk PRIMARY KEY (pizzaId)
);


CREATE TABLE public.ingredientList (
                pizzaId VARCHAR(40) NOT NULL,
                ingredientId INTEGER NOT NULL,
                quantity INTEGER NOT NULL,
                CONSTRAINT ingredientlist_pk PRIMARY KEY (pizzaId, ingredientId)
);


CREATE TABLE public.recette (
                pizzaId VARCHAR(40) NOT NULL,
                stepId INTEGER NOT NULL,
                step VARCHAR(200) NOT NULL,
                CONSTRAINT recette_pk PRIMARY KEY (pizzaId, stepId)
);


CREATE TABLE public.Boutique (
                shopId VARCHAR(40) NOT NULL,
                commune VARCHAR(100) NOT NULL,
                codePostal INTEGER NOT NULL,
                adresse VARCHAR(400) NOT NULL,
                CONSTRAINT boutique_pk PRIMARY KEY (shopId)
);


CREATE SEQUENCE public.employe_employe_id_seq;

CREATE TABLE public.Employe (
                employe_id INTEGER NOT NULL DEFAULT nextval('public.employe_employe_id_seq'),
                login VARCHAR(40) NOT NULL,
                password VARCHAR(20) NOT NULL,
                fonction VARCHAR(40) NOT NULL,
                nom VARCHAR(40) NOT NULL,
                prenom VARCHAR(40) NOT NULL,
                isConnected BOOLEAN NOT NULL,
                commune VARCHAR(100) NOT NULL,
                adresse VARCHAR(400) NOT NULL,
                codePostal INTEGER NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (employe_id)
);


ALTER SEQUENCE public.employe_employe_id_seq OWNED BY public.Employe.employe_id;

CREATE TABLE public.Equipe (
                shopId VARCHAR(40) NOT NULL,
                employe_id INTEGER NOT NULL,
                CONSTRAINT equipe_pk PRIMARY KEY (shopId, employe_id)
);


CREATE SEQUENCE public.client_client_id_seq;

CREATE TABLE public.Client (
                client_Id INTEGER NOT NULL DEFAULT nextval('public.client_client_id_seq'),
                login VARCHAR(40) NOT NULL,
                password VARCHAR(20) NOT NULL,
                telephone VARCHAR NOT NULL,
                isConnected BOOLEAN NOT NULL,
                nom VARCHAR(40) NOT NULL,
                prenom VARCHAR(40) NOT NULL,
                commune VARCHAR(100) NOT NULL,
                adresse VARCHAR(400) NOT NULL,
                codePostal INTEGER NOT NULL,
                email VARCHAR(100) NOT NULL,
                shopId VARCHAR(40) NOT NULL,
                zoneLivraison BOOLEAN NOT NULL,
                CONSTRAINT client_pk PRIMARY KEY (client_Id)
);


ALTER SEQUENCE public.client_client_id_seq OWNED BY public.Client.client_Id;

CREATE SEQUENCE public.commande_orderid_seq;

CREATE TABLE public.Commande (
                orderId INTEGER NOT NULL DEFAULT nextval('public.commande_orderid_seq'),
                client_Id INTEGER NOT NULL,
                livraison BOOLEAN NOT NULL,
                isPaid BOOLEAN NOT NULL,
                pizzaQuantity INTEGER,
                pizzaId VARCHAR(40),
                drinkQuantity INTEGER,
                drinkId INTEGER,
                inCharge INTEGER,
                status VARCHAR(40) NOT NULL,
                CONSTRAINT commande_pk PRIMARY KEY (orderId)
);


ALTER SEQUENCE public.commande_orderid_seq OWNED BY public.Commande.orderId;

ALTER TABLE public.Ingredient ADD CONSTRAINT fournisseur_ingredient_fk
FOREIGN KEY (supplierId)
REFERENCES public.Fournisseur (supplierId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Drink ADD CONSTRAINT fournisseur_drink_fk
FOREIGN KEY (supplierId)
REFERENCES public.Fournisseur (supplierId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredientList ADD CONSTRAINT ingredient_ingredientlist_fk
FOREIGN KEY (ingredientId)
REFERENCES public.Ingredient (ingredientId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT drink_commande_fk
FOREIGN KEY (drinkId)
REFERENCES public.Drink (drinkId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.recette ADD CONSTRAINT pizza_recette_fk
FOREIGN KEY (pizzaId)
REFERENCES public.Pizza (pizzaId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredientList ADD CONSTRAINT pizza_ingredientlist_fk
FOREIGN KEY (pizzaId)
REFERENCES public.Pizza (pizzaId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT pizza_commande_fk
FOREIGN KEY (pizzaId)
REFERENCES public.Pizza (pizzaId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Equipe ADD CONSTRAINT boutique_equipe_fk
FOREIGN KEY (shopId)
REFERENCES public.Boutique (shopId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Client ADD CONSTRAINT boutique_client_fk
FOREIGN KEY (shopId)
REFERENCES public.Boutique (shopId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Equipe ADD CONSTRAINT employe_equipe_fk
FOREIGN KEY (employe_id)
REFERENCES public.Employe (employe_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT employe_commande_fk
FOREIGN KEY (inCharge)
REFERENCES public.Employe (employe_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (client_Id)
REFERENCES public.Client (client_Id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
