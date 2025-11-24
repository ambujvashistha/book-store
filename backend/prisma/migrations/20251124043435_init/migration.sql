-- CreateTable
CREATE TABLE `Books` (
    `book_id` INTEGER NOT NULL AUTO_INCREMENT,
    `book_name` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`book_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
