CREATE TABLE `internetbanking`.`tb_role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `internetbanking`.`tb_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NULL,
  `name` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `internetbanking`.`tb_user_role` (
  `user_id` INT NOT NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `tb_role_id_idx` (`role_id` ASC),
  CONSTRAINT `tb_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `internetbanking`.`tb_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tb_role_id`
    FOREIGN KEY (`role_id`)
    REFERENCES `internetbanking`.`tb_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `internetbanking`.`tb_user` 
CHANGE COLUMN `email` `email` VARCHAR(255) NOT NULL ,
ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC);

