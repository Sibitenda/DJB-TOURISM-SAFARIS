-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 05:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-05-13 08:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'bina@gmail.com', '05/18/2020', '05/31/2020', '\"i want to spend 8 days', '2020-05-13 16:01:10', 2, 'u', '2020-05-13 18:30:23'),
(3, 1, 'bina@gmail.com', '2020-07-22', '2020-07-31', 'please', '2020-07-15 04:46:52', 2, 'u', '2020-07-15 10:05:53'),
(4, 7, 'cat@gmail.com', '2020-08-01', '2020-08-08', 'confirm me in time', '2020-07-24 15:30:59', 1, NULL, '2020-07-24 15:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'bina', 'bina.@gmail.com', '2354235235', 'Best Tourisim site, used since the 1500s', 'djcnjcnnddkjdsknmxnscjbebhbbvbbubeu', '2020-05-13 19:23:53', 1),
(2, 'ewrtyuio;', '1@gmail.com', '111111111', 'ertyujkl;\'', 'rtyjukilo;p\'k[\r\nl];\\4\'', '2020-07-14 12:27:47', 1),
(3, 'ewrtyuio;', '1@gmail.com', '111111111', 'ertyujkl;\'', 'rtyjukilo;p\'k[\r\nl];\\4\'', '2020-07-14 12:30:08', 1),
(4, 'ewrtyuio;', '1@gmail.com', '111111111', 'ertyujkl;\'', 'rtyjukilo;p\'k[\r\nl];\\4\'', '2020-07-14 12:30:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'bina@gmail.com', 'Cancellation', 'i got issues and i feel like postponing my dates', '2020-05-13 19:03:33', 'ugygbgcffdrfvghfxxxfxhhgvghgccfchgcf', '2020-05-13 20:50:40'),
(5, NULL, NULL, NULL, '2020-07-24 15:29:27', NULL, NULL),
(6, 'cat@gmail.com', 'Booking Issues', 'i want a discount', '2020-07-24 15:37:21', 'we have considered your inquiry and we have given you a 10% discount. Looking forward to work have business with you', '2020-07-24 15:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><font color=\"#990000\" style=\"\"><span style=\"font-weight: bold;\">(1) ACCEPTANCE OF TERMS</span></font></font></p><p align=\"justify\"><span style=\"font-size: small;\">details...................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................</span></p>\r\n										\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">details.......................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................</span>'),
(3, 'aboutus', '										<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">details.......................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................</span><br></div>\r\n										'),
(11, 'contact', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">details.......................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, '3-Day Trip To Murchison Falls', ' Private Tour', 'Mbarara trip', 900, 'Wildlife safaris and game drives, Lodge & Eco Lodge, Free cancellation,', 'Excellent trip with a great combination of activities. Our guide, William, was just perfect. Really ', '11.JPG', '2020-05-13 11:23:44', '2020-07-24 14:49:38'),
(2, '5-Day Gorilla Trekking, Big 5 & Big Cats Safari', 'Private Tour', 'Entebbe', 2500, 'free pick up, Wildlife safaris and game drives, Lodge & Eco Lodge, Private Vehicle', 'Our honeymoon also took us to Queen Elizabeth NP, Kibale NP and finally Bwindi NP in southwestern Ug', '12.jpg', '2020-07-13 10:20:08', '2020-07-24 14:57:47'),
(3, 'Chimps & Gorillas of Uganda', 'Group Tour', 'Mburo', 5800, 'Wildlife, Wildlife safaris and game drives, Gorilla and chimpanzee tracking & Safari', 'First time I have used Exodus and will certainly be using them again. Well organised and action pack', '13.jpg', '2020-07-24 15:03:46', NULL),
(4, '6-day Uganda Wildlife Safari Tour', 'Group Tour', 'Uganda wildlife', 2750, 'Park Entry fees, All meals and accommodation, Inland transportation in 4X4 mini van, Driver and guide', 'This tour will take you through the Ziwa Rhino Sanctuary where you will see a number of rhinos saved from extinction back in the 80’s. This place is also home to no less than 300 species of birds hovering above the swamps and Savannah in this sanctuary.\r\nA visit to Murchison Falls National Park is also included. Behold the famous Murchison Falls, where the waters of the Nile River squeeze through a narrow gorge. Wildlife viewing is exceptional with various species of mammals around.\r\n\r\nOur game drives allows visitors to drive through the park while viewing animals. The Park has several spots of well-maintained game viewing tracks.\r\n\r\nPlease refer to the itinerary for day-by-day activities.', '14.jpg', '2020-07-24 15:09:13', NULL),
(5, '7 Days Adventure Holiday Package in Uganda', 'Private Tour', 'Kampala', 2700, 'All necessary Ground Transportation including pick-ups and drop-offs, Driver/guide- English speaking, All the activities mentioned in the itinerary Park entrance fees, Accommodation and all Meals on a Full Board basis, Bottled drinking water, Transport in', 'Gorilla tracking in Bwindi forest.\r\nQueen Elizabeth National Park 2 Days Wildlife Safari\r\nRiver Rafting and See the Source of the Nile\r\nOn this 7 days Adventure Holiday Package tour to Uganda you will get to experience river rafting, the source of the nile, safaris, gorilla tracking and much much more. For a detailed day-by-day itinerary we kindly refer you to the Itinerary tab.', '15.jpg', '2020-07-24 15:17:03', NULL),
(6, 'Best of Western Uganda Safari', 'Private Tour', 'Western Uganda', 4000, 'Boat cruise, Trekking, Transportation in 4X4 vechicle, Park entry fees, Driver and Guide, All accommodation during the safari, All meals during the safari', 'Watching the mighty mountain goriallas\r\nBoat cruise through the Kazinga channel\r\nThis 6 days trip brings you the highlights of Western Uganda, where the Savannah meets the rain-forest. This is the home of many iconic African animals, including lion, elephant, buffalo, giraffe, hippo, spotted hyenas and leopards, and up to 15 primate species, including the mighty gentle giants – the Mountain gorillas and chimps.\r\n', '16.JPG', '2020-07-24 15:20:33', NULL),
(7, 'Uganda Overland: Gorillas & Chimps', 'Group Tour', 'Uganda', 3900, 'ACCOMMODATION Participation camping (8 nights). Please note that all nights are camping on this particular trip. MEALS 7 breakfasts, 5 lunches, 6 dinners. TRANSPORT Lando (overland adventure vehicle), minibuses, walking. STAFF & EXPERTS 2 CEOs (Chief Expe', 'See a mountain gorilla up close and personal.\r\nSearch for chimpanzees in Kalinzu Forest Reserve.\r\nOpt to raft the White Nile River\r\nStart and end in Kampala, the trip Uganda Overland: Gorillas & Chimps is a guided wildlife tour that takes 9 days. You will be traveling through Kalinzu Forest National Park, Jinja, Kampala and 3 other destinations in Uganda and Tanzania. Uganda Overland: Gorillas & Chimps is a group trip which includes accommodation, meals and others. Please see the package includes section for further details.', '17.JPG', '2020-07-24 15:24:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'bina bina', '5555555555', 'bina@gmail.com', 'fadbe501c9a4f3f7fc3e594e1d6dfacd', '2020-05-10 07:38:17', '2020-07-15 04:45:25'),
(2, 'cat', '7894561230', 'cat@gmail.com', '2e5e0fb48a5b7dcc17e8b3dc278f6496', '2020-07-24 15:29:26', NULL),
(3, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2020-07-24 15:37:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
