-- CreateTable
CREATE TABLE `Cliente` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Concessionaria` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `concessionaria` VARCHAR(255) NOT NULL,
    `alocacaoId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Automoveis` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `modelo` VARCHAR(255) NOT NULL,
    `preco` DOUBLE NOT NULL,
    `alocacaoId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Alocacao` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `area` INTEGER NOT NULL,
    `quantidade` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Concessionaria` ADD CONSTRAINT `Concessionaria_alocacaoId_fkey` FOREIGN KEY (`alocacaoId`) REFERENCES `Alocacao`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Automoveis` ADD CONSTRAINT `Automoveis_alocacaoId_fkey` FOREIGN KEY (`alocacaoId`) REFERENCES `Alocacao`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
