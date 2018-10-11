
-- -----------------------------------------------------
-- Table `proyecto`.`arbitros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`arbitros` (
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
-- Table `proyecto`.`deportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`deportes` (
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
-- Table `proyecto`.`divisiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`divisiones` (
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
    REFERENCES `proyecto`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`equipos` (
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
    REFERENCES `proyecto`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`lugares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`lugares` (
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
-- Table `proyecto`.`partidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`partidos` (
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
    REFERENCES `proyecto`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo1`
    FOREIGN KEY (`equipo_1`)
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo2`
    FOREIGN KEY (`equipo_2`)
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ganador`
    FOREIGN KEY (`ganador`)
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `lugarid`
    FOREIGN KEY (`lugarid`)
    REFERENCES `proyecto`.`lugares` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`arbitrajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`arbitrajes` (
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
    REFERENCES `proyecto`.`arbitros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyecto`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`campeonatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`campeonatos` (
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
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `divisionid2`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyecto`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`noticias` (
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
    REFERENCES `proyecto`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`imagenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`imagenes` (
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
    REFERENCES `proyecto`.`noticias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`jugadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`jugadores` (
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
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;



-- -----------------------------------------------------
-- Table `proyecto`.`partido_jugadors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`partido_jugadors` (
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
    REFERENCES `proyecto`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid0`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyecto`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`sanciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`sanciones` (
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
    REFERENCES `proyecto`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- -----------------------------------------------------
-- Table `proyecto`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`usuarios` (
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
-- Table `proyecto`.`subscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`subscripciones` (
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
    REFERENCES `proyecto`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioid1`
    FOREIGN KEY (`usuarioid`)
    REFERENCES `proyecto`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyecto`.`translations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`translations` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `column_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `foreign_key` INT(10) UNSIGNED NOT NULL,
  `locale` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `value` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique` (`table_name` ASC, `column_name` ASC, `foreign_key` ASC, `locale` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyecto`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`users` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `avatar` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT 'users/default.png',
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `remember_token` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `settings` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC),
  INDEX `users_role_id_foreign` (`role_id` ASC),
  CONSTRAINT `users_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `proyecto`.`roles` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyecto`.`user_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto`.`user_roles` (
  `user_id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `user_roles_user_id_index` (`user_id` ASC),
  INDEX `user_roles_role_id_index` (`role_id` ASC),
  CONSTRAINT `user_roles_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `proyecto`.`roles` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyecto`.`users` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


