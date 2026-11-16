-- 1. Table user
CREATE TABLE `user` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) UNIQUE NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `status` VARCHAR(50) DEFAULT 'active',
    `note` TEXT,
    `desc` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `user_id` BIGINT, -- Merujuk pada user yang membuat data ini (opsional)
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL
);

-- 2. Table menu
CREATE TABLE `menu` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `stock` INT DEFAULT 0,
    `harga` DECIMAL(15,2) NOT NULL,
    `status` VARCHAR(50) DEFAULT 'available',
    `note` TEXT,
    `desc` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `user_id` BIGINT,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE SET NULL
);

-- 3. Table pembeli
CREATE TABLE `pembeli` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `no_telp` VARCHAR(20),
    `status` VARCHAR(50),
    `note` TEXT,
    `desc` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `user_id` BIGINT,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE SET NULL
);

-- 4. Table pemesanan
CREATE TABLE `pemesanan` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `pembeli_id` BIGINT NOT NULL,
    `menu_id` BIGINT NOT NULL,
    `antrian` INT,
    `meja` VARCHAR(50),
    `status_pembayaran` VARCHAR(50) DEFAULT 'unpaid',
    `note_pembayaran` TEXT,
    `temp_harga` DECIMAL(15,2),
    `temp_menu` VARCHAR(255),
    `status` VARCHAR(50) DEFAULT 'pending',
    `note` TEXT,
    `desc` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `user_id` BIGINT,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (`pembeli_id`) REFERENCES `pembeli`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`menu_id`) REFERENCES `menu`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE SET NULL
);
