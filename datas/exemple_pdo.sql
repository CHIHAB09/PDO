-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- H�te : 127.0.0.1:3306
-- G�n�r� le : mar. 17 nov. 2020 � 08:22
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de donn�es : `exemple_pdo`
--
CREATE DATABASE IF NOT EXISTS `exemple_pdo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exemple_pdo`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `idarticles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(120) NOT NULL,
  `thetext` text NOT NULL,
  `thedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_idusers` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticles`),
  KEY `fk_articles_users_idx` (`users_idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `articles`
--

INSERT INTO `articles` (`idarticles`, `thetitle`, `thetext`, `thedate`, `users_idusers`) VALUES
(1, 'La course au vaccin contre le coronavirus s\'acc�l�re: comment l\'expliquer? Faut-il s\'en m�fier?', 'Comment expliquer une telle rapidit� dans la recherche? \r\n\r\nCeci s\'explique gr�ce au financement. D�velopper et �laborer un nouveau vaccin, cela co�te cher aux entreprises pharmaceutiques. Mais dans ce cas-ci, l\'argent n\'est pas un frein comme l\'explique Jean-Fran�ois Saluzzo, virologue et expert aupr�s de l\'Organisation Mondiale de la Sant�. \"Les laboratoires pharmaceutiques ont re�u d\'importantes subventions des Etats, ce qui leur a �vit� le risque financier. Une phase 3 co�te entre 300 � 500 millions. Dans le cas pr�sent, le risque financier n\'existant pas, les laboratoires ont pu franchir toutes les �tapes pour arriver � la phase 3 de fa�on extr�mement rapide\", indique-t-il. \r\n\r\nCes vaccins �labor�s dans un temps record, sont-ils fiables?\r\n\r\n\"Oui\" selon Jean-Fran�ois Saluzzo. \"L\'�tude de phase 3 est parfaitement r�alis�e, on ne peut pas dire qu\'il y a une acc�l�ration quelconque\", explique-t-il. Le vaccin d�velopp� par Moderna a �t� test� sur 30.000 personnes et il est consid�r� comme \"efficace\" � 94.5%.', '2020-11-17 08:18:23', 1),
(2, 'Bient�t cot�e, Airbnb montre la r�sistance de son mod�le � la pand�mie', 'La plateforme de location de logements entre particuliers Airbnb a d�gag� 219 millions de dollars de b�n�fice net de juillet � septembre, un signe que l\'entreprise, qui s\'appr�te � entrer en Bourse, semble avoir la capacit� de bien r�sister � la pand�mie, un fl�au sans fin pour ses concurrents.\r\n\r\n\r\nLa soci�t� n�e � San Francisco il y a 13 ans a cr�� un concept qui a boulevers� l\'industrie des voyages professionnels et du tourisme, avec 4 millions d\'h�tes � son compteur.\r\n\r\nMais elle a �t� heurt�e de plein fouet par les mesures sanitaires impos�es dans le monde � l\'hiver et au printemps dernier: son chiffre d\'affaires des 9 premiers mois de 2020 a plong� de 32% sur un an, � 2,5 milliards de dollars.\r\n\r\nLe Covid-19 \"va continuer d\'avoir un impact n�gatif sur nos r�sultats op�rationnels et financiers sur le long terme\", reconna�t le groupe californien, qui a publi� lundi son dossier officiel pour son arriv�e prochaine � Wall Street.\r\n\r\nLe quatri�me trimestre, notamment, est mal parti, alors que la r�surgence actuelle de la maladie entra�ne de nouveaux confinements, notamment en Europe.', '2020-11-17 08:19:11', 2),
(3, 'Le P�rou a un nouveau pr�sident apr�s une semaine de chaos politique', 'Le Parlement p�ruvien a �lu lundi le d�put� centriste Francisco Sagasti pr�sident par int�rim, apr�s une semaine de chaos politique qui a vu la destitution du pr�sident Martin Vizcarra puis la d�mission de son successeur Manuel Merino.\r\n\r\n\r\nFrancisco Sagasti, un novice en politique �g� de 76 ans, a �t� �lu pr�sident du Parlement par les d�put�s et devient automatiquement chef de l\'Etat.\r\n\r\nNormalement, quand le pr�sident du P�rou est destitu�, c\'est le vice-pr�sident qui assure l\'int�rim. Mais le pays n\'a plus de vice-pr�sident depuis une pr�c�dente crise politique survenue il y a un an, et dans ce cas c\'est le pr�sident du Parlement qui devient chef de l\'Etat par int�rim, selon les dispositions de la Constitution.\r\n\r\n\"Ce qui manque � notre pays en ce moment, c\'est la confiance. Faites-nous confiance, nous agirons comme nous le disons\", a d�clar� devant le Parlement M. Sagasti, qui sera officiellement investi mardi.\r\n\r\nFrancisco Sagasti a mentionn� dans son intervention les deux manifestants morts samedi au cours d\'une manifestation r�prim�e par la police. \"Quand un P�ruvien meurt, et plus encore s\'il est jeune, c\'est tout le P�rou qui est en deuil. Et s\'il meurt en d�fendant la d�mocratie, le deuil est aggrav� par l\'indignation\", a-t-il d�clar�.', '2020-11-17 08:20:01', 1),
(4, 'Handicap: Castex et une vingtaine de ministres annoncent de nouvelles mesures', 'De nouvelles aides pour mieux concilier handicap et parentalit�, un soutien prolong� aux embauches, une communication officielle plus accessible: le gouvernement a pr�sent� lundi de nouvelles mesures en faveur des personnes handicap�es, voulant montrer qu\'il ne \"ralentit pas\" les r�formes, malgr� la crise sanitaire.\r\n\r\n\r\nUn \"comit� interminist�riel du handicap\" (CIH), organis� � Matignon dans la matin�e autour de Jean Castex et de sa secr�taire d\'�tat au Handicap Sophie Cluzel, a r�uni en visioconf�rence 18 ministres, dont Jean-Michel Blanquer (�ducation), �lisabeth Borne (Travail) et G�rald Darmanin (Int�rieur) mais �galement des repr�sentants d\'associations.\r\n\r\nCe rendez-vous a �t� \"l\'occasion pour chacun des ministres d\'avoir un aiguillon qui nous rappelle la r�alit� de la vie quotidienne de toutes les personnes en situation de handicap\", a d�clar� � la presse le Premier ministre � l\'issue de la r�union.\r\n\r\nAinsi, le gouvernement a annonc� l\'extension du dispositif de la prestation de compensation du handicap (PCH) pour couvrir des aides � la parentalit�, ce qui pourrait bient�t concerner quelque 17.000 parents en situation de handicap.', '2020-11-17 08:21:12', 2),
(5, 'B�larus: plus de 700 personnes d�tenues apr�s la manifestation de l\'opposition', '\"Au total, plus de 700 personnes ont �t� plac�es en d�tention pour violation de la l�gislation sur les �v�nements de masse et avant l\'examen de leurs infractions devant les tribunaux\", a indiqu� dans un communiqu� la porte-parole du minist�re de l\'Int�rieur, Olga Tchemodanova.\r\n\r\nSelon l\'organisation b�larusse de d�fense des droits humains Viasna, au moins 1.200 personnes avaient �t� interpell�es lors de la manifestation dominicale de l\'opposition, quasi imm�diatement dispers�e par la police qui a us� de grenades assourdissantes et de gaz lacrymog�ne.\r\n\r\nLundi, la figure de proue de l\'opposition Svetlana Tikhanovska�a a indiqu� avoir rencontr� les ambassadeurs de l\'UE et appel� � de nouvelles sanctions �conomiques contre des entreprises publiques b�larusses et des banques li�es � l\'Etat.\r\n\r\nLes Europ�ens ont d�j� sanctionn� Alexandre Loukachenko, son fils Viktor et plusieurs dizaines de membres de leur entourage et hauts responsables b�larusses. Ils ont brandi la menace de nouvelles sanctions apr�s la mort d\'un opposant, d�c�d� apr�s son interpellation.\r\n\r\nMme Tikhanovska�a est r�fugi�e � l\'�tranger, comme la quasi totalit� des figures de l\'opposition qui n\'ont pas �t� emprisonn�es.\r\n\r\nC\'est �galement � l\'�tranger, en Pologne, que r�sident actuellement deux blogueurs b�larusses, St�pan Poutilo et Roman Protassevitch, qui animent la cha�ne Telegram NEXTA Live, qui coordonne en partie la protestation contre Alexandre Loukachenko.\r\n\r\nLundi, le minist�re b�larusse des Affaires �trang�res a annonc� avoir convoqu� le charg� d\'affaires polonais � Minsk pour l\'informer que le B�larus avait demand� l\'extradition de ces deux blogueurs accus�s par les autorit�s b�larusses d\'activit�s \"extr�mistes\".\r\n\r\nFin octobre, la justice b�larusse avait d�j� plac� cette cha�ne Telegram sur la liste de ressources \"extr�mistes\", l\'accusant d\'\"organisation et des appels publics � la mise en oeuvre de troubles massifs\".\r\n\r\nDepuis le d�but de la contestation visant Alexandre Loukachenko, 66 ans et au pouvoir depuis 1994, des milliers de personnes ont �t� arr�t�es, au moins quatre sont mortes et dizaines d\'autres ont d�nonc� des tortures et violences durant leur d�tention.\r\n\r\nSoutenu par Moscou, Alexandre Loukachenko refuse de quitter le pouvoir et n\'a �voqu� que de vagues r�formes constitutionnelles pour tenter de calmer la protestation.\r\n\r\nLundi, M. Loukachenko a assur� avoir convenu de \"transf�rer 70 � 80% des pouvoirs du pr�sident au Parlement, au gouvernement et � d\'autres structures\" � la faveur d\'hypoth�tiques r�formes dont on ne conna�t rien.', '2020-11-17 08:21:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelogin` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thepwd` char(64) NOT NULL,
  `thename` varchar(120) NOT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `thelogin_UNIQUE` (`thelogin`),
  UNIQUE KEY `thename_UNIQUE` (`thename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table `users`
--

INSERT INTO `users` (`idusers`, `thelogin`, `thepwd`, `thename`) VALUES
(1, 'Juliette', 'Juliette', 'Grecko Juliette'),
(2, 'Prince', 'Prince', 'Prince Philippe');

--
-- Contraintes pour les tables d�charg�es
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_users` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
