SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema moviedb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema moviedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `moviedb` DEFAULT CHARACTER SET utf8 ;
USE `moviedb` ;

-- -----------------------------------------------------
-- Table `moviedb`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`location` (
  `LocationId` INT(11) NOT NULL,
  `Street` VARCHAR(100) NULL DEFAULT NULL,
  `City` VARCHAR(75) NULL DEFAULT NULL,
  `State` VARCHAR(75) NULL DEFAULT NULL,
  PRIMARY KEY (`LocationId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`memberdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`memberdetails` (
  `MemberId` INT(11) NOT NULL,
  `FirstName` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `LastName` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `DateOfBirth` DATE NULL DEFAULT NULL,
  `Street` VARCHAR(100) NULL DEFAULT NULL,
  `City` VARCHAR(75) NULL DEFAULT NULL,
  `State` VARCHAR(75) NULL DEFAULT NULL,
  `ZipCode` VARCHAR(12) NULL DEFAULT NULL,
  `Email` VARCHAR(200) NULL DEFAULT NULL,
  `DateOfJoining` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`MemberId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`attendance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`attendance` (
  `MeetingDate` DATE NULL DEFAULT NULL,
  `Location` VARCHAR(200) NULL DEFAULT NULL,
  `MemberAttended` CHAR(1) NULL DEFAULT NULL,
  `MemberId` INT(11) NULL DEFAULT NULL,
  `LocationId` INT(11) NULL DEFAULT NULL,
  INDEX `LocationID_idx` (`LocationId` ASC),
  INDEX `member_fk_idx` (`MemberId` ASC),
  CONSTRAINT `locationid_fk`
    FOREIGN KEY (`LocationId`)
    REFERENCES `moviedb`.`location` (`LocationId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `member_fk`
    FOREIGN KEY (`MemberId`)
    REFERENCES `moviedb`.`memberdetails` (`MemberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`category` (
  `CategoryId` INT(11) NOT NULL,
  `Category` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`CategoryId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`favcategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`favcategory` (
  `CategoryId` INT(11) NOT NULL,
  `MemberId` INT(11) NOT NULL,
  INDEX `memberid_fk_idx` (`MemberId` ASC),
  INDEX `categoryid_fk_idx` (`CategoryId` ASC),
  CONSTRAINT `categoryid_fkey`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `moviedb`.`category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `memberid_fk`
    FOREIGN KEY (`MemberId`)
    REFERENCES `moviedb`.`memberdetails` (`MemberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`films`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`films` (
  `FilmId` INT(11) NOT NULL,
  `FilmName` VARCHAR(100) NULL DEFAULT NULL,
  `YearReleased` INT(11) NULL DEFAULT NULL,
  `PlotSummary` TEXT NULL DEFAULT NULL,
  `AvailableOnDVD` CHAR(1) NULL DEFAULT NULL,
  `Rating` INT(11) NULL DEFAULT NULL,
  `CategoryId` INT(11) NULL DEFAULT NULL,
  `DVDPrice` DECIMAL(12,1) NULL DEFAULT NULL,
  PRIMARY KEY (`FilmId`),
  INDEX `categoryid_fk_idx` (`CategoryId` ASC),
  CONSTRAINT `categoryid_fk`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `moviedb`.`category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `moviedb`.`tbl_names`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`tbl_names` (
  `name` VARCHAR(20) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `moviedb`.`templocation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`templocation` (
  `LocationId` INT(11) NOT NULL,
  `Street` VARCHAR(100) NULL DEFAULT NULL,
  `City` VARCHAR(75) NULL DEFAULT NULL,
  `State` VARCHAR(75) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `moviedb` ;

-- -----------------------------------------------------
-- Placeholder table for view `moviedb`.`vw_unique_names`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviedb`.`vw_unique_names` (`name` INT);

-- -----------------------------------------------------
-- View `moviedb`.`vw_unique_names`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `moviedb`.`vw_unique_names`;
USE `moviedb`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `moviedb`.`vw_unique_names` AS select distinct `moviedb`.`tbl_names`.`name` AS `name` from `moviedb`.`tbl_names`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
