
-- -----------------------------------------------------
-- Table `proyinf4`.`arbitros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`arbitros` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `carrera` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_ingreso` DATE NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`deportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`deportes` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `deporteid_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`divisiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`divisiones` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deporteid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `deporteid_idx` (`deporteid` ASC),
  CONSTRAINT `deporteid`
    FOREIGN KEY (`deporteid`)
    REFERENCES `proyinf4`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`equipos` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `carrera` VARCHAR(120) NULL DEFAULT NULL,
  `facultad` VARCHAR(120) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `equipoid_UNIQUE` (`id` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  CONSTRAINT `divisionid`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`lugares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`lugares` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(120) NULL DEFAULT NULL,
  `ubicacion` VARCHAR(120) NULL DEFAULT NULL,
  `capacidad` VARCHAR(45) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `lugarid_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`partidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`partidos` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `equipo_1` INT(10) UNSIGNED NULL DEFAULT NULL,
  `equipo_2` INT(10) UNSIGNED NULL DEFAULT NULL,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `lugarid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `ganador` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `hora` VARCHAR(45) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `empate` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `partidoid_UNIQUE` (`id` ASC),
  INDEX `lugar_idx` (`lugarid` ASC),
  INDEX `ganador_idx` (`ganador` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  INDEX `equipo1_idx` (`equipo_1` ASC),
  INDEX `equipo2_idx` (`equipo_2` ASC),
  CONSTRAINT `divisionid1`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo1`
    FOREIGN KEY (`equipo_1`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo2`
    FOREIGN KEY (`equipo_2`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ganador`
    FOREIGN KEY (`ganador`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `lugarid`
    FOREIGN KEY (`lugarid`)
    REFERENCES `proyinf4`.`lugares` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`arbitrajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`arbitrajes` (
  `partidoid` INT(10) UNSIGNED NOT NULL,
  `arbitroid` INT(10) UNSIGNED NOT NULL,
  `tipo` VARCHAR(80) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`arbitroid`, `partidoid`),
  INDEX `partidoid_idx` (`partidoid` ASC),
  CONSTRAINT `arbitroid`
    FOREIGN KEY (`arbitroid`)
    REFERENCES `proyinf4`.`arbitros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyinf4`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`campeonatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`campeonatos` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `ano` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(120) NULL DEFAULT NULL,
  `semestre` VARCHAR(45) NULL DEFAULT NULL,
  `campeon` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha_inicio` DATE NULL DEFAULT NULL,
  `fecha_termino` DATE NULL DEFAULT NULL,
  `reglamento` VARCHAR(120) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `ligaid_UNIQUE` (`id` ASC),
  INDEX `campeon_idx` (`campeon` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  CONSTRAINT `campeon`
    FOREIGN KEY (`campeon`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `divisionid2`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`noticias` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deporteid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `texto` VARCHAR(2000) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `deporteid_idx` (`deporteid` ASC),
  CONSTRAINT `deporteid1`
    FOREIGN KEY (`deporteid`)
    REFERENCES `proyinf4`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`imagenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`imagenes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `noticiaid` INT(10) UNSIGNED NOT NULL,
  `url` VARCHAR(150) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `noticiaid_idx` (`noticiaid` ASC),
  CONSTRAINT `noticiaid`
    FOREIGN KEY (`noticiaid`)
    REFERENCES `proyinf4`.`noticias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`jugadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`jugadores` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `equipoid` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(160) NULL DEFAULT NULL,
  `edad` INT(11) NULL DEFAULT NULL,
  `ano_ingreso` INT(11) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `equipoid`),
  UNIQUE INDEX `jugadorid_UNIQUE` (`id` ASC),
  INDEX `equipoid_idx` (`equipoid` ASC),
  CONSTRAINT `equipoid`
    FOREIGN KEY (`equipoid`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`partido_jugadors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`partido_jugadors` (
  `partidoid` INT(10) UNSIGNED NOT NULL,
  `jugadorid` INT(10) UNSIGNED NOT NULL,
  `puntos` INT(11) NULL DEFAULT '0',
  `triples` INT(11) NULL DEFAULT '0',
  `amarilla` TINYINT(4) NULL DEFAULT '0',
  `roja` TINYINT(4) NULL DEFAULT '0',
  `faltas_b` INT(11) NULL DEFAULT '0' COMMENT 'faltas basquetball',
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`partidoid`, `jugadorid`),
  INDEX `jugadorid_idx` (`jugadorid` ASC),
  CONSTRAINT `jugadorid1`
    FOREIGN KEY (`jugadorid`)
    REFERENCES `proyinf4`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid0`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyinf4`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`sanciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`sanciones` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jugadorid` INT(10) UNSIGNED NOT NULL,
  `tiempo` VARCHAR(45) NULL DEFAULT NULL,
  `comentario` VARCHAR(200) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `jugadorid`),
  INDEX `jugadorid_idx` (`jugadorid` ASC),
  CONSTRAINT `jugadorid0`
    FOREIGN KEY (`jugadorid`)
    REFERENCES `proyinf4`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`usuarios` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `correo` VARCHAR(200) NULL DEFAULT NULL,
  `password` VARCHAR(200) NULL DEFAULT NULL,
  `admin` TINYINT(4) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`subscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`subscripciones` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarioid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `equipoid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `usuarioid_idx` (`usuarioid` ASC),
  INDEX `equipoid_idx` (`equipoid` ASC),
  CONSTRAINT `equipoid3`
    FOREIGN KEY (`equipoid`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioid1`
    FOREIGN KEY (`usuarioid`)
    REFERENCES `proyinf4`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;
