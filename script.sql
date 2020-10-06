CREATE DATABASE `flightreservation`;

use `flightreservation`;
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
DROP TABLE IF EXISTS `flightreservation`.`flight`;

CREATE TABLE  `flightreservation`.`flight` (
  `flight_id` int(11) NOT NULL auto_increment,
  `flight_name` varchar(45) NOT NULL default '',
  `departure` varchar(45) NOT NULL default '',
  `arrival` varchar(45) NOT NULL default '',
  `departureDate` varchar(45) NOT NULL,
  `arrivalDate` varchar(45) NOT NULL ,   
  PRIMARY KEY  (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

desc `flight`;


CREATE TABLE USER 
(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR(20),
PASSWORD VARCHAR(256), 
PRIMARY KEY (ID),
UNIQUE KEY (EMAIL)
);

CREATE TABLE PASSENGER
(
  ID         INT NOT NULL AUTO_INCREMENT,
  FIRST_NAME       VARCHAR(256),
  LAST_NAME    VARCHAR(256),
  MIDDLE_NAMEuser   VARCHAR(256),
  EMAIL VARCHAR(50),
  PHONE VARCHAR(10),
  PRIMARY KEY (ID)
);

CREATE TABLE RESERVATION
(
  ID INT NOT NULL AUTO_INCREMENT,
  CHECKED_IN TINYINT(1),
  NUMBER_OF_BAGS INT,
  PASSENGER_ID INT,
  FLIGHT_ID INT,
  CREATED TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ID),
  FOREIGN KEY (PASSENGER_ID) REFERENCES PASSENGER(ID) ON DELETE CASCADE,
  FOREIGN KEY (FLIGHT_ID) REFERENCES flight(flight_id)
);

delete from flight;
SELECT * FROM flight ;
SELECT * FROM flight WHERE departure like '%s' and arrival like '%p';
