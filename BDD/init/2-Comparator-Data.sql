USE ComparatorDB;
INSERT INTO users (username, password) VALUES 
('admin', 'admin'),
('guest', 'guest');

INSERT INTO Stockage (size_go, type, read_speed_gbps, write_speed_gbps, name, marque, prix) VALUES (1000, "ssd", 2, 2, "FoxSpirit 315", "FoxSpirit", 150);
INSERT INTO Alim (power_w, certification, modulaire, name, marque, prix) VALUES (1000, "80+ gold", TRUE, "RM1000X", "Corsair", 150);
INSERT INTO Cpu (cores, threads, frequency_ghrtz, chipset, name, marque, prix) VALUES (8, 8, 2.4, "LGA1200", "I5 10500KF", "intel", 150);
INSERT INTO Gpu (cores, frequency_ghrtz, vram_gb, name, marque, prix) VALUES (16, 1470, 12,"RTX 2060 VENTUS", "MSI", 150);
INSERT INTO Ram (frequency_mhrtz, size, name, marque, prix) VALUES (3200, "4*16G", "VENGANCE RGB PRO", "Corsair", 150);
INSERT INTO Motherboard (format	, ram_chipset, ram_max_speed_Mhrtz, max_nb_ssd, max_nb_gpu, name, marque, prix) VALUES ("ATX", "DDR5", 46000, 6, 2, "Z690 Extreme", "Aorus", 150);
INSERT INTO pc_Case (size, motherboard_size, name, marque, prix) VALUES ("GRAND TOUR", "ATX / EATX / ITX", "Masterbox MB520", "CoolerMaster", 150);
INSERT INTO liaison_stockage (id_stockage, nbe_stockage) VALUES (1, 5);
