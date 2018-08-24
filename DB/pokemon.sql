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
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `power` VARCHAR(500) NOT NULL,
  `hp` INT UNSIGNED NOT NULL,
  `stage` INT UNSIGNED NOT NULL,
  `set` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pokeuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pokeuser'@'localhost' IDENTIFIED BY 'venusaur';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pokeuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokemon`;
INSERT INTO `pokemon` (`id`, `name`, `power`, `hp`, `stage`, `set`) VALUES (1, 'Alakazam', 'Pokemon Power: Damage Swap.  As often as you like during your turn (before your attack), you may move 1 damage counter from 1 of your Poekmon to another as long as you don\'t Knock Out that Pokemon.  This power can\'t be used if Alakazam is Asleep, Confused, or Paralyzed.', 80, 2, 'Base');
INSERT INTO `pokemon` (`id`, `name`, `power`, `hp`, `stage`, `set`) VALUES (2, 'Blastoise', 'Pokemon Power: Rain Dance.  As often as you during your turn (before you attack), you may attack 1 [W] Energy card to 1 of your [W] Pokemon.  (This doesn\'t use up your 1 Energy card attachment for the turn.)  This power can\'t be used if Blastoise is Asleep, Confused, or Paralyzed.', 100, 2, 'Base');
INSERT INTO `pokemon` (`id`, `name`, `power`, `hp`, `stage`, `set`) VALUES (3, 'Chansey', '[C][C] Scrunch: Flip a coin.  If heads, prevent all damage done to Chansey during your opponent\'s next turn.  (Any other effects of attacks still happen.)', 120, 1, 'Base');
INSERT INTO `pokemon` (`id`, `name`, `power`, `hp`, `stage`, `set`) VALUES (4, 'Charizard', 'Pokemon Power: Energy Burn.  As often as you like during your turn (before your attack), you may turn all Energy attached to Charizard into [R] Energy for the rest of the turn. This power can\'t be used if Charizard is Asleep, Confused, or Paralyzed.', 120, 2, 'Base');
INSERT INTO `pokemon` (`id`, `name`, `power`, `hp`, `stage`, `set`) VALUES (5, 'Clefairy', '[C] Sing: Flip a coin.  If heads, the Defending Pokemon is now Asleep.', 40, 1, 'Base');

COMMIT;

