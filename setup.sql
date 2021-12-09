-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
--
-- ---

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `use` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'rooms'

-- ---

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `roomname` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
--
-- -- ---
-- -- Table 'messages'
-- --
-- -- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username_id` INTEGER DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- -- ---
-- -- Foreign Keys
-- -- ---

ALTER TABLE `messages` ADD FOREIGN KEY (username_id) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- -- ---
-- -- Test Data
-- -- ---

-- INSERT INTO `users` (`id`,`username`,`use`) VALUES ('','','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES ('','');
-- INSERT INTO `messages` (`id`,`username_id`) VALUES ('','');