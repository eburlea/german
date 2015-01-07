-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2015 at 04:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
`id_noun` int(10) unsigned NOT NULL,
  `noun_sg` varchar(255) DEFAULT NULL,
  `noun_pl` varchar(255) DEFAULT NULL,
  `gender` enum('M','F','N','M/F') NOT NULL,
  `translation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

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
(7, 'Angestellte', 'Angestellten', 'M/F', 'employee'),
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
(18, 'Banane', 'Bananen', 'F', 'banana'),
(19, 'Beispiel', 'Beispiele', 'N', 'example'),
(20, 'Beruf', 'Berufe', 'M', 'profession'),
(21, 'Besuch', 'Besuche', 'M', 'visit'),
(22, 'Bett', 'Betten', 'N', 'bed'),
(23, 'Bier', 'Biere', 'N', 'bier'),
(24, 'Bild', 'Bilder', 'N', 'image'),
(25, 'Bonbon', 'Bonbons', 'N', 'candy'),
(26, 'Brot', 'Brote', 'N', 'bread'),
(27, 'Bruder', 'BrÃ¼der', 'M', 'brother'),
(28, 'Buch', 'BÃ¼cher', 'N', 'book'),
(29, 'Buchstabe', 'Buchstaben', 'M', 'letter'),
(30, 'BÃ¼ro', 'BÃ¼ros', 'N', 'office'),
(31, 'Butter', '-', 'F', 'butter'),
(32, 'Chance', 'Chancen', 'F', 'chance; opportunity'),
(33, 'Computer', 'Computer', 'M', 'computer'),
(34, 'Couch', 'Couches', 'F', 'couch'),
(35, 'Dank', '-', 'M', 'thanks'),
(36, 'Dose', 'Dosen', 'F', 'dose'),
(37, 'Durchsage', 'Durchsagen', 'F', 'announcement'),
(38, 'Durst', '-', 'M', 'thirst'),
(39, 'Ei', 'Eier', 'N', 'egg'),
(40, 'Einwohner', 'Einwohner', 'M', 'population'),
(41, 'Entschuldigung', 'Entschuldigungen', 'F', 'apology'),
(42, 'Fahrer', 'Fahrer', 'M', 'driver'),
(43, 'Fahrrad', 'FahrrÃ¤der', 'N', 'bicycle'),
(44, 'Familie', 'Familien', 'F', 'family'),
(45, 'Familienname', 'Familiennamen', 'M', 'last name'),
(46, 'Familienstand', '-', 'M', 'civil status'),
(47, 'Farbe', 'Farben', 'F', 'colour'),
(48, 'Fehler', 'Fehler', 'M', 'mistake'),
(49, 'Fernseher', 'Fernseher', 'M', 'TV set'),
(50, 'Firma', 'Firmen', 'F', 'company'),
(51, 'Fisch', 'Fische', 'M', 'fish'),
(52, 'Flasche', 'Flaschen', 'F', 'bottle'),
(53, 'Fleisch', '-', 'N', 'meat'),
(54, 'Flug', 'FlÃ¼ge', 'M', 'flight'),
(55, 'Flughafen', 'FlughÃ¤fen', 'M', 'airport'),
(56, 'Formular', 'Formulare', 'N', 'form'),
(57, 'Foto', 'Fotos', 'N', 'photo'),
(58, 'Fotoapparat', 'Fotoapparate', 'M', 'camera'),
(59, 'Frage', 'Fragen', 'F', 'question'),
(60, 'Frau', 'Frauen', 'F', 'woman'),
(61, 'Freund', 'Freunde', 'M', 'friend'),
(62, 'Friseur', 'Friseure', 'M', 'barber'),
(63, 'FÃ¼hrerschein', 'FÃ¼hrerscheine', 'M', 'driving licence'),
(64, 'Gang', 'Gange', 'M', 'corridor'),
(65, 'Geburtsjahr', 'Geburtsjahre', 'N', 'year of birth'),
(66, 'Geburtsort', 'Geburtsorte', 'M', 'city of birth'),
(67, 'Geburtstag', 'Geburtstage', 'M', 'birthday'),
(68, 'GemÃ¼se', '-', 'N', 'vegetable'),
(69, 'Geschenk', 'Geschenke', 'N', 'gift'),
(70, 'Geschichte', 'Geschichten', 'F', 'story'),
(71, 'Geschoss', 'Geschosse', 'N', 'floor'),
(72, 'GesprÃ¤ch', 'GesprÃ¤che', 'N', 'conversation'),
(73, 'GewÃ¼rz', 'GewÃ¼rze', 'N', 'spice; condiment'),
(74, 'Gitarre', 'Gitarren', 'F', 'guitar'),
(75, 'Glas', 'GlÃ¤ser', 'N', 'glass'),
(76, 'Gramm', 'Gramm', 'N', 'gram'),
(77, 'GrÃ¶ÃŸe', 'GrÃ¶ÃŸen', 'F', 'size'),
(78, 'HÃ¤lfte', 'HÃ¤lften', 'F', 'half'),
(79, 'Hauptstadt', 'HauptstÃ¤dte', 'F', 'capital'),
(80, 'Haus', 'HÃ¤user', 'N', 'house'),
(81, 'Haushalt', 'Haushalte', 'M', 'budget'),
(82, 'Herr', 'Herren', 'M', 'Mister'),
(83, 'Hunger', '-', 'M', 'hunger'),
(84, 'Information', 'Informationen', 'F', 'information'),
(85, 'Ingenieur', 'Ingenieure', 'M', 'engineer'),
(86, 'Jahr', 'Jahre', 'N', 'year'),
(87, 'Kaffee', 'Kaffees', 'M', 'coffee'),
(88, 'Kartoffel', 'Kartoffeln', 'F', 'potato'),
(89, 'KÃ¤se', '-', 'M', 'cheese'),
(90, 'Kasse', 'Kassen', 'F', 'cash box'),
(91, 'Kasten', 'KÃ¤sten', 'M', 'box'),
(92, 'Kellnerin', 'Kellnerinnen', 'F', 'waitress'),
(93, 'Kilo', 'Kilos', 'N', 'kilo'),
(94, 'Kilometer', 'Kilometer', 'M', 'kilometre'),
(95, 'Kind', 'Kinder', 'N', 'child'),
(96, 'Kiosk', 'Kioske', 'M', 'kiosk'),
(97, 'Kneipe', 'Kneipen', 'F', 'pub; bar'),
(98, 'Koffer', 'Koffer', 'M', 'suitcase'),
(99, 'Kollege', 'Kollegen', 'M', 'colleague'),
(100, 'Kollegin', 'Kolleginnen', 'F', 'colleague (female)'),
(101, 'Kontakt', 'Kontakte', 'M', 'contact'),
(102, 'KÃ¼che', 'KÃ¼chen', 'F', 'kitchen'),
(103, 'Kuchen', 'Kuchen', 'M', 'cake'),
(104, 'Kugelschreiber', 'Kugelschreiber', 'M', 'ballpen'),
(105, 'KÃ¼hlschrank', 'KÃ¼hlschrÃ¤nke', 'M', 'refrigerator'),
(106, 'Kunde', 'Kunden', 'M', 'customer'),
(107, 'Kurs', 'Kurse', 'M', 'course'),
(108, 'Lampe', 'Lampen', 'F', 'lamp'),
(109, 'Land', 'LÃ¤nder', 'N', 'country'),
(110, 'Lehrerin', 'Lehrerinnen', 'F', 'teacher (female)'),
(111, 'Lied', 'Lieder', 'N', 'song'),
(112, 'Liter', 'Liter', 'M', 'liter'),
(113, 'Mann', 'MÃ¤nner', 'M', 'man'),
(114, 'Mantel', 'MÃ¤ntel', 'M', 'coat'),
(115, 'Mehl', '-', 'N', 'flour'),
(116, 'Messer', 'Messer', 'N', 'knife'),
(117, 'Methode', 'Methoden', 'F', 'method'),
(118, 'Milch-Produkt', 'Milch-Produkte', 'N', 'milk product'),
(119, 'Million', 'Millionen', 'F', 'million'),
(120, 'Minute', 'Minuten', 'F', 'minute'),
(121, 'Moment', 'Momente', 'M', 'moment'),
(122, 'Monat', 'Monate', 'M', 'month'),
(123, 'Morgen', 'Morgen', 'M', 'morning'),
(124, 'Mutter', 'MÃ¼tter', 'F', 'mother'),
(125, 'Nachbar', 'Nachbarn', 'M', 'neighbour'),
(126, 'Nachmittag', 'Nachmittage', 'M', 'afternoon'),
(127, 'Nachname', 'Nachnamen', 'M', 'last name'),
(128, 'Name', 'Namen', 'M', 'name'),
(129, 'Neujahr', 'Neujahre', 'N', 'New Year'),
(130, 'Notiz', 'Notizen', 'F', 'note'),
(131, 'Nummer', 'Nummern', 'F', 'number'),
(132, 'Ober', 'Ober', 'M', 'waiter'),
(133, 'Obst', '-', 'N', 'fruit'),
(134, 'Ã–l', 'Ã–le', 'N', 'oil'),
(135, 'Orange', 'Orangen', 'F', 'orange'),
(136, 'Ort', 'Orte', 'M', 'place; location'),
(137, 'Paar', 'Paare', 'N', 'pair'),
(138, 'Packung', 'Packungen', 'F', 'package'),
(139, 'Paket', 'Pakete', 'N', 'packet'),
(140, 'Partner', 'Partner', 'M', 'partner'),
(141, 'Pass', 'PÃ¤sse', 'M', 'passport'),
(142, 'Person', 'Personen', 'F', 'person'),
(143, 'Pfeffer', '-', 'M', 'pepper'),
(144, 'Pfund', 'Pfunde', 'N', 'pound'),
(145, 'Platz', 'PlÃ¤tze', 'M', 'place'),
(146, 'Portion', 'Portionen', 'F', 'portion'),
(147, 'Preis', 'Preise', 'M', 'price'),
(148, 'Problem', 'Probleme', 'N', 'problem'),
(149, 'Produkt', 'Produkte', 'N', 'product'),
(150, 'Projekt', 'Projekte', 'N', 'project'),
(151, 'Prozent', 'Prozente', 'N', 'percent'),
(152, 'Putzmittel', 'Putzmittel', 'N', 'cleaning agent'),
(153, 'Radio', 'Radios', 'N', 'radio'),
(154, 'Rat', 'RatschlÃ¤ge', 'M', 'counsel; advice'),
(155, 'Regal', 'Regale', 'N', 'shelf'),
(156, 'Reis', '-', 'M', 'rice'),
(157, 'Religion', 'Religionen', 'F', 'religion'),
(158, 'Risiko', 'Risiken', 'N', 'risk'),
(159, 'Saft', 'SÃ¤fte', 'M', 'juice'),
(160, 'Salat', 'Salate', 'M', 'salad'),
(161, 'Salz', '-', 'N', 'salt'),
(162, 'Schachtel', 'Schachteln', 'F', 'box; packet'),
(163, 'Schinken', '-', 'M', 'ham'),
(164, 'Schokolade', 'Schokoladen', 'F', 'chocolate'),
(165, 'Schrank', 'SchrÃ¤nke', 'M', 'cupboard'),
(166, 'Seite', 'Seiten', 'F', 'page'),
(167, 'Sessel', 'Sessel', 'M', 'armchair'),
(168, 'Situation', 'Situationen', 'F', 'situation'),
(169, 'Sofa', 'Sofas', 'N', 'sofa'),
(170, 'Sohn', 'SÃ¶hne', 'M', 'son'),
(171, 'Speisekarte', 'Speisekarten', 'F', 'menu'),
(172, 'Sprache', 'Sprachen', 'F', 'language'),
(173, 'StaatsangehÃ¶rigkeit', 'StaatsangehÃ¶rigkeiten', 'F', 'citizenship'),
(174, 'Stadt', 'StÃ¤dte', 'F', 'city'),
(175, 'Staubsauger', 'Staubsauger', 'M', 'hoover'),
(176, 'Stock', 'Stockwerke', 'M', 'stock'),
(177, 'StraÃŸe', 'StraÃŸen', 'F', 'street'),
(178, 'StÃ¼ck', 'StÃ¼cke', 'N', 'piece'),
(179, 'Student', 'Studenten', 'M', 'student'),
(180, 'Stuhl', 'StÃ¼hle', 'M', 'chair'),
(181, 'Stunde', 'Stunden', 'F', 'lesson'),
(182, 'Supermarkt', 'SupermÃ¤rkte', 'M', 'supermarket'),
(183, 'Suppe', 'Suppen', 'F', 'soup'),
(184, 'SÃ¼ÃŸigkeit', 'SÃ¼ÃŸigkeiten', 'F', 'candy; sweet'),
(185, 'Tag', 'Tage', 'M', 'day'),
(186, 'Tasse', 'Tassen', 'F', 'cup'),
(187, 'Taxi', 'Taxis', 'N', 'taxi'),
(188, 'Taxifahrer', 'Taxifahrer', 'M', 'taxidriver'),
(189, 'Tee', 'Tees', 'M', 'tea'),
(190, 'Teil', 'Teile', 'M', 'piece'),
(191, 'Telefon', 'Telefone', 'N', 'telephone'),
(192, 'Telefonnummer', 'Telefonnummern', 'F', 'phone number'),
(193, 'Teppich', 'Teppiche', 'M', 'carpet'),
(194, 'Text', 'Texte', 'M', 'text'),
(195, 'Ticket', 'Tickets', 'N', 'ticket'),
(196, 'Tipp', 'Tipps', 'M', 'hint; tip'),
(197, 'Tisch', 'Tische', 'M', 'table'),
(198, 'Tochter', 'TÃ¶chter', 'F', 'daughter'),
(199, 'Tomate', 'Tomaten', 'F', 'tomato'),
(200, 'Topf', 'TÃ¶pfe', 'M', 'pot'),
(201, 'Tourist', 'Touristen', 'M', 'tourist'),
(202, 'TÃ¼r', 'TÃ¼ren', 'F', 'door'),
(203, 'TÃ¼te', 'TÃ¼ten', 'F', 'bag'),
(204, 'Vater', 'VÃ¤ter', 'M', 'father'),
(205, 'Verein', 'Vereine', 'M', 'society; association; club'),
(206, 'VerkÃ¤ufer', 'VerkÃ¤ufer', 'M', 'vendor; salesman'),
(207, 'Verzeihung', '-', 'F', 'pardon; forgiveness'),
(208, 'Viertel', 'Viertel', 'N', 'quarter'),
(209, 'Volkshochschule', 'Volkshochschulen', 'F', 'adult education centre'),
(210, 'Vorname', 'Vornamen', 'M', 'first name'),
(211, 'WÃ¤hrung', 'WÃ¤hrungen', 'F', 'currency'),
(212, 'Waschmaschine', 'Waschmaschinen', 'F', 'washing machine'),
(213, 'Waschmittel', 'Waschmittel', 'N', 'detergent; washing powder'),
(214, 'Wein', 'Weine', 'M', 'wine'),
(215, 'Werbung', 'Werbungen', 'F', 'advertising; promotion'),
(216, 'Woche', 'Wochen', 'F', 'week'),
(217, 'Wohnung', 'Wohnungen', 'F', 'apartment'),
(218, 'Wort', 'WÃ¶rter', 'N', 'word'),
(219, 'Wunsch', 'WÃ¼nsche', 'M', 'wish; request'),
(220, 'Wurst', 'WÃ¼rste', 'F', 'sausage'),
(221, 'WÃ¼rstchen', 'WÃ¼rstchen', 'N', 'sausage'),
(222, 'Zahl', 'Zahlen', 'F', 'cipher'),
(223, 'Zeit', 'Zeiten', 'F', 'time'),
(224, 'Zeitschrift', 'Zeitschriften', 'F', 'magazine; journal'),
(225, 'Zeitung', 'Zeitungen', 'F', 'newspaper'),
(226, 'Zentrum', 'Zentren', 'N', 'centre'),
(227, 'Zettel', 'Zettel', 'M', 'bill'),
(228, 'Zigarette', 'Zigaretten', 'F', 'cigarette'),
(229, 'Zimmer', 'Zimmer', 'N', 'room'),
(230, 'Zustand', 'ZustÃ¤nde', 'M', 'status; state');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noun`
--
ALTER TABLE `noun`
 ADD PRIMARY KEY (`id_noun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noun`
--
ALTER TABLE `noun`
MODIFY `id_noun` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
