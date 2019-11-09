-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokemon` ;

-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8 ;
USE `pokemon` ;

-- -----------------------------------------------------
-- Table `pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon` ;

CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NULL,
  `weakness` VARCHAR(45) NULL,
  `evolved_name` VARCHAR(45) NULL,
  `image_url` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pikachu@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pikachu'@'localhost' IDENTIFIED BY 'pika';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pikachu'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokemon`;
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (1, 'Pikachu', 'Electric', 'Water', 'Raichu', 'https://img.pokemondb.net/artwork/pikachu.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (2, 'Charmander', 'Fire', 'Water,Ground,Rock', 'Charmeleon', 'https://img.pokemondb.net/artwork/charmander.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (3, 'Bulbasaur', 'Grass', 'Fire,Ice,Poison,Flying,Bug', 'Ivysaur', 'https://img.pokemondb.net/artwork/bulbasaur.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (4, 'Squirtle', 'Water', 'Electric,Grass', 'Wartortle', 'https://img.pokemondb.net/artwork/squirtle.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (5, 'Onix', 'Rock,Ground', 'Water,Grass,Fighting,Ground', 'Steelix', 'https://img.pokemondb.net/artwork/onix.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (6, 'Gastly', 'Ghost,Poison', 'Ghost,Dark,Ground,Psychic', NULL, 'https://img.pokemondb.net/artwork/gastly.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (7, 'Pidgey', 'Normal,Flying', 'Fighting,Electric,Ice,Rock', 'Pidgeotto', 'https://img.pokemondb.net/artwork/pidgey.jpg');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (8, 'Snorlax', 'Normal', 'Fighting', NULL, 'http://pngimg.com/uploads/pokemon/pokemon_PNG124.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (9, 'Sandshrew', NULL, NULL, NULL, NULL);
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (10, 'Nidoran', NULL, NULL, NULL, NULL);

COMMIT;

