-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-dom06.eigbox.net
-- Generation Time: Feb 23, 2018 at 02:30 PM
-- Server version: 5.6.37
-- PHP Version: 4.4.9
-- 
-- Database: `db_movies2`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_arating`
-- 

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `tbl_arating`
-- 

INSERT INTO `tbl_arating` VALUES (1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. ');
INSERT INTO `tbl_arating` VALUES (2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. ');
INSERT INTO `tbl_arating` VALUES (3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.');
INSERT INTO `tbl_arating` VALUES (4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. ');
INSERT INTO `tbl_arating` VALUES (5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_cast`
-- 

CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

-- 
-- Dumping data for table `tbl_cast`
-- 

INSERT INTO `tbl_cast` VALUES (36, 'Amy Adams');
INSERT INTO `tbl_cast` VALUES (26, 'Andrew Garfield');
INSERT INTO `tbl_cast` VALUES (8, 'Aneurin Barnard');
INSERT INTO `tbl_cast` VALUES (42, 'Anna Kendrick');
INSERT INTO `tbl_cast` VALUES (14, 'Boyd Holbrook');
INSERT INTO `tbl_cast` VALUES (5, 'Bradley Cooper');
INSERT INTO `tbl_cast` VALUES (1, 'Chris Pratt');
INSERT INTO `tbl_cast` VALUES (19, 'Colm Hill');
INSERT INTO `tbl_cast` VALUES (13, 'Dafne Keen');
INSERT INTO `tbl_cast` VALUES (7, 'Damien Bonnard');
INSERT INTO `tbl_cast` VALUES (22, 'Dan Stevens');
INSERT INTO `tbl_cast` VALUES (30, 'Darcy Bryce');
INSERT INTO `tbl_cast` VALUES (3, 'Dave Bautista');
INSERT INTO `tbl_cast` VALUES (33, 'Ed Skrein');
INSERT INTO `tbl_cast` VALUES (21, 'Emma Watson');
INSERT INTO `tbl_cast` VALUES (6, 'Fionn Whitehead');
INSERT INTO `tbl_cast` VALUES (38, 'Forest Whitaker');
INSERT INTO `tbl_cast` VALUES (46, 'Harrison Ford');
INSERT INTO `tbl_cast` VALUES (11, 'Hugh Jackman');
INSERT INTO `tbl_cast` VALUES (28, 'Jacob Warner');
INSERT INTO `tbl_cast` VALUES (10, 'James Bloor');
INSERT INTO `tbl_cast` VALUES (37, 'Jeremy Renner');
INSERT INTO `tbl_cast` VALUES (45, 'Joseph Gordon-Levitt');
INSERT INTO `tbl_cast` VALUES (24, 'Josh Gad');
INSERT INTO `tbl_cast` VALUES (32, 'Karan Soni');
INSERT INTO `tbl_cast` VALUES (20, 'Kathryn Kirkpatrick');
INSERT INTO `tbl_cast` VALUES (25, 'Kevin Kline');
INSERT INTO `tbl_cast` VALUES (9, 'Lee Armstrong');
INSERT INTO `tbl_cast` VALUES (43, 'Leonardo DiCaprio');
INSERT INTO `tbl_cast` VALUES (23, 'Luke Evans');
INSERT INTO `tbl_cast` VALUES (40, 'Mark OBrien');
INSERT INTO `tbl_cast` VALUES (34, 'Michael Benyaer');
INSERT INTO `tbl_cast` VALUES (18, 'Michael Mitton');
INSERT INTO `tbl_cast` VALUES (39, 'Michael Stuhlbarg');
INSERT INTO `tbl_cast` VALUES (47, 'Miles Teller');
INSERT INTO `tbl_cast` VALUES (29, 'Milo Gibson');
INSERT INTO `tbl_cast` VALUES (12, 'Patrick Stewart');
INSERT INTO `tbl_cast` VALUES (27, 'Richard Pyros');
INSERT INTO `tbl_cast` VALUES (31, 'Ryan Reynolds');
INSERT INTO `tbl_cast` VALUES (52, 'Sandra Bullock');
INSERT INTO `tbl_cast` VALUES (44, 'Saoirse Ronan');
INSERT INTO `tbl_cast` VALUES (17, 'Sheena Kamal');
INSERT INTO `tbl_cast` VALUES (35, 'Stefan Kapicic');
INSERT INTO `tbl_cast` VALUES (15, 'Stephen Merchant');
INSERT INTO `tbl_cast` VALUES (53, 'Suraj Sharma');
INSERT INTO `tbl_cast` VALUES (16, 'Tilda Swinton');
INSERT INTO `tbl_cast` VALUES (41, 'Tom Costello');
INSERT INTO `tbl_cast` VALUES (4, 'Vin Diesel');
INSERT INTO `tbl_cast` VALUES (2, 'Zoe Saldana');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_comments`
-- 

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tbl_comments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_country`
-- 

CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=195 ;

-- 
-- Dumping data for table `tbl_country`
-- 

INSERT INTO `tbl_country` VALUES (1, 'Albania');
INSERT INTO `tbl_country` VALUES (2, 'Algeria');
INSERT INTO `tbl_country` VALUES (3, 'Andorra');
INSERT INTO `tbl_country` VALUES (4, 'Angola');
INSERT INTO `tbl_country` VALUES (5, 'Anguilla');
INSERT INTO `tbl_country` VALUES (6, 'Antarctica');
INSERT INTO `tbl_country` VALUES (7, 'Antigua');
INSERT INTO `tbl_country` VALUES (8, 'Antilles');
INSERT INTO `tbl_country` VALUES (9, 'Argentina');
INSERT INTO `tbl_country` VALUES (10, 'Armenia');
INSERT INTO `tbl_country` VALUES (11, 'Aruba');
INSERT INTO `tbl_country` VALUES (12, 'Australia');
INSERT INTO `tbl_country` VALUES (13, 'Austria');
INSERT INTO `tbl_country` VALUES (14, 'Azerbaijan');
INSERT INTO `tbl_country` VALUES (15, 'Bahamas');
INSERT INTO `tbl_country` VALUES (16, 'Bangladesh');
INSERT INTO `tbl_country` VALUES (17, 'Barbados');
INSERT INTO `tbl_country` VALUES (18, 'Belarus');
INSERT INTO `tbl_country` VALUES (19, 'Belgium');
INSERT INTO `tbl_country` VALUES (20, 'Belize');
INSERT INTO `tbl_country` VALUES (21, 'Benin');
INSERT INTO `tbl_country` VALUES (22, 'Bermuda');
INSERT INTO `tbl_country` VALUES (23, 'Bhutan');
INSERT INTO `tbl_country` VALUES (24, 'Bolivia');
INSERT INTO `tbl_country` VALUES (25, 'Bosnia');
INSERT INTO `tbl_country` VALUES (26, 'Botswana');
INSERT INTO `tbl_country` VALUES (27, 'Brazil');
INSERT INTO `tbl_country` VALUES (28, 'Brunei');
INSERT INTO `tbl_country` VALUES (29, 'Bulgaria');
INSERT INTO `tbl_country` VALUES (30, 'Burkina Faso');
INSERT INTO `tbl_country` VALUES (31, 'Burundi');
INSERT INTO `tbl_country` VALUES (32, 'Cambodia');
INSERT INTO `tbl_country` VALUES (33, 'Cameroon');
INSERT INTO `tbl_country` VALUES (34, 'Canada');
INSERT INTO `tbl_country` VALUES (35, 'Cape Verde');
INSERT INTO `tbl_country` VALUES (36, 'Cayman Islands');
INSERT INTO `tbl_country` VALUES (37, 'Central Africa');
INSERT INTO `tbl_country` VALUES (38, 'Chad');
INSERT INTO `tbl_country` VALUES (39, 'Chile');
INSERT INTO `tbl_country` VALUES (40, 'China');
INSERT INTO `tbl_country` VALUES (41, 'Colombia');
INSERT INTO `tbl_country` VALUES (42, 'Comoros');
INSERT INTO `tbl_country` VALUES (43, 'Congo');
INSERT INTO `tbl_country` VALUES (44, 'Cook Islands');
INSERT INTO `tbl_country` VALUES (45, 'Costa Rica');
INSERT INTO `tbl_country` VALUES (46, 'Cote D''Ivoire');
INSERT INTO `tbl_country` VALUES (47, 'Croatia');
INSERT INTO `tbl_country` VALUES (48, 'Cuba');
INSERT INTO `tbl_country` VALUES (49, 'Cyprus');
INSERT INTO `tbl_country` VALUES (50, 'Czech Republic');
INSERT INTO `tbl_country` VALUES (51, 'Denmark');
INSERT INTO `tbl_country` VALUES (52, 'Djibouti');
INSERT INTO `tbl_country` VALUES (53, 'Dominica');
INSERT INTO `tbl_country` VALUES (54, 'Dominican Rep.');
INSERT INTO `tbl_country` VALUES (55, 'Ecuador');
INSERT INTO `tbl_country` VALUES (56, 'Egypt');
INSERT INTO `tbl_country` VALUES (57, 'El Salvador');
INSERT INTO `tbl_country` VALUES (58, 'Eritrea');
INSERT INTO `tbl_country` VALUES (59, 'Estonia');
INSERT INTO `tbl_country` VALUES (60, 'Ethiopia');
INSERT INTO `tbl_country` VALUES (61, 'Fiji');
INSERT INTO `tbl_country` VALUES (62, 'Finland');
INSERT INTO `tbl_country` VALUES (63, 'Falkland Islands');
INSERT INTO `tbl_country` VALUES (64, 'France');
INSERT INTO `tbl_country` VALUES (65, 'Gabon');
INSERT INTO `tbl_country` VALUES (66, 'Gambia');
INSERT INTO `tbl_country` VALUES (67, 'Georgia');
INSERT INTO `tbl_country` VALUES (68, 'Germany');
INSERT INTO `tbl_country` VALUES (69, 'Ghana');
INSERT INTO `tbl_country` VALUES (70, 'Gibraltar');
INSERT INTO `tbl_country` VALUES (71, 'Greece');
INSERT INTO `tbl_country` VALUES (72, 'Greenland');
INSERT INTO `tbl_country` VALUES (73, 'Grenada');
INSERT INTO `tbl_country` VALUES (74, 'Guam');
INSERT INTO `tbl_country` VALUES (75, 'Guatemala');
INSERT INTO `tbl_country` VALUES (76, 'Guiana');
INSERT INTO `tbl_country` VALUES (77, 'Guinea');
INSERT INTO `tbl_country` VALUES (78, 'Guyana');
INSERT INTO `tbl_country` VALUES (79, 'Haiti');
INSERT INTO `tbl_country` VALUES (80, 'Hondoras');
INSERT INTO `tbl_country` VALUES (81, 'Hong Kong');
INSERT INTO `tbl_country` VALUES (82, 'Hungary');
INSERT INTO `tbl_country` VALUES (83, 'Iceland');
INSERT INTO `tbl_country` VALUES (84, 'India');
INSERT INTO `tbl_country` VALUES (85, 'Indonesia');
INSERT INTO `tbl_country` VALUES (86, 'Iran');
INSERT INTO `tbl_country` VALUES (87, 'Iraq');
INSERT INTO `tbl_country` VALUES (88, 'Ireland');
INSERT INTO `tbl_country` VALUES (89, 'Israel');
INSERT INTO `tbl_country` VALUES (90, 'Italy');
INSERT INTO `tbl_country` VALUES (91, 'Jamaica');
INSERT INTO `tbl_country` VALUES (92, 'Japan');
INSERT INTO `tbl_country` VALUES (93, 'Jordan');
INSERT INTO `tbl_country` VALUES (94, 'Kazakhstan');
INSERT INTO `tbl_country` VALUES (95, 'Kenya');
INSERT INTO `tbl_country` VALUES (96, 'Kiribati');
INSERT INTO `tbl_country` VALUES (97, 'Korea');
INSERT INTO `tbl_country` VALUES (98, 'Kyrgyzstan');
INSERT INTO `tbl_country` VALUES (99, 'Lao');
INSERT INTO `tbl_country` VALUES (100, 'Latvia');
INSERT INTO `tbl_country` VALUES (101, 'Lesotho');
INSERT INTO `tbl_country` VALUES (102, 'Liberia');
INSERT INTO `tbl_country` VALUES (103, 'Liechtenstein');
INSERT INTO `tbl_country` VALUES (104, 'Lithuania');
INSERT INTO `tbl_country` VALUES (105, 'Luxembourg');
INSERT INTO `tbl_country` VALUES (106, 'Macau');
INSERT INTO `tbl_country` VALUES (107, 'Macedonia');
INSERT INTO `tbl_country` VALUES (108, 'Madagascar');
INSERT INTO `tbl_country` VALUES (109, 'Malawi');
INSERT INTO `tbl_country` VALUES (110, 'Malaysia');
INSERT INTO `tbl_country` VALUES (111, 'Maldives');
INSERT INTO `tbl_country` VALUES (112, 'Mali');
INSERT INTO `tbl_country` VALUES (113, 'Malta');
INSERT INTO `tbl_country` VALUES (114, 'Marshal Islands');
INSERT INTO `tbl_country` VALUES (115, 'Martinique');
INSERT INTO `tbl_country` VALUES (116, 'Mauritania');
INSERT INTO `tbl_country` VALUES (117, 'Mauritius');
INSERT INTO `tbl_country` VALUES (118, 'Mayotte');
INSERT INTO `tbl_country` VALUES (119, 'Mexico');
INSERT INTO `tbl_country` VALUES (120, 'Micronesia');
INSERT INTO `tbl_country` VALUES (121, 'Moldova');
INSERT INTO `tbl_country` VALUES (122, 'Monaco');
INSERT INTO `tbl_country` VALUES (123, 'Mongolia');
INSERT INTO `tbl_country` VALUES (124, 'Montserrat');
INSERT INTO `tbl_country` VALUES (125, 'Morocco');
INSERT INTO `tbl_country` VALUES (126, 'Mozambique');
INSERT INTO `tbl_country` VALUES (127, 'Myanmar');
INSERT INTO `tbl_country` VALUES (128, 'Namibia');
INSERT INTO `tbl_country` VALUES (129, 'Nauru');
INSERT INTO `tbl_country` VALUES (130, 'Nepal');
INSERT INTO `tbl_country` VALUES (131, 'Netherlands');
INSERT INTO `tbl_country` VALUES (132, 'New Caledonia');
INSERT INTO `tbl_country` VALUES (133, 'New Guinea');
INSERT INTO `tbl_country` VALUES (134, 'New Zealand');
INSERT INTO `tbl_country` VALUES (135, 'Nicaragua');
INSERT INTO `tbl_country` VALUES (136, 'Nigeria');
INSERT INTO `tbl_country` VALUES (137, 'Niue');
INSERT INTO `tbl_country` VALUES (138, 'Norfolk Island');
INSERT INTO `tbl_country` VALUES (139, 'Norway');
INSERT INTO `tbl_country` VALUES (140, 'Palau');
INSERT INTO `tbl_country` VALUES (141, 'Panama');
INSERT INTO `tbl_country` VALUES (142, 'Paraguay');
INSERT INTO `tbl_country` VALUES (143, 'Peru');
INSERT INTO `tbl_country` VALUES (144, 'Puerto');
INSERT INTO `tbl_country` VALUES (145, 'Philippines');
INSERT INTO `tbl_country` VALUES (146, 'Poland');
INSERT INTO `tbl_country` VALUES (147, 'Polynesia');
INSERT INTO `tbl_country` VALUES (148, 'Portugal');
INSERT INTO `tbl_country` VALUES (149, 'Romania');
INSERT INTO `tbl_country` VALUES (150, 'Russia');
INSERT INTO `tbl_country` VALUES (151, 'Rwanda');
INSERT INTO `tbl_country` VALUES (152, 'Saint Lucia');
INSERT INTO `tbl_country` VALUES (153, 'Samoa');
INSERT INTO `tbl_country` VALUES (154, 'San Marino');
INSERT INTO `tbl_country` VALUES (155, 'Senegal');
INSERT INTO `tbl_country` VALUES (156, 'Seychelles');
INSERT INTO `tbl_country` VALUES (157, 'Sierra Leone');
INSERT INTO `tbl_country` VALUES (158, 'Singapore');
INSERT INTO `tbl_country` VALUES (159, 'Slovakia');
INSERT INTO `tbl_country` VALUES (160, 'Slovenia');
INSERT INTO `tbl_country` VALUES (161, 'Somalia');
INSERT INTO `tbl_country` VALUES (162, 'South Africa');
INSERT INTO `tbl_country` VALUES (163, 'Spain');
INSERT INTO `tbl_country` VALUES (164, 'Sri Lanka');
INSERT INTO `tbl_country` VALUES (165, 'St. Helena');
INSERT INTO `tbl_country` VALUES (166, 'Sudan');
INSERT INTO `tbl_country` VALUES (167, 'Suriname');
INSERT INTO `tbl_country` VALUES (168, 'Swaziland');
INSERT INTO `tbl_country` VALUES (169, 'Sweden');
INSERT INTO `tbl_country` VALUES (170, 'Switzerland');
INSERT INTO `tbl_country` VALUES (171, 'Taiwan');
INSERT INTO `tbl_country` VALUES (172, 'Tajikistan');
INSERT INTO `tbl_country` VALUES (173, 'Tanzania');
INSERT INTO `tbl_country` VALUES (174, 'Thailand');
INSERT INTO `tbl_country` VALUES (175, 'Togo');
INSERT INTO `tbl_country` VALUES (176, 'Tokelau');
INSERT INTO `tbl_country` VALUES (177, 'Tonga');
INSERT INTO `tbl_country` VALUES (178, 'Trinidad');
INSERT INTO `tbl_country` VALUES (179, 'Tunisia');
INSERT INTO `tbl_country` VALUES (180, 'Turkey');
INSERT INTO `tbl_country` VALUES (181, 'Uganda');
INSERT INTO `tbl_country` VALUES (182, 'Ukraine');
INSERT INTO `tbl_country` VALUES (183, 'United Kingdom');
INSERT INTO `tbl_country` VALUES (184, 'United States');
INSERT INTO `tbl_country` VALUES (185, 'Uruguay');
INSERT INTO `tbl_country` VALUES (186, 'Uzbekistan');
INSERT INTO `tbl_country` VALUES (187, 'Vanuatu');
INSERT INTO `tbl_country` VALUES (188, 'Venezuela');
INSERT INTO `tbl_country` VALUES (189, 'Vietnam');
INSERT INTO `tbl_country` VALUES (190, 'Virgin Islands');
INSERT INTO `tbl_country` VALUES (191, 'Yugoslavia');
INSERT INTO `tbl_country` VALUES (192, 'Zaire');
INSERT INTO `tbl_country` VALUES (193, 'Zambia');
INSERT INTO `tbl_country` VALUES (194, 'Zimbabwe');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_director`
-- 

CREATE TABLE `tbl_director` (
  `director_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `tbl_director`
-- 

INSERT INTO `tbl_director` VALUES (1, 'James Gunn');
INSERT INTO `tbl_director` VALUES (2, 'Christopher Nolan');
INSERT INTO `tbl_director` VALUES (3, 'James Mangold');
INSERT INTO `tbl_director` VALUES (4, 'Joon-ho Bong');
INSERT INTO `tbl_director` VALUES (5, 'Bill Condon');
INSERT INTO `tbl_director` VALUES (6, 'Mel Gibson');
INSERT INTO `tbl_director` VALUES (7, 'Tim Miller');
INSERT INTO `tbl_director` VALUES (8, 'Denis Villeneuve ');
INSERT INTO `tbl_director` VALUES (9, 'Dexter Fletcher');
INSERT INTO `tbl_director` VALUES (10, 'Mike Mitchell');
INSERT INTO `tbl_director` VALUES (11, 'Walt Dohrn');
INSERT INTO `tbl_director` VALUES (12, 'Alejandro Gonzalez Inarritu');
INSERT INTO `tbl_director` VALUES (13, 'John Crowley ');
INSERT INTO `tbl_director` VALUES (14, 'Robert Zemeckis');
INSERT INTO `tbl_director` VALUES (15, 'Florian Gallenberger ');
INSERT INTO `tbl_director` VALUES (16, 'J.J. Abrams');
INSERT INTO `tbl_director` VALUES (17, 'Damien Chazelle');
INSERT INTO `tbl_director` VALUES (18, 'Joseph Gordon-Levitt ');
INSERT INTO `tbl_director` VALUES (19, 'Alfonso Cuaron');
INSERT INTO `tbl_director` VALUES (20, 'Ang Lee');
INSERT INTO `tbl_director` VALUES (21, 'David O. Russell');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_genre`
-- 

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `tbl_genre`
-- 

INSERT INTO `tbl_genre` VALUES (1, 'Action');
INSERT INTO `tbl_genre` VALUES (2, 'Adventure');
INSERT INTO `tbl_genre` VALUES (3, 'Comedy');
INSERT INTO `tbl_genre` VALUES (4, 'Crime');
INSERT INTO `tbl_genre` VALUES (5, 'Drama');
INSERT INTO `tbl_genre` VALUES (6, 'Historical');
INSERT INTO `tbl_genre` VALUES (7, 'Horror');
INSERT INTO `tbl_genre` VALUES (8, 'Musical');
INSERT INTO `tbl_genre` VALUES (9, 'Science Fiction');
INSERT INTO `tbl_genre` VALUES (10, 'War');
INSERT INTO `tbl_genre` VALUES (11, 'Western');
INSERT INTO `tbl_genre` VALUES (12, 'Animation');
INSERT INTO `tbl_genre` VALUES (13, 'Family');
INSERT INTO `tbl_genre` VALUES (14, 'Fantasy');
INSERT INTO `tbl_genre` VALUES (15, 'Romance');
INSERT INTO `tbl_genre` VALUES (16, 'Sport');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_language`
-- 

CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 AUTO_INCREMENT=216 ;

-- 
-- Dumping data for table `tbl_language`
-- 

INSERT INTO `tbl_language` VALUES (1, 'Abkhaz');
INSERT INTO `tbl_language` VALUES (2, 'Afar');
INSERT INTO `tbl_language` VALUES (3, 'Afrikaans');
INSERT INTO `tbl_language` VALUES (4, 'Akan');
INSERT INTO `tbl_language` VALUES (5, 'Albanian');
INSERT INTO `tbl_language` VALUES (6, 'Amharic');
INSERT INTO `tbl_language` VALUES (7, 'Arabic');
INSERT INTO `tbl_language` VALUES (8, 'Aragonese');
INSERT INTO `tbl_language` VALUES (9, 'Armenian');
INSERT INTO `tbl_language` VALUES (10, 'Assamese');
INSERT INTO `tbl_language` VALUES (11, 'Avaric');
INSERT INTO `tbl_language` VALUES (12, 'Avestan');
INSERT INTO `tbl_language` VALUES (13, 'Aymara');
INSERT INTO `tbl_language` VALUES (14, 'Azerbaijani');
INSERT INTO `tbl_language` VALUES (15, 'Bambara');
INSERT INTO `tbl_language` VALUES (16, 'Bashkir');
INSERT INTO `tbl_language` VALUES (17, 'Basque');
INSERT INTO `tbl_language` VALUES (18, 'Belarusian');
INSERT INTO `tbl_language` VALUES (19, 'Bengali');
INSERT INTO `tbl_language` VALUES (20, 'Bihari');
INSERT INTO `tbl_language` VALUES (21, 'Bislama');
INSERT INTO `tbl_language` VALUES (22, 'Bosnian');
INSERT INTO `tbl_language` VALUES (23, 'Breton');
INSERT INTO `tbl_language` VALUES (24, 'Bulgarian');
INSERT INTO `tbl_language` VALUES (25, 'Burmese');
INSERT INTO `tbl_language` VALUES (26, 'Catalan');
INSERT INTO `tbl_language` VALUES (27, 'Valencian');
INSERT INTO `tbl_language` VALUES (28, 'Chamorro');
INSERT INTO `tbl_language` VALUES (29, 'Chechen');
INSERT INTO `tbl_language` VALUES (30, 'Chichewa');
INSERT INTO `tbl_language` VALUES (31, 'Chewa');
INSERT INTO `tbl_language` VALUES (32, 'Nyanja');
INSERT INTO `tbl_language` VALUES (33, 'Chinese');
INSERT INTO `tbl_language` VALUES (34, 'Chuvash');
INSERT INTO `tbl_language` VALUES (35, 'Cornish');
INSERT INTO `tbl_language` VALUES (36, 'Corsican');
INSERT INTO `tbl_language` VALUES (37, 'Cree');
INSERT INTO `tbl_language` VALUES (38, 'Croatian');
INSERT INTO `tbl_language` VALUES (39, 'Czech');
INSERT INTO `tbl_language` VALUES (40, 'Danish');
INSERT INTO `tbl_language` VALUES (41, 'Divehi');
INSERT INTO `tbl_language` VALUES (42, 'Dhivehi');
INSERT INTO `tbl_language` VALUES (43, 'Maldivian');
INSERT INTO `tbl_language` VALUES (44, 'Dutch');
INSERT INTO `tbl_language` VALUES (45, 'English');
INSERT INTO `tbl_language` VALUES (46, 'Esperanto');
INSERT INTO `tbl_language` VALUES (47, 'Estonian');
INSERT INTO `tbl_language` VALUES (48, 'Ewe');
INSERT INTO `tbl_language` VALUES (49, 'Faroese');
INSERT INTO `tbl_language` VALUES (50, 'Fijian');
INSERT INTO `tbl_language` VALUES (51, 'Finnish');
INSERT INTO `tbl_language` VALUES (52, 'French');
INSERT INTO `tbl_language` VALUES (53, 'Fula');
INSERT INTO `tbl_language` VALUES (54, 'Fulah');
INSERT INTO `tbl_language` VALUES (55, 'Pulaar');
INSERT INTO `tbl_language` VALUES (56, 'Pular');
INSERT INTO `tbl_language` VALUES (57, 'Galician');
INSERT INTO `tbl_language` VALUES (58, 'Georgian');
INSERT INTO `tbl_language` VALUES (59, 'German');
INSERT INTO `tbl_language` VALUES (60, 'Greek');
INSERT INTO `tbl_language` VALUES (61, 'Guaraní');
INSERT INTO `tbl_language` VALUES (62, 'Gujarati');
INSERT INTO `tbl_language` VALUES (63, 'Haitian');
INSERT INTO `tbl_language` VALUES (64, 'Haitian Creole');
INSERT INTO `tbl_language` VALUES (65, 'Hausa');
INSERT INTO `tbl_language` VALUES (66, 'Hebrew');
INSERT INTO `tbl_language` VALUES (67, 'Herero');
INSERT INTO `tbl_language` VALUES (68, 'Hindi');
INSERT INTO `tbl_language` VALUES (69, 'Hiri Motu');
INSERT INTO `tbl_language` VALUES (70, 'Hungarian');
INSERT INTO `tbl_language` VALUES (71, 'Interlingua');
INSERT INTO `tbl_language` VALUES (72, 'Indonesian');
INSERT INTO `tbl_language` VALUES (73, 'Interlingue');
INSERT INTO `tbl_language` VALUES (74, 'Irish');
INSERT INTO `tbl_language` VALUES (75, 'Igbo');
INSERT INTO `tbl_language` VALUES (76, 'Inupiaq');
INSERT INTO `tbl_language` VALUES (77, 'Ido');
INSERT INTO `tbl_language` VALUES (78, 'Icelandic');
INSERT INTO `tbl_language` VALUES (79, 'Italian');
INSERT INTO `tbl_language` VALUES (80, 'Inuktitut');
INSERT INTO `tbl_language` VALUES (81, 'Japanese');
INSERT INTO `tbl_language` VALUES (82, 'Javanese');
INSERT INTO `tbl_language` VALUES (83, 'Kalaallisut');
INSERT INTO `tbl_language` VALUES (84, 'Greenlandic');
INSERT INTO `tbl_language` VALUES (85, 'Kannada');
INSERT INTO `tbl_language` VALUES (86, 'Kanuri');
INSERT INTO `tbl_language` VALUES (87, 'Kashmiri');
INSERT INTO `tbl_language` VALUES (88, 'Kazakh');
INSERT INTO `tbl_language` VALUES (89, 'Khmer');
INSERT INTO `tbl_language` VALUES (90, 'Kikuyu');
INSERT INTO `tbl_language` VALUES (91, 'Gikuyu');
INSERT INTO `tbl_language` VALUES (92, 'Kinyarwanda');
INSERT INTO `tbl_language` VALUES (93, 'Kirghiz');
INSERT INTO `tbl_language` VALUES (94, 'Kyrgyz');
INSERT INTO `tbl_language` VALUES (95, 'Komi');
INSERT INTO `tbl_language` VALUES (96, 'Kongo');
INSERT INTO `tbl_language` VALUES (97, 'Korean');
INSERT INTO `tbl_language` VALUES (98, 'Kurdish');
INSERT INTO `tbl_language` VALUES (99, 'Kwanyama');
INSERT INTO `tbl_language` VALUES (100, 'Kuanyama');
INSERT INTO `tbl_language` VALUES (101, 'Latin');
INSERT INTO `tbl_language` VALUES (102, 'Luxembourgish');
INSERT INTO `tbl_language` VALUES (103, 'Letzeburgesch');
INSERT INTO `tbl_language` VALUES (104, 'Luganda');
INSERT INTO `tbl_language` VALUES (105, 'Limburgish');
INSERT INTO `tbl_language` VALUES (106, 'Limburgan');
INSERT INTO `tbl_language` VALUES (107, 'Limburger');
INSERT INTO `tbl_language` VALUES (108, 'Lingala');
INSERT INTO `tbl_language` VALUES (109, 'Lao');
INSERT INTO `tbl_language` VALUES (110, 'Lithuanian');
INSERT INTO `tbl_language` VALUES (111, 'Luba-Katanga');
INSERT INTO `tbl_language` VALUES (112, 'Latvian');
INSERT INTO `tbl_language` VALUES (113, 'Manx');
INSERT INTO `tbl_language` VALUES (114, 'Macedonian');
INSERT INTO `tbl_language` VALUES (115, 'Malagasy');
INSERT INTO `tbl_language` VALUES (116, 'Malay');
INSERT INTO `tbl_language` VALUES (117, 'Malayalam');
INSERT INTO `tbl_language` VALUES (118, 'Maltese');
INSERT INTO `tbl_language` VALUES (119, 'Maori');
INSERT INTO `tbl_language` VALUES (120, 'Marathi');
INSERT INTO `tbl_language` VALUES (121, 'Marshallese');
INSERT INTO `tbl_language` VALUES (122, 'Mongolian');
INSERT INTO `tbl_language` VALUES (123, 'Nauru');
INSERT INTO `tbl_language` VALUES (124, 'Navajo');
INSERT INTO `tbl_language` VALUES (125, 'Navaho');
INSERT INTO `tbl_language` VALUES (126, 'Norwegian Bokmal');
INSERT INTO `tbl_language` VALUES (127, 'North Ndebele');
INSERT INTO `tbl_language` VALUES (128, 'Nepali');
INSERT INTO `tbl_language` VALUES (129, 'Ndonga');
INSERT INTO `tbl_language` VALUES (130, 'Norwegian Nynorsk');
INSERT INTO `tbl_language` VALUES (131, 'Norwegian');
INSERT INTO `tbl_language` VALUES (132, 'Nuosu');
INSERT INTO `tbl_language` VALUES (133, 'South Ndebele');
INSERT INTO `tbl_language` VALUES (134, 'Occitan');
INSERT INTO `tbl_language` VALUES (135, 'Ojibwe');
INSERT INTO `tbl_language` VALUES (136, 'Ojibwa');
INSERT INTO `tbl_language` VALUES (137, 'Old Church Slavonic');
INSERT INTO `tbl_language` VALUES (138, 'Church Slavic');
INSERT INTO `tbl_language` VALUES (139, 'Church Slavonic');
INSERT INTO `tbl_language` VALUES (140, 'Old Bulgarian');
INSERT INTO `tbl_language` VALUES (141, 'Old Slavonic');
INSERT INTO `tbl_language` VALUES (142, 'Oromo');
INSERT INTO `tbl_language` VALUES (143, 'Oriya');
INSERT INTO `tbl_language` VALUES (144, 'Ossetian');
INSERT INTO `tbl_language` VALUES (145, 'Ossetic');
INSERT INTO `tbl_language` VALUES (146, 'Panjabi');
INSERT INTO `tbl_language` VALUES (147, 'Punjabi');
INSERT INTO `tbl_language` VALUES (148, 'Pali');
INSERT INTO `tbl_language` VALUES (149, 'Persian');
INSERT INTO `tbl_language` VALUES (150, 'Polish');
INSERT INTO `tbl_language` VALUES (151, 'Pashto');
INSERT INTO `tbl_language` VALUES (152, 'Pushto');
INSERT INTO `tbl_language` VALUES (153, 'Portuguese');
INSERT INTO `tbl_language` VALUES (154, 'Quechua');
INSERT INTO `tbl_language` VALUES (155, 'Romansh');
INSERT INTO `tbl_language` VALUES (156, 'Kirundi');
INSERT INTO `tbl_language` VALUES (157, 'Romanian');
INSERT INTO `tbl_language` VALUES (158, 'Moldavian');
INSERT INTO `tbl_language` VALUES (159, 'Moldovan');
INSERT INTO `tbl_language` VALUES (160, 'Russian');
INSERT INTO `tbl_language` VALUES (161, 'Sanskrit');
INSERT INTO `tbl_language` VALUES (162, 'Sardinian');
INSERT INTO `tbl_language` VALUES (163, 'Sindhi');
INSERT INTO `tbl_language` VALUES (164, 'Northern Sami');
INSERT INTO `tbl_language` VALUES (165, 'Samoan');
INSERT INTO `tbl_language` VALUES (166, 'Sango');
INSERT INTO `tbl_language` VALUES (167, 'Serbian');
INSERT INTO `tbl_language` VALUES (168, 'Scottish Gaelic');
INSERT INTO `tbl_language` VALUES (169, 'Gaelic');
INSERT INTO `tbl_language` VALUES (170, 'Shona');
INSERT INTO `tbl_language` VALUES (171, 'Sinhala');
INSERT INTO `tbl_language` VALUES (172, 'Sinhalese');
INSERT INTO `tbl_language` VALUES (173, 'Slovak');
INSERT INTO `tbl_language` VALUES (174, 'Slovene');
INSERT INTO `tbl_language` VALUES (175, 'Somali');
INSERT INTO `tbl_language` VALUES (176, 'Southern Sotho');
INSERT INTO `tbl_language` VALUES (177, 'Spanish');
INSERT INTO `tbl_language` VALUES (178, 'Castilian');
INSERT INTO `tbl_language` VALUES (179, 'Sundanese');
INSERT INTO `tbl_language` VALUES (180, 'Swahili');
INSERT INTO `tbl_language` VALUES (181, 'Swati');
INSERT INTO `tbl_language` VALUES (182, 'Swedish');
INSERT INTO `tbl_language` VALUES (183, 'Tamil');
INSERT INTO `tbl_language` VALUES (184, 'Telugu');
INSERT INTO `tbl_language` VALUES (185, 'Tajik');
INSERT INTO `tbl_language` VALUES (186, 'Thai');
INSERT INTO `tbl_language` VALUES (187, 'Tigrinya');
INSERT INTO `tbl_language` VALUES (188, 'Tibetan Standard');
INSERT INTO `tbl_language` VALUES (189, 'Tibetan');
INSERT INTO `tbl_language` VALUES (190, 'Turkmen');
INSERT INTO `tbl_language` VALUES (191, 'Tagalog');
INSERT INTO `tbl_language` VALUES (192, 'Tswana');
INSERT INTO `tbl_language` VALUES (193, 'Tonga');
INSERT INTO `tbl_language` VALUES (194, 'Turkish');
INSERT INTO `tbl_language` VALUES (195, 'Tsonga');
INSERT INTO `tbl_language` VALUES (196, 'Tatar');
INSERT INTO `tbl_language` VALUES (197, 'Twi');
INSERT INTO `tbl_language` VALUES (198, 'Tahitian');
INSERT INTO `tbl_language` VALUES (199, 'Uighur');
INSERT INTO `tbl_language` VALUES (200, 'Uyghur');
INSERT INTO `tbl_language` VALUES (201, 'Ukrainian');
INSERT INTO `tbl_language` VALUES (202, 'Urdu');
INSERT INTO `tbl_language` VALUES (203, 'Uzbek');
INSERT INTO `tbl_language` VALUES (204, 'Venda');
INSERT INTO `tbl_language` VALUES (205, 'Vietnamese');
INSERT INTO `tbl_language` VALUES (206, 'Volapuk');
INSERT INTO `tbl_language` VALUES (207, 'Walloon');
INSERT INTO `tbl_language` VALUES (208, 'Welsh');
INSERT INTO `tbl_language` VALUES (209, 'Wolof');
INSERT INTO `tbl_language` VALUES (210, 'Western Frisian');
INSERT INTO `tbl_language` VALUES (211, 'Xhosa');
INSERT INTO `tbl_language` VALUES (212, 'Yiddish');
INSERT INTO `tbl_language` VALUES (213, 'Yoruba');
INSERT INTO `tbl_language` VALUES (214, 'Zhuang');
INSERT INTO `tbl_language` VALUES (215, 'Chuang');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_cast`
-- 

CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

-- 
-- Dumping data for table `tbl_mov_cast`
-- 

INSERT INTO `tbl_mov_cast` VALUES (1, 1, 1);
INSERT INTO `tbl_mov_cast` VALUES (2, 1, 2);
INSERT INTO `tbl_mov_cast` VALUES (3, 1, 3);
INSERT INTO `tbl_mov_cast` VALUES (4, 1, 4);
INSERT INTO `tbl_mov_cast` VALUES (5, 1, 5);
INSERT INTO `tbl_mov_cast` VALUES (6, 2, 6);
INSERT INTO `tbl_mov_cast` VALUES (7, 2, 7);
INSERT INTO `tbl_mov_cast` VALUES (8, 2, 8);
INSERT INTO `tbl_mov_cast` VALUES (9, 2, 9);
INSERT INTO `tbl_mov_cast` VALUES (10, 2, 10);
INSERT INTO `tbl_mov_cast` VALUES (11, 3, 11);
INSERT INTO `tbl_mov_cast` VALUES (12, 3, 12);
INSERT INTO `tbl_mov_cast` VALUES (13, 3, 13);
INSERT INTO `tbl_mov_cast` VALUES (14, 3, 14);
INSERT INTO `tbl_mov_cast` VALUES (15, 3, 15);
INSERT INTO `tbl_mov_cast` VALUES (16, 4, 16);
INSERT INTO `tbl_mov_cast` VALUES (17, 4, 17);
INSERT INTO `tbl_mov_cast` VALUES (18, 4, 18);
INSERT INTO `tbl_mov_cast` VALUES (19, 4, 19);
INSERT INTO `tbl_mov_cast` VALUES (20, 4, 20);
INSERT INTO `tbl_mov_cast` VALUES (21, 5, 21);
INSERT INTO `tbl_mov_cast` VALUES (22, 5, 22);
INSERT INTO `tbl_mov_cast` VALUES (23, 5, 23);
INSERT INTO `tbl_mov_cast` VALUES (24, 5, 24);
INSERT INTO `tbl_mov_cast` VALUES (25, 5, 25);
INSERT INTO `tbl_mov_cast` VALUES (26, 6, 26);
INSERT INTO `tbl_mov_cast` VALUES (27, 6, 27);
INSERT INTO `tbl_mov_cast` VALUES (28, 6, 28);
INSERT INTO `tbl_mov_cast` VALUES (29, 6, 29);
INSERT INTO `tbl_mov_cast` VALUES (30, 6, 30);
INSERT INTO `tbl_mov_cast` VALUES (31, 7, 31);
INSERT INTO `tbl_mov_cast` VALUES (32, 7, 32);
INSERT INTO `tbl_mov_cast` VALUES (33, 7, 33);
INSERT INTO `tbl_mov_cast` VALUES (34, 7, 34);
INSERT INTO `tbl_mov_cast` VALUES (35, 7, 35);
INSERT INTO `tbl_mov_cast` VALUES (36, 8, 36);
INSERT INTO `tbl_mov_cast` VALUES (37, 8, 37);
INSERT INTO `tbl_mov_cast` VALUES (38, 8, 38);
INSERT INTO `tbl_mov_cast` VALUES (39, 8, 39);
INSERT INTO `tbl_mov_cast` VALUES (40, 8, 40);
INSERT INTO `tbl_mov_cast` VALUES (41, 9, 41);
INSERT INTO `tbl_mov_cast` VALUES (42, 10, 42);
INSERT INTO `tbl_mov_cast` VALUES (43, 11, 43);
INSERT INTO `tbl_mov_cast` VALUES (44, 12, 44);
INSERT INTO `tbl_mov_cast` VALUES (45, 13, 45);
INSERT INTO `tbl_mov_cast` VALUES (46, 14, 21);
INSERT INTO `tbl_mov_cast` VALUES (47, 15, 46);
INSERT INTO `tbl_mov_cast` VALUES (48, 16, 47);
INSERT INTO `tbl_mov_cast` VALUES (49, 17, 1);
INSERT INTO `tbl_mov_cast` VALUES (50, 18, 45);
INSERT INTO `tbl_mov_cast` VALUES (51, 19, 52);
INSERT INTO `tbl_mov_cast` VALUES (52, 20, 53);
INSERT INTO `tbl_mov_cast` VALUES (53, 21, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_country`
-- 

CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `tbl_mov_country`
-- 

INSERT INTO `tbl_mov_country` VALUES (1, 1, 34);
INSERT INTO `tbl_mov_country` VALUES (2, 1, 134);
INSERT INTO `tbl_mov_country` VALUES (3, 1, 184);
INSERT INTO `tbl_mov_country` VALUES (4, 2, 184);
INSERT INTO `tbl_mov_country` VALUES (5, 2, 183);
INSERT INTO `tbl_mov_country` VALUES (6, 2, 131);
INSERT INTO `tbl_mov_country` VALUES (7, 2, 64);
INSERT INTO `tbl_mov_country` VALUES (8, 3, 12);
INSERT INTO `tbl_mov_country` VALUES (9, 3, 34);
INSERT INTO `tbl_mov_country` VALUES (10, 3, 184);
INSERT INTO `tbl_mov_country` VALUES (11, 4, 184);
INSERT INTO `tbl_mov_country` VALUES (12, 4, 97);
INSERT INTO `tbl_mov_country` VALUES (13, 5, 183);
INSERT INTO `tbl_mov_country` VALUES (14, 5, 184);
INSERT INTO `tbl_mov_country` VALUES (15, 6, 184);
INSERT INTO `tbl_mov_country` VALUES (16, 6, 12);
INSERT INTO `tbl_mov_country` VALUES (17, 7, 184);
INSERT INTO `tbl_mov_country` VALUES (18, 8, 184);
INSERT INTO `tbl_mov_country` VALUES (19, 9, 183);
INSERT INTO `tbl_mov_country` VALUES (20, 9, 184);
INSERT INTO `tbl_mov_country` VALUES (21, 9, 68);
INSERT INTO `tbl_mov_country` VALUES (22, 10, 184);
INSERT INTO `tbl_mov_country` VALUES (23, 11, 184);
INSERT INTO `tbl_mov_country` VALUES (24, 11, 81);
INSERT INTO `tbl_mov_country` VALUES (25, 11, 171);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_director`
-- 

CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `tbl_mov_director`
-- 

INSERT INTO `tbl_mov_director` VALUES (1, 1, 1);
INSERT INTO `tbl_mov_director` VALUES (2, 2, 2);
INSERT INTO `tbl_mov_director` VALUES (3, 3, 3);
INSERT INTO `tbl_mov_director` VALUES (4, 4, 4);
INSERT INTO `tbl_mov_director` VALUES (5, 5, 5);
INSERT INTO `tbl_mov_director` VALUES (6, 6, 6);
INSERT INTO `tbl_mov_director` VALUES (7, 7, 7);
INSERT INTO `tbl_mov_director` VALUES (8, 8, 8);
INSERT INTO `tbl_mov_director` VALUES (9, 9, 9);
INSERT INTO `tbl_mov_director` VALUES (10, 10, 10);
INSERT INTO `tbl_mov_director` VALUES (11, 10, 11);
INSERT INTO `tbl_mov_director` VALUES (12, 11, 12);
INSERT INTO `tbl_mov_director` VALUES (13, 12, 13);
INSERT INTO `tbl_mov_director` VALUES (14, 13, 14);
INSERT INTO `tbl_mov_director` VALUES (15, 14, 15);
INSERT INTO `tbl_mov_director` VALUES (16, 15, 16);
INSERT INTO `tbl_mov_director` VALUES (17, 16, 17);
INSERT INTO `tbl_mov_director` VALUES (18, 17, 1);
INSERT INTO `tbl_mov_director` VALUES (19, 18, 19);
INSERT INTO `tbl_mov_director` VALUES (20, 19, 20);
INSERT INTO `tbl_mov_director` VALUES (21, 20, 21);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_genre`
-- 

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `tbl_mov_genre`
-- 

INSERT INTO `tbl_mov_genre` VALUES (1, 1, 1);
INSERT INTO `tbl_mov_genre` VALUES (2, 1, 2);
INSERT INTO `tbl_mov_genre` VALUES (3, 1, 9);
INSERT INTO `tbl_mov_genre` VALUES (4, 2, 1);
INSERT INTO `tbl_mov_genre` VALUES (5, 2, 5);
INSERT INTO `tbl_mov_genre` VALUES (6, 2, 6);
INSERT INTO `tbl_mov_genre` VALUES (7, 2, 10);
INSERT INTO `tbl_mov_genre` VALUES (8, 3, 1);
INSERT INTO `tbl_mov_genre` VALUES (9, 3, 5);
INSERT INTO `tbl_mov_genre` VALUES (10, 3, 9);
INSERT INTO `tbl_mov_genre` VALUES (11, 4, 1);
INSERT INTO `tbl_mov_genre` VALUES (12, 4, 2);
INSERT INTO `tbl_mov_genre` VALUES (13, 4, 5);
INSERT INTO `tbl_mov_genre` VALUES (14, 4, 9);
INSERT INTO `tbl_mov_genre` VALUES (15, 5, 8);
INSERT INTO `tbl_mov_genre` VALUES (16, 5, 13);
INSERT INTO `tbl_mov_genre` VALUES (17, 5, 14);
INSERT INTO `tbl_mov_genre` VALUES (18, 6, 5);
INSERT INTO `tbl_mov_genre` VALUES (19, 6, 6);
INSERT INTO `tbl_mov_genre` VALUES (20, 6, 10);
INSERT INTO `tbl_mov_genre` VALUES (21, 7, 1);
INSERT INTO `tbl_mov_genre` VALUES (22, 7, 2);
INSERT INTO `tbl_mov_genre` VALUES (23, 7, 3);
INSERT INTO `tbl_mov_genre` VALUES (24, 7, 15);
INSERT INTO `tbl_mov_genre` VALUES (25, 8, 5);
INSERT INTO `tbl_mov_genre` VALUES (26, 8, 9);
INSERT INTO `tbl_mov_genre` VALUES (27, 9, 3);
INSERT INTO `tbl_mov_genre` VALUES (28, 9, 5);
INSERT INTO `tbl_mov_genre` VALUES (29, 9, 16);
INSERT INTO `tbl_mov_genre` VALUES (30, 10, 14);
INSERT INTO `tbl_mov_genre` VALUES (31, 10, 2);
INSERT INTO `tbl_mov_genre` VALUES (32, 10, 3);
INSERT INTO `tbl_mov_genre` VALUES (33, 10, 8);
INSERT INTO `tbl_mov_genre` VALUES (34, 10, 13);
INSERT INTO `tbl_mov_genre` VALUES (35, 11, 2);
INSERT INTO `tbl_mov_genre` VALUES (36, 11, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_lang`
-- 

CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `tbl_mov_lang`
-- 

INSERT INTO `tbl_mov_lang` VALUES (1, 1, 45);
INSERT INTO `tbl_mov_lang` VALUES (2, 2, 45);
INSERT INTO `tbl_mov_lang` VALUES (3, 2, 52);
INSERT INTO `tbl_mov_lang` VALUES (4, 2, 59);
INSERT INTO `tbl_mov_lang` VALUES (5, 3, 45);
INSERT INTO `tbl_mov_lang` VALUES (6, 3, 177);
INSERT INTO `tbl_mov_lang` VALUES (7, 4, 45);
INSERT INTO `tbl_mov_lang` VALUES (8, 4, 177);
INSERT INTO `tbl_mov_lang` VALUES (9, 4, 97);
INSERT INTO `tbl_mov_lang` VALUES (10, 5, 45);
INSERT INTO `tbl_mov_lang` VALUES (11, 6, 45);
INSERT INTO `tbl_mov_lang` VALUES (12, 6, 81);
INSERT INTO `tbl_mov_lang` VALUES (13, 7, 45);
INSERT INTO `tbl_mov_lang` VALUES (14, 8, 45);
INSERT INTO `tbl_mov_lang` VALUES (15, 8, 33);
INSERT INTO `tbl_mov_lang` VALUES (16, 8, 160);
INSERT INTO `tbl_mov_lang` VALUES (17, 9, 45);
INSERT INTO `tbl_mov_lang` VALUES (18, 9, 126);
INSERT INTO `tbl_mov_lang` VALUES (19, 9, 59);
INSERT INTO `tbl_mov_lang` VALUES (20, 10, 45);
INSERT INTO `tbl_mov_lang` VALUES (21, 11, 45);
INSERT INTO `tbl_mov_lang` VALUES (22, 11, 52);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_mov_studio`
-- 

CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `tbl_mov_studio`
-- 

INSERT INTO `tbl_mov_studio` VALUES (1, 1, 1);
INSERT INTO `tbl_mov_studio` VALUES (2, 2, 2);
INSERT INTO `tbl_mov_studio` VALUES (3, 3, 3);
INSERT INTO `tbl_mov_studio` VALUES (4, 4, 4);
INSERT INTO `tbl_mov_studio` VALUES (5, 5, 5);
INSERT INTO `tbl_mov_studio` VALUES (6, 6, 6);
INSERT INTO `tbl_mov_studio` VALUES (7, 7, 7);
INSERT INTO `tbl_mov_studio` VALUES (8, 8, 8);
INSERT INTO `tbl_mov_studio` VALUES (9, 9, 9);
INSERT INTO `tbl_mov_studio` VALUES (10, 10, 10);
INSERT INTO `tbl_mov_studio` VALUES (11, 11, 11);
INSERT INTO `tbl_mov_studio` VALUES (12, 12, 12);
INSERT INTO `tbl_mov_studio` VALUES (13, 13, 13);
INSERT INTO `tbl_mov_studio` VALUES (14, 14, 14);
INSERT INTO `tbl_mov_studio` VALUES (15, 15, 15);
INSERT INTO `tbl_mov_studio` VALUES (16, 16, 16);
INSERT INTO `tbl_mov_studio` VALUES (17, 17, 1);
INSERT INTO `tbl_mov_studio` VALUES (18, 18, 17);
INSERT INTO `tbl_mov_studio` VALUES (19, 19, 18);
INSERT INTO `tbl_mov_studio` VALUES (20, 20, 19);
INSERT INTO `tbl_mov_studio` VALUES (21, 21, 20);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_movies`
-- 

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `tbl_movies`
-- 

INSERT INTO `tbl_movies` VALUES (1, 'guardians2.jpg', 'Guardians of the Galaxy Vol. 2', '2017', '2h 16m', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill&rsquo;s true parentage.', 'Guardians2.mp4', 'May 5, 2017');
INSERT INTO `tbl_movies` VALUES (2, 'dunkirk.jpg', 'Dunkirk', '2017', '1h 46m', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', 'Dunkirk.mp4', 'July 21, 2017');
INSERT INTO `tbl_movies` VALUES (3, 'logan.jpg', 'Logan', '2017', '2h 17m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan&rsquo;s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', 'Logan.mp4', 'March 3,2017');
INSERT INTO `tbl_movies` VALUES (4, 'okja.jpg', 'Okja', '2017', '2h', ' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ', 'Okja.mp4', 'June 28,2017');
INSERT INTO `tbl_movies` VALUES (5, 'beauty.jpg', 'Beauty and the Beast', '2017', '2h 9min', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'Beauty.mp4', 'March 17, 2017');
INSERT INTO `tbl_movies` VALUES (6, 'hacksaw.jpg', 'Hacksaw Ridge', '2016', '2h 19m', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 'Hacksaw.mp4', 'November 4, 2016');
INSERT INTO `tbl_movies` VALUES (7, 'deadpool.jpg', 'Deadpool', '2016', '1h 48m', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'Bloodpool.mp4', 'Febuary 12, 2016');
INSERT INTO `tbl_movies` VALUES (8, 'arrival.jpg', 'Arrival', '2016', '1h 56m', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 'Arrival.mp4', 'November 11, 2016');
INSERT INTO `tbl_movies` VALUES (9, 'eddie.jpg', 'Eddie the Eagle', '2016', '1h 46m', 'The story of Eddie Edwards, the notoriously tenacious British underdog ski jumper who charmed the world at the 1988 Winter Olympics.', 'Eddie.mp4', 'Febuary 26, 2016');
INSERT INTO `tbl_movies` VALUES (10, 'trolls.jpg', 'Trolls', '2016', '1h 32m', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.', 'Trolls.mp4', 'November 4, 2016');
INSERT INTO `tbl_movies` VALUES (11, 'revenant.jpg', 'The Revenant', '2015', '2h 36m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', 'Revenant.mp4', 'January 8, 2015');
INSERT INTO `tbl_movies` VALUES (12, 'brooklyn.jpg', 'Brooklyn', '2015', '1h 57m', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', 'Brooklyn.mp4', 'November 25, 2015');
INSERT INTO `tbl_movies` VALUES (13, 'walk.jpg', 'The Walk', '2015', '2h 3m', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', 'Walk.mp4', 'October 9, 2015');
INSERT INTO `tbl_movies` VALUES (14, 'colonia.jpg', 'Colonia', '2015', '1h 46m', 'A young woman&rsquo;s desperate search for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.', 'Colonia.mp4', 'April 15, 2015');
INSERT INTO `tbl_movies` VALUES (15, 'force.jpg', 'Star Wars: The Force Awakens', '2015', '2h 16m', 'Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.', 'Force.mp4', 'December 18, 2015');
INSERT INTO `tbl_movies` VALUES (16, 'whiplash.jpg', 'Whiplash', '2014', '1h 47m', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''s potential.', 'Whiplash.mp4', 'October 15, 2014');
INSERT INTO `tbl_movies` VALUES (17, 'guardians.jpg', 'Guardians of the Galaxy', '2014', '2h 1m', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 'Guardians.mp4', 'August 1, 2014');
INSERT INTO `tbl_movies` VALUES (18, 'donjon.jpg', 'Don Jon', '2013', '1h 30m', 'A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.', 'donjon.mp4', 'September 27, 2013');
INSERT INTO `tbl_movies` VALUES (19, 'gravity.jpg', 'Gravity', '2013', '1h 31m', 'Two astronauts work together to survive after an accident which leaves them alone in space.', 'Gravity.mp4', 'October 4, 2013');
INSERT INTO `tbl_movies` VALUES (20, 'pi.jpg', 'Life of Pi', '2012', '2h 7m', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 'Pi.jpg', 'November 21, 2012');
INSERT INTO `tbl_movies` VALUES (21, 'silver.jpg', 'Silver Linings Playbook', '2012', '2h 2m', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 'Silver.jpg', 'December 25, 2012');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_studio`
-- 

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `tbl_studio`
-- 

INSERT INTO `tbl_studio` VALUES (1, 'Marvel Studios');
INSERT INTO `tbl_studio` VALUES (2, 'Syncopy');
INSERT INTO `tbl_studio` VALUES (3, 'Donners Company');
INSERT INTO `tbl_studio` VALUES (4, 'Kate Street Picture Company');
INSERT INTO `tbl_studio` VALUES (5, 'Mandeville Films');
INSERT INTO `tbl_studio` VALUES (6, 'Cross Creek Pictures');
INSERT INTO `tbl_studio` VALUES (7, 'Twentieth Century Fox Film Corporation');
INSERT INTO `tbl_studio` VALUES (8, 'Lava Bear Films');
INSERT INTO `tbl_studio` VALUES (9, 'Hurwitz Creative');
INSERT INTO `tbl_studio` VALUES (10, 'DreamWorks Animation');
INSERT INTO `tbl_studio` VALUES (11, 'Regency Enterprises');
INSERT INTO `tbl_studio` VALUES (12, 'Wildgaze Films');
INSERT INTO `tbl_studio` VALUES (13, 'Sony Pictures Entertainment (SPE)');
INSERT INTO `tbl_studio` VALUES (14, 'Majestic Filmproduktion');
INSERT INTO `tbl_studio` VALUES (15, 'Lucasfilm');
INSERT INTO `tbl_studio` VALUES (16, 'Bold Films');
INSERT INTO `tbl_studio` VALUES (17, 'Voltage Pictures');
INSERT INTO `tbl_studio` VALUES (18, 'Warner Bros.');
INSERT INTO `tbl_studio` VALUES (19, 'Fox 2000 Pictures');
INSERT INTO `tbl_studio` VALUES (20, 'Weinstein Company');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_urating`
-- 

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tbl_urating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_user`
-- 

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_fail` tinyint(4) NOT NULL,
  `user_level` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

-- 
-- Dumping data for table `tbl_user`
-- 

INSERT INTO `tbl_user` VALUES (35, 'Jacob', 'jaker145', '$2y$10$RPrRkr3/ybteOHkIx0jUGuv/o2QGAsC.pkxKrse9BwSenw6V9.ROy', 'jakerutl@gmail.com', '2018-02-23 01:37:08', '205.211.144.215', '2018-02-23 14:27:36', 0, '2');
INSERT INTO `tbl_user` VALUES (37, 'matt', 'matt', '$2y$10$Larw7xtN7/iJzCTOhnCNu.cMTVZTpRO9J9GytqiFqsKAZsGn3m8tm', 'jakerutl@gmail.com', '2018-02-23 02:06:06', '174.113.77.76', '2018-02-23 02:06:53', 0, '1');
INSERT INTO `tbl_user` VALUES (49, 'bob', 'bob', '$2y$10$f3PFBYVfniKec4/JqmO0ouLSCk2ZT4Ti9W6R0CUBJg1GjOCJrA1sS', 'jakerutl@gmail.com', '2018-02-23 13:34:15', 'no', '2018-02-23 13:34:15', 0, '1');
INSERT INTO `tbl_user` VALUES (53, 'Justin', 'prof', '$2y$10$fKHcnagY2RMcGPbzrGB/UutOe50ZYcs9PMeXPW8pB7LoaBsfBX5wW', 'jakerutl@gmail.com', '2018-02-23 13:55:12', '205.211.144.215', '2018-02-23 14:05:02', 0, '1');
