DROP DATABASE IF EXISTS `salle_info`;
CREATE DATABASE `salle_info`;
USE `salle_info`;

CREATE TABLE `salle`(
`sal_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`sal_nom` VARCHAR(45) UNIQUE NOT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4;


CREATE TABLE `prise` (
`pri_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`pri_reference` VARCHAR(45) NOT NULL,
`pri_sal_id` SMALLINT UNSIGNED NOT NULL,
FOREIGN KEY (`pri_sal_id`) REFERENCES `salle`(`sal_id`)
) ENGINE = INNODB CHARACTER SET = utf8mb4;

CREATE TABLE `typeEquipement`(
`typ_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`typ_nom` VARCHAR(45) NOT NULL

)ENGINE = INNODB CHARACTER SET = utf8mb4;

CREATE TABLE `equipement` (
    `equ_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `equ_nom` VARCHAR(45) NOT NULL,
    `equ_adresseMAC` VARCHAR(45) NOT NULL,
    `equ_adresseIP` VARCHAR(45) NOT NULL,
    `equ_masque` VARCHAR(45) NOT NULL,
    `equ_pri_id` SMALLINT UNSIGNED NOT NULL,
    `equ_typ_id` SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (`equ_pri_id`) REFERENCES `prise`(`pri_id`),
    FOREIGN KEY (`equ_typ_id`) REFERENCES `typeEquipement`(`typ_id`)

) ENGINE = INNODB CHARACTER SET = utf8mb4;

INSERT INTO `salle` (`sal_nom`)
VALUES (`salle 1`),
       (`salle 2`);

SELECT `sal_nom` FROM `salle`;
