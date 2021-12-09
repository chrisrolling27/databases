DROP DATABASE `chat`;
CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `roomname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `id_users` INTEGER NOT NULL,
  `id_rooms` INTEGER NOT NULL,
  `text` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);


ALTER TABLE `messages` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);


-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`id_users`,`id_rooms`,`text`) VALUES
-- ('','','','');