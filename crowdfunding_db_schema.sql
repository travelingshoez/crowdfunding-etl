-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `campaign` (
    `cf_id` int  NOT NULL ,
    `company_name` int  NOT NULL ,
    `description` varchar(100)  NOT NULL ,
    `goal` numeric(10,2)  NOT NULL ,
    `pledged` numeric(10,2)  NOT NULL ,
    `outcome` varchar(20)  NOT NULL ,
    `backes_count` int  NOT NULL ,
    `country` varchar(10)  NOT NULL ,
    `currency` varchar(20)  NOT NULL ,
    `launched_date` date  NOT NULL ,
    `deadline` date  NOT NULL ,
    `staff_pick` varchar(10)  NOT NULL ,
    `spotlight` varchar(10)  NOT NULL ,
    `category_sub-category` varchar(40)  NOT NULL ,
    `category` varchar(20)  NOT NULL ,
    `subcategory_id` varchar(20)  NOT NULL ,
    `end_date` date  NOT NULL ,
    PRIMARY KEY (
        `cf_id`
    )
);

CREATE TABLE `contacts` (
    `contact_id` int  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `email` varchar(50)  NOT NULL 
);

CREATE TABLE `category` (
    `category_id` varchar(10)  NOT NULL ,
    `category_name` varchar(50)  NOT NULL 
);

CREATE TABLE `subcategory` (
    `subcategory_id` varchar(10)  NOT NULL ,
    `subcategory_name` varchar(50)  NOT NULL 
);

CREATE TABLE `backer` (
    `backer_id` varchar(20)  NOT NULL ,
    `cf_id` int  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `email` varchar(50)  NOT NULL 
);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_category` FOREIGN KEY(`category`)
REFERENCES `category` (`category_id`);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_subcategory_id` FOREIGN KEY(`subcategory_id`)
REFERENCES `subcategory` (`subcategory_id`);

