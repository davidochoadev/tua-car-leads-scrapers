/*
  Warnings:

  - You are about to drop the `italy_cities` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `italy_cities`;

-- CreateTable
CREATE TABLE `Comune` (
    `istat` INTEGER NOT NULL,
    `comune` VARCHAR(255) NULL,
    `id_regione` SMALLINT NOT NULL,
    `sigla_prov` VARCHAR(191) NOT NULL,
    `cap` CHAR(11) NULL,
    `prefisso` VARCHAR(7) NULL,
    `cod_fisco` VARCHAR(10) NULL,
    `superficie` DOUBLE NULL,
    `num_residenti` INTEGER NULL,

    PRIMARY KEY (`istat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Comune` ADD CONSTRAINT `Comune_id_regione_fkey` FOREIGN KEY (`id_regione`) REFERENCES `Regione`(`cod_reg`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Comune` ADD CONSTRAINT `Comune_sigla_prov_fkey` FOREIGN KEY (`sigla_prov`) REFERENCES `Provincia`(`sigla`) ON DELETE RESTRICT ON UPDATE CASCADE;
