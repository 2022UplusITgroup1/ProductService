-- MySQL Script generated by MySQL Workbench
-- Thu Jul 14 09:00:45 2022
-- Model: Sakila Full    Version: 2.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

USE `productdb` ;

-- -----------------------------------------------------
-- Table `productdb`.`phone_storage_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productdb`.`phone_storage_category` ;

CREATE TABLE IF NOT EXISTS `productdb`.`phone_storage_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `capability` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `unq_phone_storage_category_on_capability` UNIQUE (`capability`));


-- -----------------------------------------------------
-- Table `productdb`.`phone_brand_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productdb`.`phone_brand_category` ;

CREATE TABLE IF NOT EXISTS `productdb`.`phone_brand_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `unq_phone_brand_category_on_name` UNIQUE (`name`));


-- -----------------------------------------------------
-- Table `productdb`.`phone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productdb`.`phone` ;

CREATE TABLE IF NOT EXISTS `productdb`.`phone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `storage_id` INT NOT NULL,
  `brand_id` INT NOT NULL,
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `img_thumbnail` VARCHAR(255) NOT NULL,
  `network_support` VARCHAR(10) NOT NULL,
  `discount_type` INT NULL DEFAULT NULL,
  `color` VARCHAR(20) NOT NULL,
  `price` INT NOT NULL,
  `sales` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `unq_phone_on_code_and_color` UNIQUE (`code`,`color`),
  INDEX `fk_phone_phone_storage_category1_idx` (`storage_id` ASC),
  INDEX `fk_phone_phone_brand_category1_idx` (`brand_id` ASC),
  CONSTRAINT `fk_phone_phone_storage_category1`
    FOREIGN KEY (`storage_id`)
    REFERENCES `productdb`.`phone_storage_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phone_phone_brand_category1`
    FOREIGN KEY (`brand_id`)
    REFERENCES `productdb`.`phone_brand_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `productdb`.`plan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productdb`.`plan` ;

CREATE TABLE IF NOT EXISTS `productdb`.`plan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(20) NOT NULL,
  `network_support` VARCHAR(10) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `data` INT NOT NULL,
  `message` INT NOT NULL,
  `voice` INT NOT NULL,
  `price` INT NOT NULL,
  `share_data` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `unq_plan_on_code` UNIQUE (`code`));


-- -----------------------------------------------------
-- Table `productdb`.`phone_image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productdb`.`phone_image` ;

CREATE TABLE IF NOT EXISTS `productdb`.`phone_image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `phone_id` INT NOT NULL,
  `img_path` VARCHAR(255) NOT NULL,
  `img_name` VARCHAR(50) NOT NULL,
  `img_pos` VARCHAR(30) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `unq_phone_image_on_img_name_and_img_pos` UNIQUE (`img_name`, `img_pos`),
  INDEX `fk_phone_image_phone1_idx` (`phone_id` ASC),
  CONSTRAINT `fk_phone_image_phone1`
    FOREIGN KEY (`phone_id`)
    REFERENCES `productdb`.`phone` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
