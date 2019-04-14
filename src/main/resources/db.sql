CREATE SCHEMA IF NOT EXISTS `offermanager` DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE `offermanager`.`providers` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  `contact` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

INSERT INTO `offermanager`.`providers` (`provider`, `description`, `country`, `contact`) VALUES ('РЖД Логистика', 'Услуги по территории РЖД', 'Россия', '+375 17 17 17');
INSERT INTO `offermanager`.`providers` (`provider`, `description`, `country`, `contact`) VALUES ('Alliance Logistics LLC', 'Услуги в Баку (терминал Апшерон)', 'Азербайджан', '+785 85 958');

CREATE TABLE `offermanager`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

# DROP DATABASE `offermanager`;

