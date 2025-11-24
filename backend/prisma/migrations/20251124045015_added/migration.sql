/*
  Warnings:

  - You are about to drop the column `author` on the `Authors` table. All the data in the column will be lost.
  - You are about to drop the column `author_name` on the `Authors` table. All the data in the column will be lost.
  - You are about to drop the column `author_id` on the `Books` table. All the data in the column will be lost.
  - You are about to drop the column `book_name` on the `Books` table. All the data in the column will be lost.
  - Added the required column `date_of_birth` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `date_of_death` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `family_name` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `first_name` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lifespan` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `url` to the `Authors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ISBN` to the `Books` table without a default value. This is not possible if the table is not empty.
  - Added the required column `author` to the `Books` table without a default value. This is not possible if the table is not empty.
  - Added the required column `summary` to the `Books` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `Books` table without a default value. This is not possible if the table is not empty.
  - Added the required column `url` to the `Books` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Authors` DROP COLUMN `author`,
    DROP COLUMN `author_name`,
    ADD COLUMN `date_of_birth` DATETIME(3) NOT NULL,
    ADD COLUMN `date_of_death` DATETIME(3) NOT NULL,
    ADD COLUMN `family_name` VARCHAR(191) NOT NULL,
    ADD COLUMN `first_name` VARCHAR(191) NOT NULL,
    ADD COLUMN `lifespan` VARCHAR(191) NOT NULL,
    ADD COLUMN `url` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Books` DROP COLUMN `author_id`,
    DROP COLUMN `book_name`,
    ADD COLUMN `ISBN` VARCHAR(191) NOT NULL,
    ADD COLUMN `author` VARCHAR(191) NOT NULL,
    ADD COLUMN `summary` VARCHAR(191) NOT NULL,
    ADD COLUMN `title` VARCHAR(191) NOT NULL,
    ADD COLUMN `url` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Genres` (
    `genre_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `url` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`genre_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
