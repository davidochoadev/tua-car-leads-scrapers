-- CreateTable
CREATE TABLE `cars_autoscout` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `urn` VARCHAR(255) NOT NULL,
    `subject` TEXT NOT NULL,
    `body` TEXT NOT NULL,
    `date_remote` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `pollution` VARCHAR(128) NULL,
    `fuel` VARCHAR(128) NULL,
    `vehicle_status` VARCHAR(128) NULL,
    `price` INTEGER NOT NULL DEFAULT 0,
    `mileage_scalar` VARCHAR(128) NOT NULL,
    `doors` TEXT NULL,
    `register_date` VARCHAR(128) NOT NULL,
    `register_year` VARCHAR(32) NOT NULL,
    `geo_region` VARCHAR(128) NOT NULL,
    `geo_provincia` VARCHAR(128) NOT NULL,
    `geo_town` VARCHAR(128) NOT NULL,
    `url` TEXT NOT NULL,
    `advertiser_name` VARCHAR(128) NOT NULL,
    `advertiser_phone` VARCHAR(128) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cars_facebook` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `urn` VARCHAR(255) NOT NULL,
    `subject` VARCHAR(255) NOT NULL,
    `body` VARCHAR(255) NULL,
    `date_remote` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `pollution` VARCHAR(255) NULL,
    `fuel` VARCHAR(255) NULL,
    `vehicle_status` VARCHAR(255) NULL,
    `price` INTEGER NOT NULL,
    `mileage_scalar` VARCHAR(255) NOT NULL,
    `doors` TEXT NULL,
    `register_date` VARCHAR(128) NULL,
    `register_year` VARCHAR(255) NOT NULL,
    `geo_region` VARCHAR(255) NOT NULL,
    `geo_provincia` VARCHAR(255) NOT NULL,
    `geo_town` VARCHAR(255) NOT NULL,
    `url` TEXT NOT NULL,
    `advertiser_name` VARCHAR(128) NULL,
    `advertiser_phone` VARCHAR(128) NULL,

    UNIQUE INDEX `urn`(`urn`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cars_subito` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `urn` VARCHAR(255) NOT NULL,
    `subject` TEXT NOT NULL,
    `body` TEXT NOT NULL,
    `date_remote` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `pollution` VARCHAR(128) NULL,
    `fuel` VARCHAR(128) NULL,
    `vehicle_status` VARCHAR(128) NULL,
    `price` INTEGER NOT NULL DEFAULT 0,
    `mileage_scalar` VARCHAR(128) NOT NULL,
    `doors` TEXT NULL,
    `register_date` VARCHAR(128) NOT NULL,
    `register_year` VARCHAR(128) NOT NULL,
    `geo_region` VARCHAR(128) NOT NULL,
    `geo_provincia` VARCHAR(128) NOT NULL,
    `geo_town` VARCHAR(128) NOT NULL,
    `url` TEXT NOT NULL,
    `advertiser_name` VARCHAR(128) NOT NULL,
    `advertiser_phone` VARCHAR(128) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_cap_generic` (
    `cap` VARCHAR(255) NOT NULL,
    `comune` VARCHAR(45) NOT NULL,

    PRIMARY KEY (`cap`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_cities` (
    `istat` INTEGER NOT NULL,
    `comune` VARCHAR(255) NULL,
    `regione` VARCHAR(50) NULL,
    `provincia` VARCHAR(2) NULL,
    `cap` CHAR(11) NULL,
    `prefisso` VARCHAR(7) NULL,
    `cod_fisco` VARCHAR(10) NULL,
    `superficie` DOUBLE NULL,
    `num_residenti` INTEGER NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_geo` (
    `istat` BIGINT NOT NULL,
    `comune` VARCHAR(255) NULL,
    `lng` VARCHAR(255) NULL,
    `lat` VARCHAR(255) NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_info` (
    `istat` INTEGER NOT NULL,
    `comune` VARCHAR(255) NULL,
    `abitanti` VARCHAR(255) NULL,
    `patrono_nome` VARCHAR(255) NULL,
    `patrono_data` VARCHAR(255) NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_metropolitane` (
    `id` INTEGER NOT NULL,
    `denominazione` VARCHAR(255) NULL,
    `capoluogo` VARCHAR(255) NULL,
    `popolazione` INTEGER NULL,
    `superficie` DOUBLE NULL,
    `densita` DOUBLE NULL,
    `numero_comuni` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_munic` (
    `istat` BIGINT NOT NULL,
    `comune` VARCHAR(255) NULL,
    `regione` VARCHAR(50) NULL,
    `provincia` VARCHAR(2) NULL,
    `cap` CHAR(11) NULL,
    `indirizzo` VARCHAR(255) NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Provincia` (
    `sigla` VARCHAR(2) NOT NULL,
    `provincia` VARCHAR(255) NULL,
    `superficie` DOUBLE NULL,
    `residenti` INTEGER NULL,
    `num_comuni` INTEGER NULL,
    `id_regione` SMALLINT NOT NULL,

    UNIQUE INDEX `Provincia_sigla_key`(`sigla`),
    PRIMARY KEY (`sigla`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Regione` (
    `cod_reg` SMALLINT NOT NULL,
    `den_reg` VARCHAR(50) NULL,
    `superficie` DOUBLE NULL,
    `num_residenti` INTEGER NULL,
    `num_comuni` INTEGER NULL,
    `num_provincie` INTEGER NULL,
    `presidente` VARCHAR(45) NULL,
    `cod_istat` VARCHAR(2) NULL,
    `cod_fiscale` VARCHAR(11) NULL,
    `piva` VARCHAR(11) NULL,
    `pec` VARCHAR(100) NULL,
    `sito` VARCHAR(100) NULL,
    `sede` VARCHAR(255) NULL,

    UNIQUE INDEX `Regione_cod_reg_key`(`cod_reg`),
    PRIMARY KEY (`cod_reg`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_removed` (
    `istat` INTEGER NOT NULL,
    `comune` VARCHAR(255) NULL,
    `provincia` VARCHAR(10) NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `italy_sardegna_2017` (
    `istat_old` INTEGER NOT NULL,
    `istat_new` INTEGER NULL,
    `comune` VARCHAR(255) NULL,

    PRIMARY KEY (`istat_old`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `scheduled_tasks` (
    `task_id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `schedule_active` INTEGER NOT NULL,
    `schedule_start` VARCHAR(32) NOT NULL,
    `schedule_repeat_h` INTEGER NOT NULL,
    `schedule_cron_style` VARCHAR(32) NOT NULL,
    `schedule_cc` TEXT NOT NULL,
    `schedule_content` TEXT NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `last_run` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `next_run` DATETIME(0) NOT NULL,

    PRIMARY KEY (`task_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `searches` (
    `search_id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `search_filename` VARCHAR(128) NOT NULL,
    `search_path` VARCHAR(256) NOT NULL,
    `search_options` TEXT NOT NULL,
    `search_results` TEXT NOT NULL,
    `search_date` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `SpokiSchedActive` BOOLEAN NOT NULL,

    PRIMARY KEY (`search_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `searches_duplicates` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `platform` VARCHAR(128) NOT NULL,
    `duplicates_file` VARCHAR(128) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(249) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `username` VARCHAR(100) NULL,
    `status` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `verified` TINYINT UNSIGNED NOT NULL DEFAULT 0,
    `resettable` TINYINT UNSIGNED NOT NULL DEFAULT 1,
    `roles_mask` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `registered` INTEGER UNSIGNED NOT NULL,
    `last_login` INTEGER UNSIGNED NULL,
    `force_logout` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,

    UNIQUE INDEX `email`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_confirmations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER UNSIGNED NOT NULL,
    `email` VARCHAR(249) NOT NULL,
    `selector` VARCHAR(16) NOT NULL,
    `token` VARCHAR(255) NOT NULL,
    `expires` INTEGER UNSIGNED NOT NULL,

    UNIQUE INDEX `selector`(`selector`),
    INDEX `email_expires`(`email`, `expires`),
    INDEX `user_id`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_data` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `name` VARCHAR(128) NOT NULL,
    `company` VARCHAR(128) NOT NULL,
    `vat_number` VARCHAR(32) NOT NULL,
    `ssn_number` VARCHAR(32) NOT NULL,
    `address` VARCHAR(256) NOT NULL,
    `zip` VARCHAR(8) NOT NULL,
    `city` VARCHAR(128) NOT NULL,
    `state` VARCHAR(128) NOT NULL,
    `region` VARCHAR(128) NOT NULL,
    `location` INTEGER NOT NULL,
    `phone` VARCHAR(32) NOT NULL,
    `user_config` TEXT NOT NULL,
    `spoki_api` TEXT NOT NULL,
    `IsSpokiEnabled` BOOLEAN NOT NULL,
    `Secret` TEXT NOT NULL,
    `uuID` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_remembered` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user` INTEGER UNSIGNED NOT NULL,
    `selector` VARCHAR(255) NOT NULL,
    `token` VARCHAR(255) NOT NULL,
    `expires` INTEGER UNSIGNED NOT NULL,

    INDEX `user`(`user`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_resets` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user` INTEGER UNSIGNED NOT NULL,
    `selector` VARCHAR(20) NOT NULL,
    `token` VARCHAR(255) NOT NULL,
    `expires` INTEGER UNSIGNED NOT NULL,

    UNIQUE INDEX `selector`(`selector`),
    INDEX `user_expires`(`user`, `expires`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_searches_config` (
    `config_id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `config_data` TEXT NOT NULL,
    `spoki_api` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`config_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_throttling` (
    `bucket` VARCHAR(44) NOT NULL,
    `tokens` FLOAT NOT NULL,
    `replenished_at` INTEGER UNSIGNED NOT NULL,
    `expires_at` INTEGER UNSIGNED NOT NULL,

    INDEX `expires_at`(`expires_at`),
    PRIMARY KEY (`bucket`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Provincia` ADD CONSTRAINT `Provincia_id_regione_fkey` FOREIGN KEY (`id_regione`) REFERENCES `Regione`(`cod_reg`) ON DELETE RESTRICT ON UPDATE CASCADE;
