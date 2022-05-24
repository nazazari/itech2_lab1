
USE `itech-lb-tmp`;

INSERT INTO `VENDORS`(`name`) VALUES
("Intel"),
("AMD"),
("ASUS"),
("Cooler Master"),
("CORSAIR"),
("GIGABYTE"),
("Neo Forza");

INSERT INTO `CATEGORY`(`name`) VALUES
("CPU"),
("RAM"),
("Motherboard"),
("Computer Cases");


INSERT INTO `ITEMS` (`name`,`price`,`quantity`,`quality`,`FID_Vendor`,`FID_Category`)
VALUES
( "Intel Core i9-12900K", 609.99, 8, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Intel"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "Intel Core i9-12900KS", 779.99, 10, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Intel"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "Intel Core i9-11900K", 397.97, 0, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Intel"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "Intel Core i7-12700K", 399.99, 3, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Intel"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "AMD Ryzen 9 5900X",  399.99, 23, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "AMD"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "AMD Ryzen 7 3rd Gen", 303.89, 2, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "AMD"), (SELECT `ID_Category` from CATEGORY where `name` = "CPU")),
( "ASUS ROG STRIX B450-F GAMING AM4 AMD B450 SATA 6Gb/s ATX AMD Motherboard", 131.2, 8, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "ASUS"), (SELECT `ID_Category` from CATEGORY where `name` = "Motherboard")),
( "ASUS ROG Crosshair VIII Dark Hero AM4 AMD X570S SATA 6Gb/s ATX AMD Motherboard", 449.99, 0, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "ASUS"), (SELECT `ID_Category` from CATEGORY where `name` = "Motherboard")),
( "GIGABYTE X570 AORUS ELITE WIFI AM4 AMD X570 SATA 6Gb/s ATX AMD Motherboard", 189.99, 0, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "GIGABYTE"), (SELECT `ID_Category` from CATEGORY where `name` = "Motherboard")),
( "CORSAIR Vengeance 32GB (2 x 16GB) 288-Pin PC RAM DDR5 5600", 279.99, 27, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "CORSAIR"), (SELECT `ID_Category` from CATEGORY where `name` = "RAM")),
( "Neo Forza FAYE 16GB (2x8GB) 288-Pin DDR4 3200 (PC4 25600) ", 65.99, 27, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Neo Forza"), (SELECT `ID_Category` from CATEGORY where `name` = "RAM")),
( "Corsair iCUE 220T RGB Airflow CC-9011173-WW Black Steel Case", 109.99, 120, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "CORSAIR"), (SELECT `ID_Category` from CATEGORY where `name` = "Computer Cases")),
( "Cooler Master MasterBox MB530P Black ATX Mid-Tower", 129.99, 47, "new", (SELECT `ID_Vendor` from VENDORS where `name` = "Cooler Master"), (SELECT `ID_Category` from CATEGORY where `name` = "Computer Cases"));