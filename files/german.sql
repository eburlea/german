-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2014 at 09:15 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `german`
--

-- --------------------------------------------------------

--
-- Table structure for table `noun`
--

CREATE TABLE IF NOT EXISTS `noun` (
  `id_noun` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `noun_sg` varchar(255) DEFAULT NULL,
  `noun_pl` varchar(255) DEFAULT NULL,
  `gender` enum('M','F','N') NOT NULL,
  `translation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_noun`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `noun`
--

INSERT INTO `noun` (`id_noun`, `noun_sg`, `noun_pl`, `gender`, `translation`) VALUES
(1, 'Abend', 'Abende', 'M', 'evening'),
(2, 'Abteilung', 'Abteilungen', 'F', 'department'),
(3, 'Adresse', 'Adressen', 'F', 'address'),
(4, 'Alter', '-', 'N', 'age'),
(5, 'Anfang', 'AnfÃ¤nge', 'M', 'start'),
(6, 'Angebot', 'Angebote', 'N', 'offer'),
(7, 'Angestellte', 'Angestellten', 'M', 'employee'),
(8, 'Anmeldung', 'Anmeldungen', 'F', 'registration'),
(9, 'Antwort', 'Antworten', 'F', 'reply'),
(10, 'Anzeige', 'Anzeigen', 'F', 'announcement'),
(11, 'Apfelsaft', 'ApfelsÃ¤fte', 'M', 'apple juice'),
(12, 'Appetit', 'Appetite', 'M', 'appetite'),
(13, 'Arzt', 'Ã„rzte', 'M', 'doctor'),
(14, 'Ã„rztin', 'Ã„rztinnen', 'F', 'doctor (female)'),
(15, 'Auskunft', 'AuskÃ¼nfte', 'F', 'information'),
(16, 'Ausweis', 'Ausweise', 'M', 'badge'),
(17, 'Auto', 'Autos', 'N', 'car'),
(18, 'Beispiel', 'Beispiele', 'N', 'example'),
(19, 'Beruf', 'Berufe', 'M', 'profession'),
(20, 'Besuch', 'Besuche', 'M', 'visit'),
(21, 'Bett', 'Betten', 'N', 'bed'),
(22, 'Bier', 'Biere', 'N', 'bier'),
(23, 'Bild', 'Bilder', 'N', 'image'),
(24, 'Buch', 'BÃ¼cher', 'N', 'book'),
(25, 'Buchstabe', 'Buchstaben', 'M', 'letter'),
(26, 'Computer', 'Computer', 'M', 'computer'),
(27, 'Couch', 'Couches', 'F', 'couch'),
(28, 'Dank', '-', 'M', 'thanks'),
(29, 'Ei', 'Eier', 'N', 'egg'),
(30, 'Einwohner', 'Einwohner', 'M', 'population'),
(31, 'Entschuldigung', 'Entschuldigungen', 'F', 'apology'),
(32, 'Fahrer', 'Fahrer', 'M', 'driver'),
(33, 'Fahrrad', 'FahrrÃ¤der', 'N', 'bicycle'),
(34, 'Familie', 'Familien', 'F', 'family'),
(35, 'Familienname', 'Familiennamen', 'M', 'last name'),
(36, 'Familienstand', '-', 'M', 'civil status'),
(37, 'Farbe', 'Farben', 'F', 'colour'),
(38, 'Fehler', 'Fehler', 'M', 'mistake'),
(39, 'Fernseher', 'Fernseher', 'M', 'TV set'),
(40, 'Firma', 'Firmen', 'F', 'company'),
(41, 'Flug', 'FlÃ¼ge', 'M', 'flight'),
(42, 'Flughafen', 'FlughÃ¤fen', 'M', 'airport'),
(43, 'Formular', 'Formulare', 'N', 'form'),
(44, 'Foto', 'Fotos', 'N', 'photo'),
(45, 'Fotoapparat', 'Fotoapparate', 'M', 'camera'),
(46, 'Frage', 'Fragen', 'F', 'question'),
(47, 'Frau', 'Frauen', 'F', 'woman'),
(48, 'Freund', 'Freunde', 'M', 'friend'),
(49, 'Friseur', 'Friseure', 'M', 'barber'),
(50, 'FÃ¼hrerschein', 'FÃ¼hrerscheine', 'M', 'driving licence'),
(51, 'Geburtsjahr', 'Geburtsjahre', 'N', 'year of birth'),
(52, 'Geburtsort', 'Geburtsorte', 'M', 'city of birth'),
(53, 'Geschoss', 'Geschosse', 'N', 'floor'),
(54, 'GesprÃ¤ch', 'GesprÃ¤che', 'N', 'conversation'),
(55, 'Gitarre', 'Gitarren', 'F', 'guitar'),
(56, 'Glas', 'GlÃ¤ser', 'N', 'glass'),
(57, 'GrÃ¶ÃŸe', 'GrÃ¶ÃŸen', 'F', 'size'),
(58, 'HÃ¤lfte', 'HÃ¤lften', 'F', 'half'),
(59, 'Hauptstadt', 'HauptstÃ¤dte', 'F', 'capital'),
(60, 'Haus', 'HÃ¤user', 'N', 'house'),
(61, 'Haushalt', 'Haushalte', 'M', 'budget'),
(62, 'Herr', 'Herren', 'M', 'Mister'),
(63, 'Information', 'Informationen', 'F', 'information'),
(64, 'Ingenieur', 'Ingenieure', 'M', 'engineer'),
(65, 'Jahr', 'Jahre', 'N', 'year'),
(66, 'Kaffee', 'Kaffees', 'M', 'coffee'),
(67, 'Kasse', 'Kassen', 'F', 'cash box'),
(68, 'Kellnerin', 'Kellnerinnen', 'F', 'waitress'),
(69, 'Kilometer', 'Kilometer', 'M', 'kilometre'),
(70, 'Kind', 'Kinder', 'N', 'child'),
(71, 'Kiosk', 'Kioske', 'M', 'kiosk'),
(72, 'Kollegin', 'Kolleginnen', 'F', 'colleague (female)'),
(73, 'KÃ¼che', 'KÃ¼chen', 'F', 'kitchen'),
(74, 'Kuchen', 'Kuchen', 'M', 'cake'),
(75, 'KÃ¼hlschrank', 'KÃ¼hlschrÃ¤nke', 'M', 'refrigerator'),
(76, 'Kunde', 'Kunden', 'M', 'customer'),
(77, 'Kurs', 'Kurse', 'M', 'course'),
(78, 'Lampe', 'Lampen', 'F', 'lamp'),
(79, 'Land', 'LÃ¤nder', 'N', 'country'),
(80, 'Lehrerin', 'Lehrerinnen', 'F', 'teacher (female)'),
(81, 'Lied', 'Lieder', 'N', 'song'),
(82, 'Mann', 'MÃ¤nner', 'M', 'man'),
(83, 'Mantel', 'MÃ¤ntel', 'M', 'coat'),
(84, 'Methode', 'Methoden', 'F', 'method'),
(85, 'Million', 'Millionen', 'F', 'million'),
(86, 'Minute', 'Minuten', 'F', 'minute'),
(87, 'Moment', 'Momente', 'M', 'moment'),
(88, 'Monat', 'Monate', 'M', 'month'),
(89, 'Morgen', 'Morgen', 'M', 'morning'),
(90, 'Nachbar', 'Nachbarn', 'M', 'neighbour'),
(91, 'Nachmittag', 'Nachmittage', 'M', 'afternoon'),
(92, 'Nachname', 'Nachnamen', 'M', 'last name'),
(93, 'Name', 'Namen', 'M', 'name'),
(94, 'Neujahr', 'Neujahre', 'N', 'New Year'),
(95, 'Notiz', 'Notizen', 'F', 'note'),
(96, 'Nummer', 'Nummern', 'F', 'number'),
(97, 'Ort', 'Orte', 'M', 'place'),
(98, 'Paar', 'Paare', 'N', 'pair'),
(99, 'Pass', 'PÃ¤sse', 'M', 'passport'),
(100, 'Person', 'Personen', 'F', 'person'),
(101, 'Platz', 'PlÃ¤tze', 'M', 'place'),
(102, 'Portion', 'Portionen', 'F', 'portion'),
(103, 'Preis', 'Preise', 'M', 'price'),
(104, 'Prozent', 'Prozente', 'N', 'percent'),
(105, 'Radio', 'Radios', 'N', 'radio'),
(106, 'Regal', 'Regale', 'N', 'shelf'),
(107, 'Religion', 'Religionen', 'F', 'religion'),
(108, 'Risiko', 'Risiken', 'N', 'risk'),
(109, 'Saft', 'SÃ¤fte', 'M', 'juice'),
(110, 'Salat', 'Salate', 'M', 'salad'),
(111, 'Schokolade', 'Schokoladen', 'F', 'chocolate'),
(112, 'Schrank', 'SchrÃ¤nke', 'M', 'cupboard'),
(113, 'Seite', 'Seiten', 'F', 'page'),
(114, 'Sessel', 'Sessel', 'M', 'armchair'),
(115, 'Situation', 'Situationen', 'F', 'situation'),
(116, 'Sofa', 'Sofas', 'N', 'sofa'),
(117, 'Speisekarte', 'Speisekarten', 'F', 'menu'),
(118, 'Sprache', 'Sprachen', 'F', 'language'),
(119, 'StaatsangehÃ¶rigkeit', 'StaatsangehÃ¶rigkeiten', 'F', 'citizenship'),
(120, 'Stadt', 'StÃ¤dte', 'F', 'city'),
(121, 'Staubsauger', 'Staubsauger', 'M', 'hoover'),
(122, 'Stock', 'Stockwerke', 'M', 'stock'),
(123, 'StraÃŸe', 'StraÃŸen', 'F', 'street'),
(124, 'StÃ¼ck', 'StÃ¼cke', 'N', 'piece'),
(125, 'Student', 'Studenten', 'M', 'student'),
(126, 'Stuhl', 'StÃ¼hle', 'M', 'chair'),
(127, 'Stunde', 'Stunden', 'F', 'lesson'),
(128, 'Suppe', 'Suppen', 'F', 'soup'),
(129, 'Tag', 'Tage', 'M', 'day'),
(130, 'Tasse', 'Tassen', 'F', 'cup'),
(131, 'Taxifahrer', 'Taxifahrer', 'M', 'taxidriver'),
(132, 'Tee', 'Tees', 'M', 'tea'),
(133, 'Teil', 'Teile', 'M', 'piece'),
(134, 'Telefon', 'Telefone', 'N', 'telephone'),
(135, 'Telefonnummer', 'Telefonnummern', 'F', 'phone number'),
(136, 'Teppich', 'Teppiche', 'M', 'carpet'),
(137, 'Text', 'Texte', 'M', 'text'),
(138, 'Tisch', 'Tische', 'M', 'table'),
(139, 'Topf', 'TÃ¶pfe', 'M', 'pot'),
(140, 'Tourist', 'Touristen', 'M', 'tourist'),
(141, 'TÃ¼r', 'TÃ¼ren', 'F', 'door'),
(142, 'VerkÃ¤ufer', 'VerkÃ¤ufer', 'M', 'vendor; salesman'),
(143, 'Viertel', 'Viertel', 'N', 'quarter'),
(144, 'Vorname', 'Vornamen', 'M', 'first name'),
(145, 'WÃ¤hrung', 'WÃ¤hrungen', 'F', 'currency'),
(146, 'Waschmaschine', 'Waschmaschinen', 'F', 'washing machine'),
(147, 'Wein', 'Weine', 'M', 'wine'),
(148, 'Werbung', 'Werbungen', 'F', 'advertising; promotion'),
(149, 'Woche', 'Wochen', 'F', 'week'),
(150, 'Wohnung', 'Wohnungen', 'F', 'apartment'),
(151, 'Wort', 'WÃ¶rter', 'N', 'word'),
(152, 'WÃ¼rstchen', 'WÃ¼rstchen', 'N', 'sausage'),
(153, 'Zahl', 'Zahlen', 'F', 'cipher'),
(154, 'Zeit', 'Zeiten', 'F', 'time'),
(155, 'Zeitschrift', 'Zeitschriften', 'F', 'magazine; journal'),
(156, 'Zeitung', 'Zeitungen', 'F', 'newspaper'),
(157, 'Zentrum', 'Zentren', 'N', 'centre'),
(158, 'Zettel', 'Zettel', 'M', 'bill'),
(159, 'Zigarette', 'Zigaretten', 'F', 'cigarette'),
(160, 'Zimmer', 'Zimmer', 'N', 'room'),
(161, 'Zustand', 'ZustÃ¤nde', 'M', 'status; state');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
