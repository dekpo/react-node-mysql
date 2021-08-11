-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 11, 2021 at 07:59 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientId` char(5) NOT NULL,
  `NomSociete` varchar(40) NOT NULL,
  `ContactNom` varchar(30) DEFAULT NULL,
  `ContactTitre` varchar(30) DEFAULT NULL,
  `Adresse` varchar(60) DEFAULT NULL,
  `Ville` varchar(15) NOT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `CodePostal` varchar(10) DEFAULT NULL,
  `Pays` varchar(15) NOT NULL,
  `Telephone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientId`, `NomSociete`, `ContactNom`, `ContactTitre`, `Adresse`, `Ville`, `Region`, `CodePostal`, `Pays`, `Telephone`, `Fax`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Commercial', 'Obere Str. 57', 'BERLIN', NULL, '12209', 'Germany', '030-0074321', '030-0076545'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Proprietaire', 'Avda. de la Constitucion 2222', 'MEXICO D.F.', NULL, '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745'),
('ANTON', 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Proprietaire', 'Mataderos  2312', 'MEXICO D.F.', NULL, '05023', 'Mexico', '(5) 555-3932', NULL),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Commercial', '120 Hanover Sq.', 'LONDON', NULL, 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750'),
('AUXJO', 'Aux joyeux ecclesiastiques', 'Guylene Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'PARIS', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62'),
('BERGS', 'Berglunds snabbkop', 'Christina Berglund', 'Responsable des achats', 'Berguvsvagen  8', 'LULEA', NULL, 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67'),
('BIGFO', 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'BEND', 'OR', '97101', 'USA', '(503) 555-9931', NULL),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Commercial', 'Forsterstr. 57', 'MANNHEIM', NULL, '68306', 'Germany', '0621-08460', '0621-08924'),
('BLONP', 'Blondesddsl pere et fils', 'Frederique Citeaux', 'Responsable marketing', '24, place Kleber', 'STRASBOURG', NULL, '67000', 'France', '88.60.15.31', '88.60.15.32'),
('BOLID', 'Bolido Comidas preparadas', 'Martin Sommer', 'Proprietaire', 'C/ Araquil, 67', 'MADRID', NULL, '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99'),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Proprietaire', '12, rue des Bouchers', 'MARSEILLE', NULL, '13008', 'France', '91.24.45.40', '91.24.45.41'),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Responsable comptabilite', '23 Tsawassen Blvd.', 'TSAWASSEN', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745'),
('BRICO', 'Brico Nico', 'Nicolas Dupont', 'Plombier', '34, rue des Bidules', 'Lyon', 'Rhone-Alpes', '69007', 'France', NULL, NULL),
('BRINI', 'Brico Niquel', 'Nicolas Dupuis', 'Facteur', '34, rue des Trucs', 'Lyon', 'Rhone-Alpes', '69007', 'France', NULL, NULL),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Commercial', 'Fauntleroy Circus', 'LONDON', NULL, 'EC2 5NT', 'UK', '(171) 555-1212', NULL),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Assistant', 'Cerrito 333', 'BUENOS AIRES', NULL, '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892'),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Responsable marketing', 'Sierras de Granada 9993', 'MEXICO D.F.', NULL, '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293'),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Proprietaire', 'Hauptstr. 29', 'BERN', NULL, '3012', 'Switzerland', '0452-076545', NULL),
('COBRI', 'Brico Nico', 'Nicolas Dupont', 'Plombier', '34, rue des Bidules', 'Lyon', 'Rhone-Alpes', '69007', 'France', NULL, NULL),
('COMMI', 'Comercio Mineiro', 'Pedro Afonso', 'Responsable commercial', 'Av. dos Lusiadas, 23', 'SAO PAULO', 'SP', '05432-043', 'Brazil', '(11) 555-7647', NULL),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Commercial', 'Berkeley Gardens 12  Brewery', 'LONDON', NULL, 'WX1 6LT', 'UK', '(171) 555-2282', '(171) 555-9199'),
('COOPE', 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'OVIEDO', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Responsable des achats', 'Walserweg 21', 'AACHEN', NULL, '52066', 'Germany', '0241-039123', '0241-059428'),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Proprietaire', '67, rue des Cinquante Otages', 'NANTES', NULL, '44000', 'France', '40.67.88.88', '40.67.89.89'),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Assistant', '35 King George', 'LONDON', NULL, 'WX3 6FW', 'UK', '(171) 555-0297', '(171) 555-3373'),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Responsable des ventes', 'Kirchgasse 6', 'GRAZ', NULL, '8010', 'Austria', '7675-3425', '7675-3426'),
('ESCAR', 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'MONTCEAU', NULL, '71300', 'France', '85.57.00.07', NULL),
('EXOTI', 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'LONDON', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Assistant marketing', 'Rua Oros, 92', 'SAO PAULO', 'SP', '05442-030', 'Brazil', '(11) 555-9857', NULL),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Responsable comptabilite', 'C/ Moralzarzal, 86', 'MADRID', NULL, '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93'),
('FOLIG', 'Folies gourmandes', 'Martine Rance', 'Assistant ventes', '184, chaussee de Tournai', 'LILLE', NULL, '59000', 'France', '20.16.10.16', '20.16.10.17'),
('FOLKO', 'Folk och fa HB', 'Maria Larsson', 'Proprietaire', 'Akergatan 24', 'BRACKE', NULL, 'S-844 67', 'Sweden', '0695-34 67 21', NULL),
('FORET', 'Forets d\'erables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'STE-HYACINTHE', 'Quebec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921'),
('FORMA', 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'RAVENNA', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603'),
('FRANK', 'Frankenversand', 'Peter Franken', 'Responsable marketing', 'Berliner Platz 43', 'MUNCHEN', NULL, '80805', 'Germany', '089-0877310', '089-0877451'),
('FRANR', 'France restauration', 'Carine Schmitt', 'Responsable marketing', '54, rue Royale', 'NANTES', NULL, '44000', 'France', '40.32.21.21', '40.32.21.20'),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Commercial', 'Via Monte Bianco 34', 'TORINO', NULL, '10100', 'Italy', '011-4988260', '011-4988261'),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Responsable des ventes', 'Jardim das rosas n. 32', 'LISBOA', NULL, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
('GALED', 'Galeria del gastronomo', 'Eduardo Saavedra', 'Responsable marketing', 'Rambla de Cataluna, 23', 'BARCELONA', NULL, '08022', 'Spain', '(93) 203 4560', '(93) 203 4561'),
('GDAY,', 'G\'day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter\'s Hill', 'SYDNEY', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873'),
('GODOS', 'Godos Cocina Tipica', 'Jose Pedro Freyre', 'Responsable des ventes', 'C/ Romero, 33', 'SEVILLA', NULL, '41101', 'Spain', '(95) 555 82 82', NULL),
('GOURL', 'Gourmet Lanchonetes', 'Andre Fonseca', 'Responsable commercial', 'Av. Brasil, 442', 'CAMPINAS', 'SP', '04876-786', 'Brazil', '(11) 555-9482', NULL),
('GRAND', 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'ANN ARBOR', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349'),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Responsable marketing', '2732 Baker Blvd.', 'EUGENE', 'OR', '97403', 'USA', '(503) 555-7555', NULL),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Proprietaire', '5? Ave. Los Palos Grandes', 'CARACAS', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397'),
('GRUYE', 'Gruyere Fameux', NULL, NULL, NULL, 'FRIBOURG', NULL, NULL, 'Suisse', NULL, NULL),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Responsable comptabilite', 'Rua do Paco, 67', 'RIO DE JANEIRO', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765'),
('HELIS', 'Heli Su?waren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstra?e 5', 'BERLIN', NULL, '10785', 'Germany', '(010) 9984510', NULL),
('HILAA', 'HILARION-Abastos', 'Carlos Hernandez', 'Commercial', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'SAN CRISTOBAL', 'Tachira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Commercial', 'Ville Center Plaza 516 Main St.', 'ELGIN', 'OR', '97827', 'USA', '(503) 555-6874', '(503) 555-2376'),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Responsable commercial', '8 Johnstown Road', 'CORK', 'Co. Cork', NULL, 'Ireland', '2967 542', '2967 3333'),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Responsable marketing', 'Garden House Crowther Way', 'COWES', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', NULL),
('JUNKF', 'Junkfood', 'John Smith', 'Sales Manager', '79 Regent St.', 'LONDON', NULL, 'WC1 6AB', 'UK', '(171) 555-1234', NULL),
('KARKK', 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'LAPPEENRANTA', NULL, '53120', 'Finland', '(953) 10956', NULL),
('KOENE', 'Koniglich Essen', 'Philip Cramer', 'Responsable commercial', 'Maubelstr. 90', 'BRANDENBURG', NULL, '14776', 'Germany', '0555-09876', NULL),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Commercial', '67, avenue de l\'Europe', 'VERSAILLES', NULL, '78000', 'France', '30.59.84.10', '30.59.85.11'),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Responsable des ventes', '1 rue Alsace-Lorraine', 'TOULOUSE', NULL, '31000', 'France', '61.77.61.10', '61.77.61.11'),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Assistant marketing', '1900 Oak St.', 'VANCOUVER', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293'),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Responsable marketing', '12 Orchestra Terrace', 'WALLA WALLA', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221'),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Commercial', 'Magazinweg 7', 'FRANKFURT A.M.', NULL, '60528', 'Germany', '069-0245984', '069-0245874'),
('LEKAT', 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'SINGAPORE', NULL, '0512', 'Singapore', '555-8787', NULL),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Proprietaire', '87 Polk St. Suite 5', 'SAN FRANCISCO', 'CA', '94117', 'USA', '(415) 555-5938', NULL),
('LILAS', 'LILA-Supermercado', 'Carlos Gonzalez', 'Responsable comptabilite', 'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', 'BARQUISIMETO', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256'),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Proprietaire', 'Ave. 5 de Mayo Porlamar', 'I. DE MARGARITA', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Responsable des ventes', '89 Chiaroscuro Rd.', 'PORTLAND', 'OR', '97219', 'USA', '(503) 555-9573', '(503) 555-9646'),
('LYBYS', 'Lyngbysild', 'Niels Petersen', 'Responsable des ventes', 'Lyngbysild Fiskebakken 10', 'LYNGBY', NULL, '2800', 'Denmark', '43844108', '43844115'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Responsable marketing', 'Via Ludovico il Moro 22', 'BERGAMO', NULL, '24100', 'Italy', '035-640230', '035-640231'),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Assistant', 'Rue Joseph-Bens 532', 'BRUXELLES', NULL, 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68'),
('MAMAI', 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'MONTREAL', 'Quebec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL),
('MAYUM', 'Mayumi\'s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'OSAKA', NULL, '545', 'Japan', '(06) 431-7877', NULL),
('MEREP', 'Mere Paillarde', 'Jean Fresniere', 'Assistant marketing', '43 rue St. Laurent', 'MONTREAL', 'Quebec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055'),
('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Assistant marketing', 'Heerstr. 22', 'LEIPZIG', NULL, '04179', 'Germany', '0342-023176', NULL),
('NEWEN', 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'BOSTON', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389'),
('NEWOR', 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'NEW ORLEANS', 'LA', '70117', 'USA', '(100) 555-4822', NULL),
('NICOB', 'Brico Nico', 'Nicolas Dupont', 'Plombier', '34, rue des Bidules', 'Lyon', 'Rhone-Alpes', '69007', 'France', NULL, NULL),
('NOMEI', 'Norske Meierier', 'Beate Vileid', 'Responsable marketing', 'Hatlevegen 5', 'SANDVIKA', NULL, '1320', 'Norway', '(0)2-953010', NULL),
('NORDO', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'CUXHAVEN', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714'),
('NORTS', 'North/South', 'Simon Crowther', 'Responsable commercial', 'South House 300 Queensbridge', 'LONDON', NULL, 'SW7 1RZ', 'UK', '(171) 555-7733', '(171) 555-2530'),
('OCEAN', 'Oceano Atlantico Ltda.', 'Yvonne Moncada', 'Assistant', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'BUENOS AIRES', NULL, '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535'),
('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Commercial', '2743 Bering St.', 'ANCHORAGE', 'AK', '99508', 'USA', '(907) 555-7584', '(907) 555-2880'),
('OTTIK', 'Ottilies Kaseladen', 'Henriette Pfalzheim', 'Proprietaire', 'Mehrheimerstr. 369', 'KOLN', NULL, '50739', 'Germany', '0221-0644327', '0221-0765721'),
('PARIS', 'Paris specialites', 'Marie Bertrand', 'Proprietaire', '12, rue du Commerce', 'PARIS', 'IDF', '75015', 'France', NULL, NULL),
('PASTA', 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'SALERNO', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667'),
('PATAT', 'Patate Sublime', NULL, NULL, NULL, 'TOULOUSE', NULL, NULL, 'France', NULL, NULL),
('PAVLO', 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'MELBOURNE', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588'),
('PBKNA', 'PB Knackebrod AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'GOTEBORG', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91'),
('PERIC', 'Pericles Comidas clasicas', 'Guillermo Fernandez', 'Commercial', 'Calle Dr. Jorge Cash 321', 'MEXICO D.F.', NULL, '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745'),
('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Responsable des ventes', 'Geislweg 14', 'SALZBURG', NULL, '5020', 'Austria', '6562-9722', '6562-9723'),
('PLUTZ', 'Plutzer Lebensmittelgro?markte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'FRANKFURT', NULL, '60439', 'Germany', '(069) 992755', NULL),
('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Commercial', 'Estrada da saude n. 58', 'LISBOA', NULL, '1756', 'Portugal', '(1) 356-5634', NULL),
('QUEDE', 'Queen Delicia', 'Bernardo Batista', 'Responsable comptabilite', 'Rua da Panificadora, 12', 'RIO DE JANEIRO', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545'),
('QUEEN', 'Queen Delicia', 'Lucia Carvalho', 'Assistant marketing', 'Alameda dos Canarios, 891', 'SAO PAULO', 'SP', '05487-020', 'Brazil', '(11) 555-1189', NULL),
('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Responsable comptabilite', 'Taucherstra?e 10', 'CUNEWALDE', NULL, '01307', 'Germany', '0372-035188', NULL),
('RANCH', 'Rancho grande', 'Sergio Gutierrez', 'Commercial', 'Av. del Libertador 900', 'BUENOS AIRES', NULL, '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556'),
('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant ventes', '2817 Milton Dr.', 'ALBUQUERQUE', 'NM', '87110', 'USA', '(505) 555-5939', '(505) 555-3620'),
('REFRE', 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'SAO PAULO', NULL, '5442', 'Brazil', '(11) 555 4640', NULL),
('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Responsable commercial', 'Strada Provinciale 124', 'REGGIO EMILIA', NULL, '42100', 'Italy', '0522-556721', '0522-556722'),
('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'RIO DE JANEIRO', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', NULL),
('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Responsable des ventes', 'Grenzacherweg 237', 'GENEVE', NULL, '1203', 'Switzerland', '0897-034214', NULL),
('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Responsable comptabilite', 'Gran Via, 1', 'MADRID', NULL, '28001', 'Spain', '(91) 745 6200', '(91) 745 6210'),
('SANTG', 'Sante Gourmet', 'Jonas Bergulfsen', 'Proprietaire', 'Erling Skakkes gate 78', 'STAVERN', NULL, '4110', 'Norway', '07-98 92 35', '07-98 92 47'),
('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Commercial', '187 Suffolk Ln.', 'BOISE', 'ID', '83720', 'USA', '(208) 555-8097', NULL),
('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Responsable des ventes', '90 Wadhurst Rd.', 'LONDON', NULL, 'OX15 4NB', 'UK', '(171) 555-1717', '(171) 555-5646'),
('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Proprietaire', 'Vinb?ltet 34', 'KOBENHAVN', NULL, '1734', 'Denmark', '31 12 34 56', '31 13 35 57'),
('SPECD', 'Specialites du monde', 'Dominique Perrier', 'Responsable marketing', '25, rue Lauriston', 'PARIS', NULL, '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20'),
('SPECI', 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King\'s Way', 'MANCHESTER', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL),
('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Responsable des ventes', 'P.O. Box 555', 'LANDER', 'WY', '82520', 'USA', '(307) 555-4680', '(307) 555-6525'),
('SUPRD', 'Supremes delices', 'Pascale Cartrain', 'Responsable comptabilite', 'Boulevard Tirou, 255', 'CHARLEROI', NULL, 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21'),
('SVENS', 'Svensk Sjofoda AB', 'Michael Bjorn', 'Sales Representative', 'Brovallavagen 231', 'STOCKHOLM', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL),
('THEBI', 'The Big Cheese', 'Liz Nixon', 'Responsable marketing', '89 Jefferson Way Suite 2', 'PORTLAND', 'OR', '97201', 'USA', '(503) 555-3612', NULL),
('THECR', 'The Cracker Box', 'Liu Wong', 'Assistant marketing', '55 Grizzly Peak Rd.', 'BUTTE', 'MT', '59801', 'USA', '(406) 555-5834', '(406) 555-8083'),
('TOKYO', 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'TOKYO', NULL, '100', 'Japan', '(03) 3555-5011', NULL),
('TOMSP', 'Toms Spezialitaten', 'Karin Josephs', 'Responsable marketing', 'Luisenstr. 48', 'MUNSTER', NULL, '44087', 'Germany', '0251-031259', '0251-035695'),
('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Proprietaire', 'Avda. Azteca 123', 'MEXICO D.F.', NULL, '05033', 'Mexico', '(5) 555-2933', NULL),
('TRADH', 'Tradicao Hipermercados', 'Anabela Domingues', 'Commercial', 'Av. Ines de Castro, 414', 'SAO PAULO', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168'),
('TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Responsable commercial', '722 DaVinci Blvd.', 'KIRKLAND', 'WA', '98034', 'USA', '(206) 555-8257', '(206) 555-2174'),
('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Responsable des ventes', 'Smagsloget 45', 'ARHUS', NULL, '8200', 'Denmark', '86 21 32 43', '86 22 33 44'),
('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Assistant', '2, rue du Commerce', 'LYON', NULL, '69004', 'France', '78.32.54.86', '78.32.54.87'),
('VIDE2', 'Video2Brain', 'Dupuis Chantal', 'Responsable de Achats', 'Strasse', 'GRAZ', NULL, '8020', 'Autriche', NULL, NULL),
('VIDEO', 'Video2Brain', NULL, NULL, NULL, 'GRAZ', NULL, NULL, 'Autriche', NULL, NULL),
('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Responsable comptabilite', '59 rue de l\'Abbaye', 'REIMS', NULL, '51100', 'France', '26.47.15.10', '26.47.15.11'),
('WANDK', 'Die Wandernde Kuh', 'Rita Muller', 'Commercial', 'Adenauerallee 900', 'STUTTGART', NULL, '70563', 'Germany', '0711-020361', '0711-035428'),
('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Responsable comptabilite', 'Torikatu 38', 'OULU', NULL, '90110', 'Finland', '981-443655', '981-443655'),
('WELLI', 'Wellington Importadora', 'Paula Parente', 'Responsable des ventes', 'Rua do Mercado, 12', 'RESENDE', 'SP', '08737-363', 'Brazil', '(14) 555-8122', NULL),
('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Proprietaire', '305 - 14th Ave. S. Suite 3B', 'SEATTLE', 'WA', '98128', 'USA', '(206) 555-4112', '(206) 555-4115'),
('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Proprietaire', 'Keskuskatu 45', 'HELSINKI', NULL, '21240', 'Finland', '90-224 8858', '90-224 8858'),
('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Proprietaire', 'ul. Filtrowa 68', 'WARSZAWA', NULL, '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012'),
('ZAANS', 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'ZAANDAM', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
