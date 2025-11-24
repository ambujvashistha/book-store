/*
  Warnings:

  - You are about to drop the column `author` on the `Books` table. All the data in the column will be lost.
  - Added the required column `author_id` to the `Books` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Books` DROP COLUMN `author`,
    ADD COLUMN `author_id` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `Authors` (
    `author_id` INTEGER NOT NULL AUTO_INCREMENT,
    `author_name` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`author_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
