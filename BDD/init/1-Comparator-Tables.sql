DROP DATABASE IF EXISTS ComparatorDB;
CREATE DATABASE ComparatorDB;
USE ComparatorDB;

CREATE TABLE Users (
    id_user INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(25) NOT NULL,
	password VARCHAR(30) NOT NULL,
	PRIMARY KEY (id_user)
);

CREATE TABLE Cpu (
    id_cpu INT NOT NULL AUTO_INCREMENT,
	cores INT NOT NULL,
	threads INT NOT NULL,
	frequency_ghrtz INT NOT NULL,
	chipset VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_cpu)
);
CREATE TABLE Gpu (
    id_gpu INT NOT NULL AUTO_INCREMENT,
	cores INT NOT NULL,
	frequency_ghrtz INT NOT NULL,
	vram_gb INT NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_gpu)
);
CREATE TABLE Motherboard (
    id_motherboard INT NOT NULL AUTO_INCREMENT,
	format VARCHAR(255) NOT NULL,
	ram_chipset VARCHAR(255) NOT NULL,
	ram_max_speed_Mhrtz INT NOT NULL,
	max_nb_ssd INT NOT NULL,
	max_nb_gpu INT NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_motherboard)
);

CREATE TABLE Ram (
    id_ram INT NOT NULL AUTO_INCREMENT,
	frequency_mhrtz INT NOT NULL,
	size VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_ram)
);
CREATE TABLE Stockage (
    id_stockage INT NOT NULL AUTO_INCREMENT,
	size_go INT NOT NULL,
	type VARCHAR(255) NOT NULL,
	read_speed_gbps INT NOT NULL,
	write_speed_gbps INT NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_stockage)
);
CREATE TABLE Alim (
    id_alim INT NOT NULL AUTO_INCREMENT,
	power_w INT NOT NULL,
	certification VARCHAR(255) NOT NULL,
	modulaire VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_alim)
);
CREATE TABLE pc_Case(
    id_case INT NOT NULL AUTO_INCREMENT,
	size VARCHAR(255) NOT NULL,
	motherboard_size VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	marque VARCHAR(255) NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_case)
);
CREATE TABLE liaison_stockage (
    id_liaison_stockage INT NOT NULL AUTO_INCREMENT,
	id_stockage INT NOT NULL,
	nbe_stockage INT NOT NULL,
	PRIMARY KEY (id_liaison_stockage),
	CONSTRAINT fk_liaison_stockage
		FOREIGN KEY (id_stockage)
		REFERENCES Stockage(id_stockage)
		ON DELETE CASCADE
);
CREATE TABLE Configs (
    id_config INT NOT NULL AUTO_INCREMENT,
	id_cpu INT NOT NULL,
	id_gpu INT NOT NULL,
	id_motherboard INT NOT NULL,
	id_ram INT NOT NULL,
	id_alim INT NOT NULL,
	id_liaison_stockage INT NOT NULL,
	id_case INT NOT NULL,
	prix INT NOT NULL,
	PRIMARY KEY (id_config),
	CONSTRAINT fk_config_cpu
		FOREIGN KEY (id_cpu)
		REFERENCES Cpu(id_cpu)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_gpu
		FOREIGN KEY (id_gpu)
		REFERENCES Gpu(id_gpu)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_motherboard
		FOREIGN KEY (id_motherboard)
		REFERENCES Motherboard(id_motherboard)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_ram
		FOREIGN KEY (id_ram)
		REFERENCES Ram(id_ram)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_alim
		FOREIGN KEY (id_alim)
		REFERENCES Alim(id_alim)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_liaison_stockage
		FOREIGN KEY (id_liaison_stockage)
		REFERENCES liaison_stockage(id_liaison_stockage)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_config_case
		FOREIGN KEY (id_case)
		REFERENCES pc_Case(id_case)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);