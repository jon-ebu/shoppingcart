--to run enter to command line: mysql -u root -p < htdocs/final/populate.sql

USE sticker_sc;

--Insert animal Stickers into stickers table
INSERT INTO stickers VALUES ('0672329152','grey','Koala',1, 1.29, 'Koala with baby koala');
INSERT INTO stickers VALUES ('0672329153','brown','Meerkat',1,1.29, 'Standing Meerkcat');
INSERT INTO stickers VALUES ('0672319154','brown','Capybara',1,2.29, 'Capybara with blue bird');

--Insert car stickers into stickers table
INSERT INTO stickers VALUES ('0672329155','white','White Race Car',2, 1.29, 'White race car with fire flames');
INSERT INTO stickers VALUES ('0672329156','yellow','Yellow Comic Car',2 ,1.29, 'Yellow comic car with face');
INSERT INTO stickers VALUES ('0672329157','red','Classic Red Car',2,2.29, 'Classic red morris minor');

--Insert flower stickers into stickers table
INSERT INTO stickers VALUES ('0672329158','yellow', 'Sunflower',3, 2.29, 'Large sunflower');
INSERT INTO stickers VALUES ('0672329159','pink','Rose',3,1.29, 'Single Rose');
INSERT INTO stickers VALUES ('0672329160','red','Poopy',3,3.29, 'Large red poppy');

--Insert values in category table
INSERT INTO categories VALUES (1,'Animals');
INSERT INTO categories VALUES (2,'Cars');
INSERT INTO categories VALUES (3,'Flowers');


--Create an adminstration profile
INSERT INTO admin VALUES ('admin', sha1('admin'));
