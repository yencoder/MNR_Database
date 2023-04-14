-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2023 at 03:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mnrf_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `pin` int(4) NOT NULL,
  `rollNumber` bigint(15) NOT NULL,
  `unitClass` varchar(2) DEFAULT NULL,
  `taxClass` varchar(1) DEFAULT NULL,
  `taxQualifier` varchar(1) DEFAULT NULL,
  `streetNumber` int(5) DEFAULT NULL,
  `streetName` varchar(17) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `provinceState` varchar(2) DEFAULT NULL,
  `postalZipCode` varchar(7) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `deliveryModeIdentifier` varchar(1) DEFAULT NULL,
  `deliveryMode` varchar(2) DEFAULT NULL,
  `streetType` varchar(5) DEFAULT NULL,
  `streetDirection` varchar(10) DEFAULT NULL,
  `unitDesignator` varchar(4) DEFAULT NULL,
  `unitIdentifier` varchar(2) DEFAULT NULL,
  `additionalDeliveryInfo1` varchar(10) DEFAULT NULL,
  `deliveryFacility` varchar(10) DEFAULT NULL,
  `deliveryFacilityType` varchar(10) DEFAULT NULL,
  `additionalDeliveryInfo2` varchar(10) DEFAULT NULL,
  `deliveryFacilityIdentifier` varchar(10) DEFAULT NULL,
  `foreignAddress1` varchar(10) DEFAULT NULL,
  `foreignAddress2` varchar(10) DEFAULT NULL,
  `foreignAddress3` varchar(10) DEFAULT NULL,
  `foreignAddress4` varchar(10) DEFAULT NULL,
  `legalDescription` varchar(79) DEFAULT NULL,
  `value` decimal(4,2) DEFAULT NULL,
  `uom` varchar(1) DEFAULT NULL,
  `value2` decimal(4,2) DEFAULT NULL,
  `uom3` varchar(1) DEFAULT NULL,
  `sequenceNumber` varchar(1) DEFAULT NULL,
  `lastName` varchar(10) DEFAULT NULL,
  `identifier` varchar(1) DEFAULT NULL,
  `citizenship` varchar(1) DEFAULT NULL,
  `firstName` varchar(8) DEFAULT NULL,
  `middleNames` varchar(6) DEFAULT NULL,
  `instrumentNumber` varchar(8) DEFAULT NULL,
  `saleDate` varchar(8) DEFAULT NULL,
  `salePrefix` varchar(21) DEFAULT NULL,
  `saleSuffix` varchar(58) DEFAULT NULL,
  `countOfCLProperties` int(5) DEFAULT NULL,
  `countOfCLNonParticipatingProperties` int(5) DEFAULT NULL,
  `countOfCLParticipatingProperties` int(5) DEFAULT NULL,
  `countOfMFProperties` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`pin`, `rollNumber`, `unitClass`, `taxClass`, `taxQualifier`, `streetNumber`, `streetName`, `city`, `provinceState`, `postalZipCode`, `country`, `deliveryModeIdentifier`, `deliveryMode`, `streetType`, `streetDirection`, `unitDesignator`, `unitIdentifier`, `additionalDeliveryInfo1`, `deliveryFacility`, `deliveryFacilityType`, `additionalDeliveryInfo2`, `deliveryFacilityIdentifier`, `foreignAddress1`, `foreignAddress2`, `foreignAddress3`, `foreignAddress4`, `legalDescription`, `value`, `uom`, `value2`, `uom3`, `sequenceNumber`, `lastName`, `identifier`, `citizenship`, `firstName`, `middleNames`, `instrumentNumber`, `saleDate`, `salePrefix`, `saleSuffix`, `countOfCLProperties`, `countOfCLNonParticipatingProperties`, `countOfCLParticipatingProperties`, `countOfMFProperties`) VALUES
(1234567, 10100600133000, 'CL', 'E', '-', 1827, 'COUNTY ROAD 12', 'APPLE HILL', 'ON', 'K0C 1B0', 'CANADA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CHARLOTTENBURGH CON 5 FRT PT LOTS 2 AND 3 AND RP 14R6026 PART 1', '19.97', 'A', '12.13', 'A', '2', 'RODRIQUE', 'I', 'C', 'CELINE', '', 'GL23346', '1/1/2023', '00 - Open market sale', '5 - Single family detached', 53320, 25625, 27695, 19948),
(7654321, 10100600171400, 'CL', 'E', '-', 1009, 'ONADJE', 'SUMMERSTOWN', 'ON', 'K0C 2E0', 'CANADA', '', '', 'RD', '', '', '', '', '', '', '', '', '', '', '', '', 'CHARLOTTENBURGH CON 5 FRT E PT LOT 6 RP 14R1186 PARTS 3 TO 5 PT PARTS 1 8 TO 11', '15.24', 'A', '2.43', 'A', '1', 'LAFAYETTE', 'I', 'C', 'JEAN', 'ONDIN', '', '2/3/2016', '', '', 53320, 25625, 27695, 19948),
(0, 420839000811300, 'MF', 'T', 'T', 25, 'PRINCESS', 'MISSISSAUGA', 'ON', 'L5M 1J5', 'CANADA', '', '', 'ST', '', 'UNIT', '93', '', '', '', '', '', '', '', '', '', 'CON 12 PT LOT 25 RP 16R3606 PART 2', '26.89', 'A', '25.89', 'A', '1', 'ARVEROS', 'I', 'U', 'JORDAN', 'MIGUEL', 'GY218082', '5/8/2014', '00 - Open market sale', '8 - Seasonal Residence', 53320, 25625, 27695, 19948),
(0, 420839000811450, 'CL', 'R', 'T', 75325, 'WELLAND-EUPHRATES', 'MARKDALE', 'ON', 'N0C 1H0', 'CANADA', '3', 'RR', 'TLINE', '', '', '', '', '', '', '', '', '', '', '', '', 'CON 12 PT LOT 25 RP 16R9842 PART 1', '53.65', 'A', '14.89', 'A', '', '', '', '', '', '', 'GY37885', '1/1/2020', '01 - Family sale', '4 - Vacant land', 53320, 25625, 27695, 19948),
(0, 420839000811500, 'CL', 'R', 'T', 76345, 'EUPHRATES-WELLAND', 'MARKDALE', 'ON', 'N0C 1H0', 'CANADA', '3', 'RR', 'TLINE', '', '', '', '', '', '', '', '', '', '', '', '', 'CON 12 PT LOT 26 RP 16R1638 PART 2 PT PART 1', '29.71', 'A', '12.00', 'A', '', '', '', '', '', '', 'GY169134', '1/1/2020', '01 - Related Parties', '1 - Sale to a person whose principal occupation is farming', 53320, 25625, 27695, 19948);

-- --------------------------------------------------------

--
-- Table structure for table `Appeals`
--

CREATE TABLE `Appeals` (
  `Initiator` varchar(255) DEFAULT NULL,
  `Status_Reason` varchar(255) DEFAULT NULL,
  `Initiated_On` date DEFAULT NULL,
  `RFR_Deadline` date DEFAULT NULL,
  `Modified_On` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Appeal_Number` int(11) NOT NULL,
  `Created_By` varchar(255) DEFAULT NULL,
  `Created_On` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Owner` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Appeals`
--

INSERT INTO `Appeals` (`Initiator`, `Status_Reason`, `Initiated_On`, `RFR_Deadline`, `Modified_On`, `Appeal_Number`, `Created_By`, `Created_On`, `Owner`, `Status`) VALUES
('POTTS MAYO', 'Open', '2022-04-21', '2022-05-13', '2023-04-13 20:52:07', 84363, 'Haaris Handley', '2022-04-21 18:02:00', 'Haaris Handley', 'Active'),
('A & Z MAGIC FARMS LTD', 'Closed', '2022-04-22', '2022-05-13', '2023-04-13 20:50:06', 86923, 'Haaris Handley', '2022-04-22 12:28:00', 'Haaris Handley', 'Active'),
('3000012 CANADA INCORPORATED, VAN HELSING', 'Open', '2022-04-04', '2022-04-15', '2023-04-02 08:39:28', 86967, 'Haaris Handley', '2022-04-04 14:44:00', 'Haaris Handley', 'Active'),
('BIRD, BARRIE SHRUB', 'Open', '2022-04-21', '2022-05-13', '2023-04-02 08:39:28', 86968, 'Haaris Handley', '2022-04-21 17:55:00', 'Haaris Handley', 'Active'),
('POTTS MAYO', 'Open', '2022-04-21', '2022-05-13', '2023-04-02 08:39:28', 86969, 'Haaris Handley', '2022-04-21 18:02:00', 'Haaris Handley', 'Active'),
('HOLLY HOLLYWOOD', 'Open', '2022-05-09', '2022-05-20', '2023-04-02 08:39:28', 86971, 'Haaris Handley', '2022-05-09 13:54:00', 'Haaris Handley', 'Active'),
('Georgian Mountain', 'Closed', '2022-05-04', '2022-05-31', '2023-04-02 08:39:28', 86973, 'Sharmin Mays', '2022-05-11 16:05:00', 'Sharmin Mays', 'Active'),
('Bolaa inc', 'Closed', '2022-05-18', '2022-06-03', '2023-04-02 08:40:42', 86974, 'Lilah Thorne', '2022-05-18 14:08:00', 'Lilah Thorne', 'Active'),
('Nica row', 'Closed', '2022-05-18', '2022-05-20', '2023-04-13 20:50:01', 86975, 'Lilah Thorne', '2022-05-18 14:33:00', 'Lilah Thorne', 'Active'),
('POTTS MAYO', 'Open', '2022-05-06', '2022-05-13', '2023-04-02 08:39:28', 86978, 'Haaris Handley', '2022-04-21 18:04:00', 'Haaris Handley', 'Active'),
('LEMAN DAWKINS  JEAN', 'Open', '2022-06-16', '2022-07-08', '2022-06-16 19:22:00', 86986, 'Lilah Thorne', '2022-06-16 19:22:00', 'Lilah Thorne', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `appeal_parcels`
--

CREATE TABLE `appeal_parcels` (
  `Name` varchar(255) DEFAULT NULL,
  `Appeal` int(11) DEFAULT NULL,
  `Parcel_Participation` varchar(255) DEFAULT NULL,
  `Program` varchar(255) DEFAULT NULL,
  `Status_Reason` varchar(255) DEFAULT NULL,
  `Initiated_On` date DEFAULT NULL,
  `Initiator` varchar(255) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Tracking_Comments` text DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `RFR_returned_by_Landowner` date DEFAULT NULL,
  `RFR_Referred_to_MPAC_Date` date DEFAULT NULL,
  `RFR_forwarded_to_Landowner` date DEFAULT NULL,
  `RFR_Forwarded_to_Administrator` date DEFAULT NULL,
  `RFR_Deadline` date DEFAULT NULL,
  `Reason_for_Appeal` text DEFAULT NULL,
  `Project` varchar(255) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `MOS_Send_to_Landowner` date DEFAULT NULL,
  `Modified_On` datetime DEFAULT NULL,
  `Modified_By` varchar(255) DEFAULT NULL,
  `MNR_Total_Area` float DEFAULT NULL,
  `MNR_Name3_Account` text DEFAULT NULL,
  `MNR_Name3` text DEFAULT NULL,
  `MNR_Name2_Account` text DEFAULT NULL,
  `MNR_Name2` text DEFAULT NULL,
  `MNR_Name1_Account` text DEFAULT NULL,
  `MNR_Name1` text DEFAULT NULL,
  `MNR_Mailing_Address_Province` varchar(255) DEFAULT NULL,
  `MNR_Mailing_Address_Postal_Code` varchar(255) DEFAULT NULL,
  `MNR_Mailing_Address_Line3` text DEFAULT NULL,
  `MNR_Mailing_Address_Line2` text DEFAULT NULL,
  `MNR_Mailing_Address_Line1` text DEFAULT NULL,
  `MNR_Mailing_Address_Country` varchar(255) DEFAULT NULL,
  `MNR_Mailing_Address_City` varchar(255) DEFAULT NULL,
  `MNR_Legal_Description` text DEFAULT NULL,
  `MNR_Eligible_Area` float DEFAULT NULL,
  `Minutes_of_Settlement_Required` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Decision_Reason` varchar(255) DEFAULT NULL,
  `Decision_Date` date DEFAULT NULL,
  `Decision_Comments` text DEFAULT NULL,
  `Created_By` varchar(255) DEFAULT NULL,
  `CL_Type_3` varchar(255) DEFAULT NULL,
  `CL_Type_2` varchar(255) DEFAULT NULL,
  `CL_Type` varchar(255) DEFAULT NULL,
  `ARN` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appeal_parcels`
--

INSERT INTO `appeal_parcels` (`Name`, `Appeal`, `Parcel_Participation`, `Program`, `Status_Reason`, `Initiated_On`, `Initiator`, `Created_On`, `Year`, `Type`, `Tracking_Comments`, `Status`, `RFR_returned_by_Landowner`, `RFR_Referred_to_MPAC_Date`, `RFR_forwarded_to_Landowner`, `RFR_Forwarded_to_Administrator`, `RFR_Deadline`, `Reason_for_Appeal`, `Project`, `Owner`, `MOS_Send_to_Landowner`, `Modified_On`, `Modified_By`, `MNR_Total_Area`, `MNR_Name3_Account`, `MNR_Name3`, `MNR_Name2_Account`, `MNR_Name2`, `MNR_Name1_Account`, `MNR_Name1`, `MNR_Mailing_Address_Province`, `MNR_Mailing_Address_Postal_Code`, `MNR_Mailing_Address_Line3`, `MNR_Mailing_Address_Line2`, `MNR_Mailing_Address_Line1`, `MNR_Mailing_Address_Country`, `MNR_Mailing_Address_City`, `MNR_Legal_Description`, `MNR_Eligible_Area`, `Minutes_of_Settlement_Required`, `Description`, `Decision_Reason`, `Decision_Date`, `Decision_Comments`, `Created_By`, `CL_Type_3`, `CL_Type_2`, `CL_Type`, `ARN`) VALUES
('Appeal #01290 - 190102002022200', 84363, '190102002022200 [2022] [CLT]', 'MFTIP-Managed Forest Tax Incentive Program', 'Canceled', '2022-01-04', 'ASHLEY MCASH', '2022-01-04 08:25:00', 2022, 'RFR Regulated Deadline', '', 'Active', NULL, '2022-01-04', NULL, NULL, '2022-03-31', 'new landowner', '- CLTIP Application 2200002 [2022] [Agreement]', 'Patterson Pettersson', NULL, '2022-04-01 00:00:00', 'Potter Potterson', 77.87, '', 'JAMES MCASH', '', 'JAMES MCASH', 'ASHLEY MCASH', 'ASHLEY MCASH', 'ON', 'K0L 3A0', '', '', '5412 COUNTRY RD 9', 'CANADA', 'BAILIEBORO', 'CON 4 PT LOT 14 LESS RP 39R1287 PART 11', 18.72, 'No', 'gis - good', '', NULL, '', 'Patterson Pettersson', '', '', 'PSW', '190100000000000'),
('Appeal #01292 - 291270171097000', 84363, '291270171097000 [2022] [CLT]', 'CLTIP - Conservation Land Tax Incentive Program', 'Canceled', '2022-01-04', 'Paulina Squires', '2022-01-04 13:54:00', 2022, 'RFR Regulated Deadline', 'GIS - GOOD\nTA - GOOD\nEA - GOOD', 'Active', '2022-02-09', '2022-03-15', '2022-01-04', '2022-02-11', '2022-03-31', 'application received after deadline', '- CLTIP Application 2122511 [2022] [Project]', 'Chinook River', NULL, '2022-04-01 00:00:00', 'Potter Potterson', 100, '', 'Edward Squires', '', 'Edward Squires', 'Paulina Squires', 'Paulina Squires', 'ON', 'N1R 5S2', '', 'RR 1', '9513 LION-SAFARI RD', 'CANADA', 'CAMBRIDGE', 'CON 7 PT LOT 22 BEV FLM RP 62R9423 PART 1', 33.7, 'No', 'LO RECEIVED APPLICATION AFTER DEADLINE (ORIGINALLY SENT BY EMAIL TO AN OLD EMAIL, WAS PROBABLY SENT APPLICATION BY MAIL IN SECOND MAILOUT)', 'Application not received', '2022-03-15', '', 'Chinook River', '', '', 'PSW', '291200000000000'),
('Appeal #01293 - 301230181117000', 86971, '301230181117000 [2023] [CLT]', 'MFTIP-Managed Forest Tax Incentive Program', 'In Progress', '2023-04-01', 'John Doe', '2023-04-01 14:30:00', 2023, 'RFR Regulated Deadline', 'GIS - GOOD\nTA - GOOD\nEA - GOOD', 'Completed', '2023-04-10', '2023-05-15', '2023-04-01', '2023-04-12', '2023-05-31', 'under review', '- CLTIP Application 2132511 [2023] [Project]', 'Green Forest', NULL, '2023-04-01 00:00:00', 'Jane Smith', 150, '', 'John Doe', '', 'John Doe', 'Jane Doe', 'Jane Doe', 'ON', 'N1R 6S3', '', 'RR 2', '9634 GREEN-FOREST RD', 'CANADA', 'GUELPH', 'CON 8 PT LOT 23 BEV FLM RP 63R9824 PART 2', 45.8, 'No', 'Under Review', 'Review in progress', '2023-05-15', '', 'Green Forest', '', '', 'PSW', '301230000000000'),
('Appeal #01294 - 311240191137000', 86971, '311240191137000 [2023] [CLT]', 'CLTIP - Conservation Land Tax Incentive Program', 'Completed', '2023-04-01', 'Alice Johnson', '2023-04-01 15:00:00', 2023, 'RFR Regulated Deadline', 'GIS - GOOD\nTA - GOOD\nEA - GOOD', 'Active', '2023-04-11', '2023-05-16', '2023-04-01', '2023-04-13', '2023-05-31', 'approved', '- CLTIP Application 2142511 [2023] [Project]', 'Blue Ocean', NULL, '2023-04-01 00:00:00', 'Michael Brown', 200, '', 'Alice Johnson', '', 'Alice Johnson', 'Bob Johnson', 'Bob Johnson', 'ON', 'N1R 7S4', '', 'RR 3', '9735 BLUE-OCEAN RD', 'CANADA', 'WATERLOO', 'CON 9 PT LOT 24 BEV FLM RP 64R10234 PART 3', 58.9, 'No', 'Approved', 'Appeal approved', '2023-05-16', '', 'Blue Ocean', '', '', 'PSW', '311240000000000'),
('Appeal #01295 - 321250201157000', 86971, '321250201157000 [2023] [CLT]', 'CLTIP - Conservation Land Tax Incentive Program', 'Denied', '2023-04-01', 'George White', '2023-04-01 15:30:00', 2023, 'RFR Regulated Deadline', 'GIS - GOOD\nTA - GOOD\nEA - GOOD', 'Completed', '2023-04-12', '2023-05-17', '2023-04-01', '2023-04-14', '2023-05-31', 'not eligible', '- CLTIP Application 2152511 [2023] [Project]', 'Yellow Fields', NULL, '2023-04-01 00:00:00', 'Nancy Green', 120, '', 'George White', '', 'George White', 'Emma White', 'Emma White', 'ON', 'N1R 8S5', '', 'RR 4', '9836 YELLOW-FIELDS RD', 'CANADA', 'KITCHENER', 'CON 10 PT LOT 25 BEV FLM RP 65R11234 PART 4', 32.1, 'No', 'Denied', 'Appeal denied', '2023-05-17', '', 'Yellow Fields', '', '', 'PSW', '321250000000000'),
('Appeal #01249 - 771077402047000', 86971, '771077402047000 [2021] [CLT]', 'MFTIP-Managed Forest Tax Incentive Program', 'Referred to MPAC', '2022-04-01', 'PORT LIONS CLUB', '2022-01-04 07:53:00', 2021, 'RFR ARB Extended Deadline', 'Reason for RFR stated in email', 'Completed', '2022-04-01', '2022-01-18', '2022-04-01', '2022-01-06', '2022-01-07', 'did not receive application', NULL, 'Patterson Pettersson', NULL, '2022-01-18 15:21:00', 'Tony Ironsuit', 25.36, NULL, NULL, NULL, NULL, 'PORT LIONS CLUB', 'PORT LIONS CLUB', 'ON', 'N0A 1N0', NULL, NULL, 'PO BOX 0117', 'CANADA', 'PORT DOVER', NULL, 4.05, 'No', 'GIS - GOOD', 'Application not received', '2022-01-18', NULL, 'Patterson Pettersson', NULL, NULL, 'PSW', '771077402047000');

-- --------------------------------------------------------

--
-- Table structure for table `CLTIP`
--

CREATE TABLE `CLTIP` (
  `program_name` varchar(255) NOT NULL,
  `ARN` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `CLTIP`
--

INSERT INTO `CLTIP` (`program_name`, `ARN`) VALUES
('CLTIP', 100200000000011),
('CLTIP', 100200000000012),
('CLTIP', 100200000000013),
('CLTIP', 100200000000014),
('CLTIP', 100200000000015),
('CLTIP', 100200000000016),
('CLTIP', 100200000000017),
('CLTIP', 100200000000018),
('CLTIP', 100200000000019),
('CLTIP', 100200000000020);

-- --------------------------------------------------------

--
-- Table structure for table `Cltip_application`
--

CREATE TABLE `Cltip_application` (
  `ProjectName` varchar(50) DEFAULT NULL,
  `ProjectStatus` varchar(50) DEFAULT NULL,
  `Account` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `LanguagePreferred` varchar(50) DEFAULT NULL,
  `EligibleArea` varchar(50) DEFAULT NULL,
  `EligibleFeatureType` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedOn` date DEFAULT NULL,
  `PIN` varchar(50) NOT NULL,
  `AgreedWithAcreagesOnApplication` varchar(50) DEFAULT NULL,
  `AgreementEndDate` date DEFAULT NULL,
  `AgreementStartDate` date DEFAULT NULL,
  `ForecastedProjectEndDate` date DEFAULT NULL,
  `ForecastedProjectStartDate` date DEFAULT NULL,
  `Program` varchar(50) DEFAULT NULL,
  `ProjectType` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `SiteVisit` varchar(50) DEFAULT NULL,
  `Stage` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusReason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Cltip_application`
--

INSERT INTO `Cltip_application` (`ProjectName`, `ProjectStatus`, `Account`, `Email`, `Address`, `PhoneNumber`, `LanguagePreferred`, `EligibleArea`, `EligibleFeatureType`, `CreatedBy`, `CreatedOn`, `ModifiedBy`, `ModifiedOn`, `PIN`, `AgreedWithAcreagesOnApplication`, `AgreementEndDate`, `AgreementStartDate`, `ForecastedProjectEndDate`, `ForecastedProjectStartDate`, `Program`, `ProjectType`, `Province`, `SiteVisit`, `Stage`, `Status`, `StatusReason`) VALUES
('Sample Project', 'Approved', 'Sample Account', 'sample@email.com', '123 Sample St', '123-456-7890', 'English', 'BC', 'PSW', 'John Doe', '2023-03-31', 'Jane Doe', '2023-03-31', '1234567', 'Yes', '2025-03-31', '2023-04-01', '2025-06-30', '2023-04-01', 'Sample Program', 'Sample Type', 'BC', 'Yes', 'Active', 'Open', 'Sample reason for status change'),
('Another Sample', 'Pending', 'Another Account', 'another@email.com', '456 Sample Ave', '987-654-3210', 'French', 'ON', 'PSW', 'Alice Smith', '2023-03-31', 'Bob Johnson', '2023-03-31', '7654321', 'No', '2024-03-31', '2023-05-01', '2024-08-31', '2023-05-01', 'Another Program', 'Another Type', 'ON', 'No', 'Pending', 'Under Review', 'Additional information required');

-- --------------------------------------------------------

--
-- Table structure for table `Compartements`
--

CREATE TABLE `Compartements` (
  `id` int(11) NOT NULL,
  `ClType` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `ParentCampaign` varchar(50) DEFAULT NULL,
  `ActivityType` varchar(50) DEFAULT NULL,
  `ActualCost` varchar(50) DEFAULT NULL,
  `ActualDuration` varchar(50) DEFAULT NULL,
  `ActualEnd` varchar(50) DEFAULT NULL,
  `ActualStart` varchar(50) DEFAULT NULL,
  `BudgetAllocated` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Channel` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedOn` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ExcludeMembersWhoOptOut` varchar(50) DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedOn` varchar(50) DEFAULT NULL,
  `NoOfDays` varchar(50) DEFAULT NULL,
  `OutsourceVendors` varchar(50) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Priority` varchar(50) DEFAULT NULL,
  `Process` varchar(50) DEFAULT NULL,
  `ProcessStage` varchar(50) DEFAULT NULL,
  `RecordCreatedOn` varchar(50) DEFAULT NULL,
  `ScheduledDuration` varchar(50) DEFAULT NULL,
  `ScheduledEnd` varchar(50) DEFAULT NULL,
  `ScheduledStart` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusReason` varchar(50) DEFAULT NULL,
  `SubCategory` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Compartements`
--

INSERT INTO `Compartements` (`id`, `ClType`, `Subject`, `ParentCampaign`, `ActivityType`, `ActualCost`, `ActualDuration`, `ActualEnd`, `ActualStart`, `BudgetAllocated`, `Category`, `Channel`, `CreatedBy`, `CreatedOn`, `Currency`, `Description`, `ExcludeMembersWhoOptOut`, `ModifiedBy`, `ModifiedOn`, `NoOfDays`, `OutsourceVendors`, `Owner`, `Priority`, `Process`, `ProcessStage`, `RecordCreatedOn`, `ScheduledDuration`, `ScheduledEnd`, `ScheduledStart`, `Status`, `StatusReason`, `SubCategory`, `Type`) VALUES
(1, 'Type1', 'Subject1', 'Campaign1', 'ActivityType1', '100.00', '3', '2023-04-03', '2023-04-01', '200.00', 'Category1', 'Channel1', 'User1', '2023-03-31', 'USD', 'Description1', 'Yes', 'User2', '2023-04-02', '5', 'Vendor1', 'Owner1', 'High', 'Process1', 'Stage1', '2023-03-31', '4', '2023-04-04', '2023-04-01', 'Active', 'Reason1', 'SubCategory1', 'Type1'),
(2, 'Type2', 'Subject2', 'Campaign2', 'ActivityType2', '50.00', '2', '2023-04-05', '2023-04-03', '100.00', 'Category2', 'Channel2', 'User2', '2023-03-31', 'USD', 'Description2', 'No', 'User1', '2023-04-03', '3', 'Vendor2', 'Owner2', 'Medium', 'Process2', 'Stage2', '2023-03-31', '2', '2023-04-06', '2023-04-03', 'Inactive', 'Reason2', 'SubCategory2', 'Type2');

-- --------------------------------------------------------

--
-- Table structure for table `Counties`
--

CREATE TABLE `Counties` (
  `id` int(11) NOT NULL,
  `DataValidationOfARNFirst4DigitsOnly` varchar(50) DEFAULT NULL,
  `TerritoryRegion` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `DateCreated` varchar(50) DEFAULT NULL,
  `ActivityAdditionalParameters` varchar(50) DEFAULT NULL,
  `ActivityStatus` varchar(50) DEFAULT NULL,
  `ActivityType` varchar(50) DEFAULT NULL,
  `ActualDuration` varchar(50) DEFAULT NULL,
  `ActualEnd` varchar(50) DEFAULT NULL,
  `ActualStart` varchar(50) DEFAULT NULL,
  `ChangeRequestFormId` varchar(50) DEFAULT NULL,
  `ChangeRequestNo` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Customers` varchar(50) DEFAULT NULL,
  `DateDeliveryLastAttempted` varchar(50) DEFAULT NULL,
  `DateSent` varchar(50) DEFAULT NULL,
  `DeliveryPriority` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `DueDate` varchar(50) DEFAULT NULL,
  `LastOnHoldTime` varchar(50) DEFAULT NULL,
  `LastUpdated` varchar(50) DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `OnHoldTimeMinutes` varchar(50) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Priority` varchar(50) DEFAULT NULL,
  `RecordCreatedOn` varchar(50) DEFAULT NULL,
  `ScheduledDuration` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Counties`
--

INSERT INTO `Counties` (`id`, `DataValidationOfARNFirst4DigitsOnly`, `TerritoryRegion`, `Subject`, `DateCreated`, `ActivityAdditionalParameters`, `ActivityStatus`, `ActivityType`, `ActualDuration`, `ActualEnd`, `ActualStart`, `ChangeRequestFormId`, `ChangeRequestNo`, `CreatedBy`, `Customers`, `DateDeliveryLastAttempted`, `DateSent`, `DeliveryPriority`, `Description`, `DueDate`, `LastOnHoldTime`, `LastUpdated`, `ModifiedBy`, `OnHoldTimeMinutes`, `Owner`, `Priority`, `RecordCreatedOn`, `ScheduledDuration`) VALUES
(0, 'John', 'North', 'Meeting', '2023-03-31', 'None', 'Completed', 'Call', '30', '2023-03-31 14:00:00', '2023-03-31 13:30:00', 'CRF001', 'CR001', 'Jane', 'Acme Inc.', '2023-03-31 13:30:00', '2023-03-31 13:30:00', 'High', 'Meeting with Acme Inc. to discuss project details.', '2023-03-31 14:00:00', '0', '2023-03-31 14:00:00', 'Jane', '0', 'Jane', 'High', '2023-03-31 13:30:00', '30'),
(2, 'Bob', 'South', 'Presentation', '2023-04-01', 'None', 'Scheduled', 'Meeting', '60', NULL, '2023-04-01 10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EligibleAreaUpdates`
--

CREATE TABLE `EligibleAreaUpdates` (
  `id` int(11) NOT NULL,
  `ARN` bigint(15) NOT NULL,
  `updated_at` date NOT NULL,
  `Area_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `EligibleAreaUpdates`
--

INSERT INTO `EligibleAreaUpdates` (`id`, `ARN`, `updated_at`, `Area_id`) VALUES
(1, 10100600133000, '2022-03-31', 0),
(2, 10100600133000, '2022-03-30', 0),
(3, 10100600133000, '2023-03-29', 0),
(4, 10100600133000, '2023-03-28', 0),
(5, 10100600133000, '2023-03-27', 0),
(6, 10100600133000, '2022-03-26', 0),
(7, 10100600133000, '2022-03-25', 0),
(8, 10100600133000, '2023-03-24', 0),
(9, 420839000811450, '2023-03-23', 0),
(10, 420839000811450, '2023-03-22', 0),
(15, 420839000811450, '2023-03-17', 0),
(16, 420839000811450, '2023-03-16', 0),
(17, 420839000811450, '2023-03-15', 0),
(18, 420839000811450, '2023-03-14', 0),
(19, 420839000811450, '2023-03-13', 0),
(20, 420839000811450, '2023-03-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`username`, `password`, `first_name`, `last_name`, `email`, `department`) VALUES
('jdoe', 'jdoe', 'John', 'Doe', 'johndoe@example.com', 'CLTIP'),
('jsmith', 'jsmith', 'Jane', 'Smith', 'janesmith@example.com', 'MFTIP'),
('rwilliams', 'rwilliams', 'Robert', 'Williams', 'robertwilliams@example.com', 'CLTIP');

-- --------------------------------------------------------

--
-- Table structure for table `exam_candidates`
--

CREATE TABLE `exam_candidates` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_candidates`
--

INSERT INTO `exam_candidates` (`id`, `first_name`, `last_name`, `email`, `phone`, `sin`, `password`, `address`) VALUES
(24, 'Amber', 'Ahmed', 'amberahmed@trentu.ca', '7058081263', '143255276567', '$2y$10$Whvsg1I3fxhx8Pt0uWvvJOvZQxzXRvcg9l/UTfKLvBL6XETbDq8xq', '359 Hunter Street West'),
(28, 'dev', 'test', 'ccrasto@trentu.ca', '349543435', '1321324213432', '$2y$10$tgKcoDTtOjC5rzijFZuNpeaoK.9koW1jQSqlmy13rEeQ7/zi.OlYi', '359 Hunter Street West'),
(30, 'fdsa', 'adf', 'ajadshla@gmsds.com', 'fdsa', 'asdf', '$2y$10$zAqYh.LPYH3aKaHbsJzPwuXuuzWHQOUxW1MObiwaUSiXVUVgIVf/W', 'dsaf'),
(34, 'SDFd', 'sdafd', 'askdufhd@gmail.com', '124314', '1214345', '$2y$10$HGFDeiqfByomzuyWqL45yeF9uO/sdrhGhcbf5Snd424Is3P2Zsvwa', 'aregfgf');

-- --------------------------------------------------------

--
-- Table structure for table `landowners`
--

CREATE TABLE `landowners` (
  `ARN` bigint(15) NOT NULL,
  `property_info` text DEFAULT NULL,
  `plan_number` int(11) NOT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `plan_start_date` date DEFAULT NULL,
  `plan_end_date` date DEFAULT NULL,
  `progress_report_due` date DEFAULT NULL,
  `renewal_plan_due` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status_for_tax_year` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `landowners`
--

INSERT INTO `landowners` (`ARN`, `property_info`, `plan_number`, `approved_by`, `plan_start_date`, `plan_end_date`, `progress_report_due`, `renewal_plan_due`, `email`, `password`, `status_for_tax_year`, `first_name`, `last_name`) VALUES
(10100600133000, 'This property contains 3.62 acres of the Pefferlaw-Udora Wetland Complex.\n\nThe Pefferlaw-Udora Wetland Complex is a Provincially Significant Wetland.', 1, 'John Doe', '2020-01-01', '2025-01-01', '2022-06-01', '2024-12-31', 'john.doe@example.com', 'password', 'Participating', NULL, NULL),
(10100600171400, 'This property contains 5.23 acres of the Long Point Marsh.\n\nThe Long Point Marsh is a Provincially Significant Wetland.', 2, 'David Thomas', '2017-12-01', '2022-12-01', '2022-06-01', '2022-11-30', 'david.thomas@example.com', 'password', 'Not Participating', NULL, NULL),
(420839000811300, 'This property contains 9.34 acres of the Luther Marsh.\n\nThe Luther Marsh is a Provincially Significant Wetland.', 1, 'Patricia Moore', '2021-07-01', '2026-07-01', '2023-01-01', '2026-06-30', 'patricia.moore@example.com', 'password', 'Participating', 'Patricia', 'Moore'),
(420839000811450, 'This property contains 18.34 acres of the Big Creek Marsh.\n\nThe Big Creek Marsh is a Provincially Significant Wetland.', 3, 'Elizabeth Jackson', '2019-08-01', '2024-08-01', '2022-02-01', '2024-07-31', 'elizabeth.jackson@example.com', 'password', 'Participating', NULL, NULL),
(420839000811500, 'This property contains 15.12 acres of the Rondeau Bay Marsh.\n\nThe Rondeau Bay Marsh is a Provincially Significant Wetland.', 2, 'Joseph Harris', '2018-01-01', '2023-01-01', '2022-07-01', '2022-12-31', 'joseph.harris@example.com', 'password', 'Participating', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `managed_forest_plan_approvers`
--

CREATE TABLE `managed_forest_plan_approvers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `office_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `managed_forest_plan_approvers`
--

INSERT INTO `managed_forest_plan_approvers` (`id`, `name`, `email`, `phone_number`, `office_address`) VALUES
(20230001, 'Jovana Dupont', 'jovanadupont@example.com', '613-555-1234', '123 Main St, Ottawa, ON'),
(20230002, 'Reid Gagnon', 'reidgagnon@example.com', '514-555-5678', '456 Rue Sainte-Catherine O, Montreal, QC'),
(20230003, 'Azariah Richardson', 'azariahrichardson@example.com', '905-555-9012', '789 Dundas St W, Toronto, ON'),
(20230004, 'Xandria Rousseau', 'xandriarousseau@example.com', '403-555-3456', '101 Broadway Ave, Calgary, AB'),
(20230005, 'Ilyas Blackburn', 'ilyasblackburn@example.com', '416-555-7890', '234 Yonge St, Toronto, ON'),
(20230006, 'Eliott Houle', 'eliotthoule@example.com', '604-555-2345', '345 Robson St, Vancouver, BC'),
(20230007, 'Salomé Allard', 'salomeallard@example.com', '902-555-6789', '678 Citadel Hill, Halifax, NS'),
(20230008, 'Emmanuel Thibault', 'emmanuelthibault@example.com', '819-555-0123', '9875 De La Gare Blvd, Montreal, QC'),
(20230009, 'Alyson Dubois', 'alysondubois@example.com', '306-555-3456', '4321 8th St E, Saskatoon, SK'),
(20230010, 'Maxence Lavoie', 'maxencelavoie@example.com', '204-555-6789', '567 Portage Ave, Winnipeg, MB'),
(20230011, 'Laurence Deschamps', 'laurencedeschamps@example.com', '514-555-9012', '1234 Peel St, Montreal, QC'),
(20230012, 'Moussa Bergeron', 'moussabergeron@example.com', '416-555-2345', '567 Queen St W, Toronto, ON'),
(20230013, 'Emmy Leclerc', 'emmyleclerc@example.com', '613-555-5678', '890 Bank St, Ottawa, ON'),
(20230014, 'Elliott Dufresne', 'elliottdufresne@example.com', '905-555-7890', '111 Bloor St W, Toronto, ON'),
(20230015, 'Mylène Royer', 'myleneroyer@example.com', '778-555-0123', '1234 Robson St, Vancouver, BC'),
(20230016, 'Léa Gagné', 'leagagne@example.com', '403-555-3456', '555 8th Ave SW, Calgary, AB'),
(20230017, 'Aubin Tremblay', 'aubintremblay@example.com', '902-555-6789', '123 Citadel Hill, Halifax, NS'),
(20230018, 'Kenzi St-Pierre', 'kenzistpierre@example.com', '819-555-2345', '2345 De La Gare Blvd, Montreal, QC');

-- --------------------------------------------------------

--
-- Table structure for table `MFTIP`
--

CREATE TABLE `MFTIP` (
  `program_name` varchar(255) NOT NULL,
  `ARN` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `MFTIP`
--

INSERT INTO `MFTIP` (`program_name`, `ARN`) VALUES
('MFTIP', 10100600133000),
('MFTIP', 420839000811300);

-- --------------------------------------------------------

--
-- Table structure for table `MFTIP_form`
--

CREATE TABLE `MFTIP_form` (
  `formId` int(11) NOT NULL,
  `summary` text NOT NULL,
  `overviewOfActivities` text NOT NULL,
  `detailedReportOfActivities` text NOT NULL,
  `ARN` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `MFTIP_form`
--

INSERT INTO `MFTIP_form` (`formId`, `summary`, `overviewOfActivities`, `detailedReportOfActivities`, `ARN`) VALUES
(2, 'dsfdsf', 'dsfa', 'fdsa', 10100600133000),
(3, 'dsfdsf', 'dsfa', 'fdsa', 10100600133000),
(4, 'sdf', 'dsf', 'dsfa', 10100600133000),
(5, 'sdf', 'dsf', 'dsfa', 10100600133000),
(6, 'sdf', 'dsf', 'dsfa', 10100600133000),
(7, 'sdf', 'dsf', 'dsfa', 10100600133000),
(8, 'dsfdsf', 'dsfa', 'fdsa', 10100600133000),
(10, '', '', '', 10100600133000),
(11, '', '', '', 10100600133000),
(12, 'er', 'wqewqe', 'qwewqe', 10100600133000);

-- --------------------------------------------------------

--
-- Table structure for table `Municipality`
--

CREATE TABLE `Municipality` (
  `Name` varchar(29) DEFAULT NULL,
  `County` varchar(28) DEFAULT NULL,
  `Created By` varchar(13) DEFAULT NULL,
  `Created On` varchar(16) DEFAULT NULL,
  `Full Name` varchar(24) DEFAULT NULL,
  `Modified By` varchar(13) DEFAULT NULL,
  `Modified On` varchar(16) DEFAULT NULL,
  `Municipality Code` int(3) NOT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Status Reason` varchar(6) DEFAULT NULL,
  `ARN` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Municipality`
--

INSERT INTO `Municipality` (`Name`, `County`, `Created By`, `Created On`, `Full Name`, `Modified By`, `Modified On`, `Municipality Code`, `Status`, `Status Reason`, `ARN`) VALUES
('0101-SOUTH GLENGARRY TOWNSHIP', '01-STORMONT DUNDAS GLENGARRY', 'Anna Krupnova', '2013-07-22 15:23', 'SOUTH GLENGARRY TOWNSHIP', 'Anna Krupnova', '2013-07-22 15:23', 101, 'Active', 'Active', 10100600133000),
('0111-NORTH GLENGARRY TOWNSHIP', '01-STORMONT DUNDAS GLENGARRY', 'Anna Krupnova', '2013-07-22 15:23', 'NORTH GLENGARRY TOWNSHIP', 'Anna Krupnova', '2013-07-22 15:23', 111, 'Active', 'Active', 10100600133000);

-- --------------------------------------------------------

--
-- Table structure for table `Ownership_change`
--

CREATE TABLE `Ownership_change` (
  `id` int(11) NOT NULL,
  `Project Name` varchar(50) DEFAULT NULL,
  `Project Type` varchar(50) DEFAULT NULL,
  `Account` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone Number` varchar(50) DEFAULT NULL,
  `New Account` varchar(50) DEFAULT NULL,
  `New Email` varchar(50) DEFAULT NULL,
  `New Phone Number` varchar(50) DEFAULT NULL,
  `Project Start Date` date DEFAULT NULL,
  `Project End Date` date DEFAULT NULL,
  `Ownership Change Date` date DEFAULT NULL,
  `Created By` varchar(50) DEFAULT NULL,
  `Created On` date DEFAULT NULL,
  `Modified By` varchar(50) DEFAULT NULL,
  `Modified On` date DEFAULT NULL,
  `PIN` varchar(50) DEFAULT NULL,
  `ARN` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Ownership_change`
--

INSERT INTO `Ownership_change` (`id`, `Project Name`, `Project Type`, `Account`, `Email`, `Phone Number`, `New Account`, `New Email`, `New Phone Number`, `Project Start Date`, `Project End Date`, `Ownership Change Date`, `Created By`, `Created On`, `Modified By`, `Modified On`, `PIN`, `ARN`) VALUES
(1, 'Project Alpha', 'Type A', 'Account 1', 'email@example.com', '123-456-7890', 'Account 2', 'newemail@example.com', '098-765-4321', '2023-01-01', '2023-12-31', '2023-06-01', 'User 1', '2023-01-01', 'User 2', '2023-04-01', 'PIN67890', 10100600171400);

-- --------------------------------------------------------

--
-- Table structure for table `Parcel`
--

CREATE TABLE `Parcel` (
  `id` int(11) NOT NULL,
  `ARN` bigint(15) NOT NULL,
  `Current_owner` text NOT NULL,
  `Current_eligible_area` int(11) NOT NULL,
  `PYP` int(11) NOT NULL,
  `link to annual participation information` int(11) NOT NULL,
  `current_MFTIP_plan` int(11) NOT NULL,
  `current CLTIP app` int(11) NOT NULL,
  `past MFTIP plans` int(11) NOT NULL,
  `past CLTIP apps` int(11) NOT NULL,
  `Term end date` int(11) NOT NULL,
  `Data validation should ensure that CL area (if participating) +` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Parcel`
--

INSERT INTO `Parcel` (`id`, `ARN`, `Current_owner`, `Current_eligible_area`, `PYP`, `link to annual participation information`, `current_MFTIP_plan`, `current CLTIP app`, `past MFTIP plans`, `past CLTIP apps`, `Term end date`, `Data validation should ensure that CL area (if participating) +`) VALUES
(0, 10100600171400, 'Josh Stanford', 100, 5, 1, 1, 1, 1, 1, 20231231, 100),
(1, 420839000811300, 'Particia Anderson', 200, 6, 2, 2, 2, 2, 2, 20241231, 200);

-- --------------------------------------------------------

--
-- Table structure for table `Parcel_annual_record`
--

CREATE TABLE `Parcel_annual_record` (
  `id` int(11) NOT NULL,
  `Parcel Year Participation` year(4) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Start Date` varchar(10) DEFAULT NULL,
  `End Date` varchar(10) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Status Reason` varchar(10) DEFAULT NULL,
  `MNR Name1` varchar(10) DEFAULT NULL,
  `MNR Name2` varchar(10) DEFAULT NULL,
  `MNR Name3` varchar(10) DEFAULT NULL,
  `Modified On` date DEFAULT NULL,
  `Agreed with Acreages` varchar(10) DEFAULT NULL,
  `ARN` bigint(15) DEFAULT NULL,
  `arn1` bigint(15) DEFAULT NULL,
  `arn2` bigint(15) DEFAULT NULL,
  `arn3` bigint(15) DEFAULT NULL,
  `arn4` bigint(15) DEFAULT NULL,
  `Building on CL` varchar(10) DEFAULT NULL,
  `CCLSubtype #1 Natural Heritage Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #10 Municipally designated lands` varchar(10) DEFAULT NULL,
  `CCLSubtype #11 Great Lakes Wetlands` varchar(10) DEFAULT NULL,
  `CCLSubtype #2 Regionally significant ANSI` varchar(10) DEFAULT NULL,
  `CCLSubtype #3 Species occurrence` varchar(10) DEFAULT NULL,
  `CCLSubtype #4 Habitat of Special Concern species` varchar(10) DEFAULT NULL,
  `CCLSubtype #5 OLL Featured Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #6 Abutting/ within Provincial Park` varchar(10) DEFAULT NULL,
  `CCLSubtype #7 Oak Ridges Moraine natural core` varchar(10) DEFAULT NULL,
  `CCLSubtype #8 Niagara Escarpment Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #9 Regional or watershed plan` varchar(10) DEFAULT NULL,
  `CL Confirmation Number` varchar(10) DEFAULT NULL,
  `CL Eligible Area overlaps with MF Eligible Area` varchar(10) DEFAULT NULL,
  `CL Feature Area Names` varchar(10) DEFAULT NULL,
  `CL Inquiry` varchar(10) DEFAULT NULL,
  `CL Type #1` varchar(10) DEFAULT NULL,
  `Comments` varchar(10) DEFAULT NULL,
  `County` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `dateKeepMNRAddressChecked` varchar(10) DEFAULT NULL,
  `E-mail Address` varchar(10) DEFAULT NULL,
  `Error Log` varchar(10) DEFAULT NULL,
  `GIS Verification Results` varchar(10) DEFAULT NULL,
  `GIS Verification Status` varchar(10) DEFAULT NULL,
  `GIS Verification Year` varchar(10) DEFAULT NULL,
  `Harvesting Activity Commercial Intent` varchar(10) DEFAULT NULL,
  `Harvesting Activity Personal Intent` varchar(10) DEFAULT NULL,
  `Include in MPAC Extract` varchar(10) DEFAULT NULL,
  `Linked Parcel Year Participation` varchar(10) DEFAULT NULL,
  `Mismatch Comments` varchar(10) DEFAULT NULL,
  `Mismatch Comments Previous` varchar(10) DEFAULT NULL,
  `Mismatch Eligible Area` varchar(10) DEFAULT NULL,
  `Mismatch Eligible Area Previous` varchar(10) DEFAULT NULL,
  `Mismatch Landowner` varchar(10) DEFAULT NULL,
  `Mismatch Landowner Previous` varchar(10) DEFAULT NULL,
  `Mismatch Legal Description` varchar(10) DEFAULT NULL,
  `Mismatch Legal Description Previous` varchar(10) DEFAULT NULL,
  `Mismatch Mailing Address` varchar(10) DEFAULT NULL,
  `Mismatch Mailing Address Previous` varchar(10) DEFAULT NULL,
  `Mismatch Total Area` varchar(10) DEFAULT NULL,
  `Mismatch Total Area Previous` varchar(10) DEFAULT NULL,
  `MNR Address` varchar(10) DEFAULT NULL,
  `MNR City` varchar(10) DEFAULT NULL,
  `MNR Eligible Area` varchar(10) DEFAULT NULL,
  `MNR Legal Description` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Country` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Line2` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Line3` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Province` varchar(10) DEFAULT NULL,
  `MNR Name1 Account` varchar(10) DEFAULT NULL,
  `MNR Name1 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name1 Type` varchar(10) DEFAULT NULL,
  `MNR Name2 Account` varchar(10) DEFAULT NULL,
  `MNR Name2 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name2 Type` varchar(10) DEFAULT NULL,
  `MNR Name3 Account` varchar(10) DEFAULT NULL,
  `MNR Name3 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name3 Type` varchar(10) DEFAULT NULL,
  `MNR Postal Code` varchar(10) DEFAULT NULL,
  `MNR Total Area` varchar(10) DEFAULT NULL,
  `mnr_FirstName1` varchar(10) DEFAULT NULL,
  `mnr_FirstName2` varchar(10) DEFAULT NULL,
  `mnr_LastName1` varchar(10) DEFAULT NULL,
  `mnr_LastName2` varchar(10) DEFAULT NULL,
  `mnr_MiddleName1` varchar(10) DEFAULT NULL,
  `mnr_MiddleName2` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `MPAC Eligible Area` varchar(10) DEFAULT NULL,
  `MPAC Legal Description` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address City` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Country` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line1` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line2` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line3` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Postal Code` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Province` varchar(10) DEFAULT NULL,
  `MPAC Name1` varchar(10) DEFAULT NULL,
  `MPAC Name1 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name1 Type` varchar(10) DEFAULT NULL,
  `MPAC Name2` varchar(10) DEFAULT NULL,
  `MPAC Name2 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name2 Type` varchar(10) DEFAULT NULL,
  `MPAC Name3` varchar(10) DEFAULT NULL,
  `MPAC Name3 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name3 Type` varchar(10) DEFAULT NULL,
  `MPAC_total_area` varchar(10) DEFAULT NULL,
  `MPAC Verification Status` varchar(10) DEFAULT NULL,
  `Municipality` varchar(10) DEFAULT NULL,
  `Net Eligible Forest Area (D)` varchar(10) DEFAULT NULL,
  `NotOverrideMNRData` varchar(10) DEFAULT NULL,
  `Other Lands (I)` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Parcel` varchar(10) DEFAULT NULL,
  `Parcel involved in split/consol?` varchar(10) DEFAULT NULL,
  `Participate FPCTRP Before` varchar(10) DEFAULT NULL,
  `Participate FPCTRP Now` varchar(10) DEFAULT NULL,
  `Participate MFTIP Now` varchar(10) DEFAULT NULL,
  `Participated MFTIP before?` varchar(10) DEFAULT NULL,
  `Participation Status` varchar(10) DEFAULT NULL,
  `Previous Parcel Year Participation` varchar(10) DEFAULT NULL,
  `Previous Reason` varchar(10) DEFAULT NULL,
  `Previous Status Reason` varchar(10) DEFAULT NULL,
  `Program` varchar(10) DEFAULT NULL,
  `Project` varchar(10) DEFAULT NULL,
  `Property is eligible under CLTIP` varchar(10) DEFAULT NULL,
  `Provided On` varchar(10) DEFAULT NULL,
  `Reason` varchar(10) DEFAULT NULL,
  `Reason for MPAC Extract` varchar(10) DEFAULT NULL,
  `Sent to MPAC On Date` varchar(10) DEFAULT NULL,
  `Special Policy` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Submitted Eligible Area` varchar(10) DEFAULT NULL,
  `Temp CLConfirmationNumber` varchar(10) DEFAULT NULL,
  `Temporary ID` varchar(10) DEFAULT NULL,
  `Total Conservation Lands (H)` varchar(10) DEFAULT NULL,
  `Total Elig. Forest Area (G)` varchar(10) DEFAULT NULL,
  `Total Managed Forest Area (B)` varchar(10) DEFAULT NULL,
  `Total Open Area (E)` varchar(10) DEFAULT NULL,
  `Total Open Area No trees (F)` varchar(10) DEFAULT NULL,
  `Total Other Lands (J)` varchar(10) DEFAULT NULL,
  `Total Residence Area (C)` varchar(10) DEFAULT NULL,
  `Total Summary` varchar(10) DEFAULT NULL,
  `Update Address` varchar(10) DEFAULT NULL,
  `Update Landowners` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Parcel_annual_record`
--

INSERT INTO `Parcel_annual_record` (`id`, `Parcel Year Participation`, `Name`, `Start Date`, `End Date`, `Year`, `Status Reason`, `MNR Name1`, `MNR Name2`, `MNR Name3`, `Modified On`, `Agreed with Acreages`, `ARN`, `arn1`, `arn2`, `arn3`, `arn4`, `Building on CL`, `CCLSubtype #1 Natural Heritage Area`, `CCLSubtype #10 Municipally designated lands`, `CCLSubtype #11 Great Lakes Wetlands`, `CCLSubtype #2 Regionally significant ANSI`, `CCLSubtype #3 Species occurrence`, `CCLSubtype #4 Habitat of Special Concern species`, `CCLSubtype #5 OLL Featured Area`, `CCLSubtype #6 Abutting/ within Provincial Park`, `CCLSubtype #7 Oak Ridges Moraine natural core`, `CCLSubtype #8 Niagara Escarpment Area`, `CCLSubtype #9 Regional or watershed plan`, `CL Confirmation Number`, `CL Eligible Area overlaps with MF Eligible Area`, `CL Feature Area Names`, `CL Inquiry`, `CL Type #1`, `Comments`, `County`, `Created By`, `Created On`, `dateKeepMNRAddressChecked`, `E-mail Address`, `Error Log`, `GIS Verification Results`, `GIS Verification Status`, `GIS Verification Year`, `Harvesting Activity Commercial Intent`, `Harvesting Activity Personal Intent`, `Include in MPAC Extract`, `Linked Parcel Year Participation`, `Mismatch Comments`, `Mismatch Comments Previous`, `Mismatch Eligible Area`, `Mismatch Eligible Area Previous`, `Mismatch Landowner`, `Mismatch Landowner Previous`, `Mismatch Legal Description`, `Mismatch Legal Description Previous`, `Mismatch Mailing Address`, `Mismatch Mailing Address Previous`, `Mismatch Total Area`, `Mismatch Total Area Previous`, `MNR Address`, `MNR City`, `MNR Eligible Area`, `MNR Legal Description`, `MNR Mailing Address Country`, `MNR Mailing Address Line2`, `MNR Mailing Address Line3`, `MNR Mailing Address Province`, `MNR Name1 Account`, `MNR Name1 Citizenship`, `MNR Name1 Type`, `MNR Name2 Account`, `MNR Name2 Citizenship`, `MNR Name2 Type`, `MNR Name3 Account`, `MNR Name3 Citizenship`, `MNR Name3 Type`, `MNR Postal Code`, `MNR Total Area`, `mnr_FirstName1`, `mnr_FirstName2`, `mnr_LastName1`, `mnr_LastName2`, `mnr_MiddleName1`, `mnr_MiddleName2`, `Modified By`, `MPAC Eligible Area`, `MPAC Legal Description`, `MPAC Mailing Address City`, `MPAC Mailing Address Country`, `MPAC Mailing Address Line1`, `MPAC Mailing Address Line2`, `MPAC Mailing Address Line3`, `MPAC Mailing Address Postal Code`, `MPAC Mailing Address Province`, `MPAC Name1`, `MPAC Name1 Citizenship`, `MPAC Name1 Type`, `MPAC Name2`, `MPAC Name2 Citizenship`, `MPAC Name2 Type`, `MPAC Name3`, `MPAC Name3 Citizenship`, `MPAC Name3 Type`, `MPAC_total_area`, `MPAC Verification Status`, `Municipality`, `Net Eligible Forest Area (D)`, `NotOverrideMNRData`, `Other Lands (I)`, `Owner`, `Parcel`, `Parcel involved in split/consol?`, `Participate FPCTRP Before`, `Participate FPCTRP Now`, `Participate MFTIP Now`, `Participated MFTIP before?`, `Participation Status`, `Previous Parcel Year Participation`, `Previous Reason`, `Previous Status Reason`, `Program`, `Project`, `Property is eligible under CLTIP`, `Provided On`, `Reason`, `Reason for MPAC Extract`, `Sent to MPAC On Date`, `Special Policy`, `Status`, `Submitted Eligible Area`, `Temp CLConfirmationNumber`, `Temporary ID`, `Total Conservation Lands (H)`, `Total Elig. Forest Area (G)`, `Total Managed Forest Area (B)`, `Total Open Area (E)`, `Total Open Area No trees (F)`, `Total Other Lands (J)`, `Total Residence Area (C)`, `Total Summary`, `Update Address`, `Update Landowners`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10100600133000, 10100600133000, 10100600133000, 10100600133000, 10100600133000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Parcel_annual_record_update`
--

CREATE TABLE `Parcel_annual_record_update` (
  `id` int(11) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Start Date` varchar(10) DEFAULT NULL,
  `End Date` varchar(10) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Status Reason` varchar(10) DEFAULT NULL,
  `MNR Name1` varchar(10) DEFAULT NULL,
  `MNR Name2` varchar(10) DEFAULT NULL,
  `MNR Name3` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `Agreed with Acreages` varchar(10) DEFAULT NULL,
  `ARN` bigint(15) DEFAULT NULL,
  `arn1` bigint(15) DEFAULT NULL,
  `arn2` bigint(15) DEFAULT NULL,
  `arn3` bigint(5) DEFAULT NULL,
  `arn4` bigint(15) DEFAULT NULL,
  `Building on CL` varchar(10) DEFAULT NULL,
  `CCLSubtype #1 Natural Heritage Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #10 Municipally designated lands` varchar(10) DEFAULT NULL,
  `CCLSubtype #11 Great Lakes Wetlands` varchar(10) DEFAULT NULL,
  `CCLSubtype #2 Regionally significant ANSI` varchar(10) DEFAULT NULL,
  `CCLSubtype #3 Species occurrence` varchar(10) DEFAULT NULL,
  `CCLSubtype #4 Habitat of Special Concern species` varchar(10) DEFAULT NULL,
  `CCLSubtype #5 OLL Featured Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #6 Abutting/ within Provincial Park` varchar(10) DEFAULT NULL,
  `CCLSubtype #7 Oak Ridges Moraine natural core` varchar(10) DEFAULT NULL,
  `CCLSubtype #8 Niagara Escarpment Area` varchar(10) DEFAULT NULL,
  `CCLSubtype #9 Regional or watershed plan` varchar(10) DEFAULT NULL,
  `CL Confirmation Number` varchar(10) DEFAULT NULL,
  `CL Eligible Area overlaps with MF Eligible Area` varchar(10) DEFAULT NULL,
  `CL Feature Area Names` varchar(10) DEFAULT NULL,
  `CL Inquiry` varchar(10) DEFAULT NULL,
  `CL Type #1` varchar(10) DEFAULT NULL,
  `Comments` varchar(10) DEFAULT NULL,
  `County` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `dateKeepMNRAddressChecked` varchar(10) DEFAULT NULL,
  `E-mail Address` varchar(10) DEFAULT NULL,
  `Error Log` varchar(10) DEFAULT NULL,
  `GIS Verification Results` varchar(10) DEFAULT NULL,
  `GIS Verification Status` varchar(10) DEFAULT NULL,
  `GIS Verification Year` varchar(10) DEFAULT NULL,
  `Harvesting Activity Commercial Intent` varchar(10) DEFAULT NULL,
  `Harvesting Activity Personal Intent` varchar(10) DEFAULT NULL,
  `Include in MPAC Extract` varchar(10) DEFAULT NULL,
  `Linked Parcel Year Participation` varchar(10) DEFAULT NULL,
  `Mismatch Comments` varchar(10) DEFAULT NULL,
  `Mismatch Comments Previous` varchar(10) DEFAULT NULL,
  `Mismatch Eligible Area` varchar(10) DEFAULT NULL,
  `Mismatch Eligible Area Previous` varchar(10) DEFAULT NULL,
  `Mismatch Landowner` varchar(10) DEFAULT NULL,
  `Mismatch Landowner Previous` varchar(10) DEFAULT NULL,
  `Mismatch Legal Description` varchar(10) DEFAULT NULL,
  `Mismatch Legal Description Previous` varchar(10) DEFAULT NULL,
  `Mismatch Mailing Address` varchar(10) DEFAULT NULL,
  `Mismatch Mailing Address Previous` varchar(10) DEFAULT NULL,
  `Mismatch Total Area` varchar(10) DEFAULT NULL,
  `Mismatch Total Area Previous` varchar(10) DEFAULT NULL,
  `MNR Address` varchar(10) DEFAULT NULL,
  `MNR City` varchar(10) DEFAULT NULL,
  `MNR Eligible Area` varchar(10) DEFAULT NULL,
  `MNR Legal Description` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Country` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Line2` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Line3` varchar(10) DEFAULT NULL,
  `MNR Mailing Address Province` varchar(10) DEFAULT NULL,
  `MNR Name1 Account` varchar(10) DEFAULT NULL,
  `MNR Name1 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name1 Type` varchar(10) DEFAULT NULL,
  `MNR Name2 Account` varchar(10) DEFAULT NULL,
  `MNR Name2 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name2 Type` varchar(10) DEFAULT NULL,
  `MNR Name3 Account` varchar(10) DEFAULT NULL,
  `MNR Name3 Citizenship` varchar(10) DEFAULT NULL,
  `MNR Name3 Type` varchar(10) DEFAULT NULL,
  `MNR Postal Code` varchar(10) DEFAULT NULL,
  `MNR Total Area` varchar(10) DEFAULT NULL,
  `mnr_FirstName1` varchar(10) DEFAULT NULL,
  `mnr_FirstName2` varchar(10) DEFAULT NULL,
  `mnr_LastName1` varchar(10) DEFAULT NULL,
  `mnr_LastName2` varchar(10) DEFAULT NULL,
  `mnr_MiddleName1` varchar(10) DEFAULT NULL,
  `mnr_MiddleName2` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `MPAC Eligible Area` varchar(10) DEFAULT NULL,
  `MPAC Legal Description` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address City` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Country` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line1` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line2` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Line3` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Postal Code` varchar(10) DEFAULT NULL,
  `MPAC Mailing Address Province` varchar(10) DEFAULT NULL,
  `MPAC Name1` varchar(10) DEFAULT NULL,
  `MPAC Name1 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name1 Type` varchar(10) DEFAULT NULL,
  `MPAC Name2` varchar(10) DEFAULT NULL,
  `MPAC Name2 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name2 Type` varchar(10) DEFAULT NULL,
  `MPAC Name3` varchar(10) DEFAULT NULL,
  `MPAC Name3 Citizenship` varchar(10) DEFAULT NULL,
  `MPAC Name3 Type` varchar(10) DEFAULT NULL,
  `MPAC Total Area` varchar(10) DEFAULT NULL,
  `MPAC Verification Status` varchar(10) DEFAULT NULL,
  `Municipality` varchar(10) DEFAULT NULL,
  `Net Eligible Forest Area (D)` varchar(10) DEFAULT NULL,
  `NotOverrideMNRData` varchar(10) DEFAULT NULL,
  `Other Lands (I)` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Parcel` varchar(10) DEFAULT NULL,
  `Parcel involved in split/consol?` varchar(10) DEFAULT NULL,
  `Participate FPCTRP Before` varchar(10) DEFAULT NULL,
  `Participate FPCTRP Now` varchar(10) DEFAULT NULL,
  `Participate MFTIP Now` varchar(10) DEFAULT NULL,
  `Participated MFTIP before?` varchar(10) DEFAULT NULL,
  `Participation Status` varchar(10) DEFAULT NULL,
  `Previous Parcel Year Participation` varchar(10) DEFAULT NULL,
  `Previous Reason` varchar(10) DEFAULT NULL,
  `Previous Status Reason` varchar(10) DEFAULT NULL,
  `Program` varchar(10) DEFAULT NULL,
  `Project` varchar(10) DEFAULT NULL,
  `Property is eligible under CLTIP` varchar(10) DEFAULT NULL,
  `Provided On` varchar(10) DEFAULT NULL,
  `Reason` varchar(10) DEFAULT NULL,
  `Reason for MPAC Extract` varchar(10) DEFAULT NULL,
  `Sent to MPAC On Date` varchar(10) DEFAULT NULL,
  `Special Policy` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Submitted Eligible Area` varchar(10) DEFAULT NULL,
  `Temp CLConfirmationNumber` varchar(10) DEFAULT NULL,
  `Temporary ID` varchar(10) DEFAULT NULL,
  `Total Conservation Lands (H)` varchar(10) DEFAULT NULL,
  `Total Elig. Forest Area (G)` varchar(10) DEFAULT NULL,
  `Total Managed Forest Area (B)` varchar(10) DEFAULT NULL,
  `Total Open Area (E)` varchar(10) DEFAULT NULL,
  `Total Open Area No trees (F)` varchar(10) DEFAULT NULL,
  `Total Other Lands (J)` varchar(10) DEFAULT NULL,
  `Total Residence Area (C)` varchar(10) DEFAULT NULL,
  `Total Summary` varchar(10) DEFAULT NULL,
  `Update Address` varchar(10) DEFAULT NULL,
  `Update Landowners` varchar(10) DEFAULT NULL,
  `a_record_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Parcel_annual_record_update`
--

INSERT INTO `Parcel_annual_record_update` (`id`, `Name`, `Start Date`, `End Date`, `Year`, `Status Reason`, `MNR Name1`, `MNR Name2`, `MNR Name3`, `Modified On`, `Agreed with Acreages`, `ARN`, `arn1`, `arn2`, `arn3`, `arn4`, `Building on CL`, `CCLSubtype #1 Natural Heritage Area`, `CCLSubtype #10 Municipally designated lands`, `CCLSubtype #11 Great Lakes Wetlands`, `CCLSubtype #2 Regionally significant ANSI`, `CCLSubtype #3 Species occurrence`, `CCLSubtype #4 Habitat of Special Concern species`, `CCLSubtype #5 OLL Featured Area`, `CCLSubtype #6 Abutting/ within Provincial Park`, `CCLSubtype #7 Oak Ridges Moraine natural core`, `CCLSubtype #8 Niagara Escarpment Area`, `CCLSubtype #9 Regional or watershed plan`, `CL Confirmation Number`, `CL Eligible Area overlaps with MF Eligible Area`, `CL Feature Area Names`, `CL Inquiry`, `CL Type #1`, `Comments`, `County`, `Created By`, `Created On`, `dateKeepMNRAddressChecked`, `E-mail Address`, `Error Log`, `GIS Verification Results`, `GIS Verification Status`, `GIS Verification Year`, `Harvesting Activity Commercial Intent`, `Harvesting Activity Personal Intent`, `Include in MPAC Extract`, `Linked Parcel Year Participation`, `Mismatch Comments`, `Mismatch Comments Previous`, `Mismatch Eligible Area`, `Mismatch Eligible Area Previous`, `Mismatch Landowner`, `Mismatch Landowner Previous`, `Mismatch Legal Description`, `Mismatch Legal Description Previous`, `Mismatch Mailing Address`, `Mismatch Mailing Address Previous`, `Mismatch Total Area`, `Mismatch Total Area Previous`, `MNR Address`, `MNR City`, `MNR Eligible Area`, `MNR Legal Description`, `MNR Mailing Address Country`, `MNR Mailing Address Line2`, `MNR Mailing Address Line3`, `MNR Mailing Address Province`, `MNR Name1 Account`, `MNR Name1 Citizenship`, `MNR Name1 Type`, `MNR Name2 Account`, `MNR Name2 Citizenship`, `MNR Name2 Type`, `MNR Name3 Account`, `MNR Name3 Citizenship`, `MNR Name3 Type`, `MNR Postal Code`, `MNR Total Area`, `mnr_FirstName1`, `mnr_FirstName2`, `mnr_LastName1`, `mnr_LastName2`, `mnr_MiddleName1`, `mnr_MiddleName2`, `Modified By`, `MPAC Eligible Area`, `MPAC Legal Description`, `MPAC Mailing Address City`, `MPAC Mailing Address Country`, `MPAC Mailing Address Line1`, `MPAC Mailing Address Line2`, `MPAC Mailing Address Line3`, `MPAC Mailing Address Postal Code`, `MPAC Mailing Address Province`, `MPAC Name1`, `MPAC Name1 Citizenship`, `MPAC Name1 Type`, `MPAC Name2`, `MPAC Name2 Citizenship`, `MPAC Name2 Type`, `MPAC Name3`, `MPAC Name3 Citizenship`, `MPAC Name3 Type`, `MPAC Total Area`, `MPAC Verification Status`, `Municipality`, `Net Eligible Forest Area (D)`, `NotOverrideMNRData`, `Other Lands (I)`, `Owner`, `Parcel`, `Parcel involved in split/consol?`, `Participate FPCTRP Before`, `Participate FPCTRP Now`, `Participate MFTIP Now`, `Participated MFTIP before?`, `Participation Status`, `Previous Parcel Year Participation`, `Previous Reason`, `Previous Status Reason`, `Program`, `Project`, `Property is eligible under CLTIP`, `Provided On`, `Reason`, `Reason for MPAC Extract`, `Sent to MPAC On Date`, `Special Policy`, `Status`, `Submitted Eligible Area`, `Temp CLConfirmationNumber`, `Temporary ID`, `Total Conservation Lands (H)`, `Total Elig. Forest Area (G)`, `Total Managed Forest Area (B)`, `Total Open Area (E)`, `Total Open Area No trees (F)`, `Total Other Lands (J)`, `Total Residence Area (C)`, `Total Summary`, `Update Address`, `Update Landowners`, `a_record_id`) VALUES
(1, '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', 420839000811300, 420839000811300, 420839000811300, 420839000811300, 420839000811300, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Parcel_record`
--

CREATE TABLE `Parcel_record` (
  `id` int(11) NOT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Status_Reason` text DEFAULT NULL,
  `MNR_Name1` text DEFAULT NULL,
  `MNR_Name2` text DEFAULT NULL,
  `MNR_Name3` text DEFAULT NULL,
  `Modified_On` varchar(255) DEFAULT NULL,
  `Agreed_with_Acreages` varchar(255) DEFAULT NULL,
  `ARN` bigint(15) NOT NULL,
  `arn1` bigint(15) DEFAULT NULL,
  `arn2` bigint(15) DEFAULT NULL,
  `arn3` bigint(15) DEFAULT NULL,
  `arn4` bigint(15) DEFAULT NULL,
  `Building_on_CL` varchar(255) DEFAULT NULL,
  `CCLSubtype_1_Natural_Heritage_Area` text DEFAULT NULL,
  `CCLSubtype_10_Municipally_designated_lands` text DEFAULT NULL,
  `CCLSubtype_11_Great_Lakes_Wetlands` text DEFAULT NULL,
  `CCLSubtype_2_Regionally_significant_ANSI` text DEFAULT NULL,
  `CCLSubtype_3_Species_occurrence` text DEFAULT NULL,
  `CCLSubtype_4_Habitat_of_Special_Concern_species` text DEFAULT NULL,
  `CCLSubtype_5_OLL_Featured_Area` text DEFAULT NULL,
  `CCLSubtype_6_Abutting_within_Provincial_Park` text DEFAULT NULL,
  `CCLSubtype_7_Oak_Ridges_Moraine_natural_core` text DEFAULT NULL,
  `CCLSubtype_8_Niagara_Escarpment_Area` text DEFAULT NULL,
  `CCLSubtype_9_Regional_or_watershed_plan` text DEFAULT NULL,
  `CL_Confirmation_Number` varchar(255) DEFAULT NULL,
  `CL_Eligible_Area_overlaps_with_MF_Eligible_Area` text DEFAULT NULL,
  `CL_Feature_Area_Names` text DEFAULT NULL,
  `CL_Inquiry` text DEFAULT NULL,
  `CL_Type_1` text DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `County` text DEFAULT NULL,
  `Created_By` text DEFAULT NULL,
  `Created_On` varchar(255) DEFAULT NULL,
  `dateKeepMNRAddressChecked` varchar(255) DEFAULT NULL,
  `E_mail_Address` text DEFAULT NULL,
  `Error_Log` text DEFAULT NULL,
  `GIS_Verification_Results` text DEFAULT NULL,
  `GIS_Verification_Status` text DEFAULT NULL,
  `GIS_Verification_Year` int(11) DEFAULT NULL,
  `Harvesting_Activity_Commercial_Intent` text DEFAULT NULL,
  `Harvesting_Activity_Personal_Intent` text DEFAULT NULL,
  `Include_in_MPAC_Extract` varchar(255) DEFAULT NULL,
  `Linked_Parcel_Year_Participation` varchar(255) DEFAULT NULL,
  `Mismatch_Comments` text DEFAULT NULL,
  `Mismatch_Comments_Previous` text DEFAULT NULL,
  `Mismatch_Eligible_Area` float DEFAULT NULL,
  `Mismatch_Eligible_Area_Previous` float DEFAULT NULL,
  `Mismatch_Landowner` text DEFAULT NULL,
  `Mismatch_Landowner_Previous` text DEFAULT NULL,
  `Mismatch_Legal_Description` text DEFAULT NULL,
  `Mismatch_Legal_Description_Previous` text DEFAULT NULL,
  `Mismatch_Mailing_Address` text DEFAULT NULL,
  `Mismatch_Mailing_Address_Previous` text DEFAULT NULL,
  `Mismatch_Total_Area` float DEFAULT NULL,
  `Mismatch_Total_Area_Previous` float DEFAULT NULL,
  `MNR_Address` text DEFAULT NULL,
  `MNR_City` text DEFAULT NULL,
  `MNR_Eligible_Area` float DEFAULT NULL,
  `MNR_Legal_Description` text DEFAULT NULL,
  `MNR_Mailing_Address_Country` text DEFAULT NULL,
  `MNR_Mailing_Address_Line2` text DEFAULT NULL,
  `MNR_Mailing_Address_Line3` text DEFAULT NULL,
  `MNR_Mailing_Address_Province` text DEFAULT NULL,
  `MNR_Name1_Account` text DEFAULT NULL,
  `MNR_Name1_Citizenship` text DEFAULT NULL,
  `MNR_Name1_Type` text DEFAULT NULL,
  `MNR_Name2_Account` text DEFAULT NULL,
  `MNR_Name2_Citizenship` text DEFAULT NULL,
  `MNR_Name2_Type` text DEFAULT NULL,
  `MNR_Name3_Account` text DEFAULT NULL,
  `MNR_Name3_Citizenship` text DEFAULT NULL,
  `MNR_Name3_Type` text DEFAULT NULL,
  `MNR_Phone_Number` varchar(255) DEFAULT NULL,
  `MNR_Postal_Code` varchar(255) DEFAULT NULL,
  `MNR_Province` text DEFAULT NULL,
  `MNR_Street_Number` text DEFAULT NULL,
  `MNR_Total_Area` float DEFAULT NULL,
  `MPAC_Address` text DEFAULT NULL,
  `MPAC_City` text DEFAULT NULL,
  `MPAC_Eligible_Area` float DEFAULT NULL,
  `MPAC_Legal_Description` text DEFAULT NULL,
  `MPAC_Mailing_Address_Country` text DEFAULT NULL,
  `MPAC_Mailing_Address_Line2` text DEFAULT NULL,
  `MPAC_Mailing_Address_Line3` text DEFAULT NULL,
  `MPAC_Mailing_Address_Province` text DEFAULT NULL,
  `MPAC_Name1_Account` text DEFAULT NULL,
  `MPAC_Name1_Citizenship` text DEFAULT NULL,
  `MPAC_Name1_Type` text DEFAULT NULL,
  `MPAC_Name2_Account` text DEFAULT NULL,
  `MPAC_Name2_Citizenship` text DEFAULT NULL,
  `MPAC_Name2_Type` text DEFAULT NULL,
  `MPAC_Name3_Account` text DEFAULT NULL,
  `MPAC_Name3_Citizenship` text DEFAULT NULL,
  `MPAC_Name3_Type` text DEFAULT NULL,
  `MPAC_Phone_Number` varchar(255) DEFAULT NULL,
  `MPAC_Postal_Code` varchar(255) DEFAULT NULL,
  `MPAC_Province` text DEFAULT NULL,
  `MPAC_Street_Number` text DEFAULT NULL,
  `MPAC_Total_Area` float DEFAULT NULL,
  `Original_Data_Entry_Date` varchar(255) DEFAULT NULL,
  `Parcel_Identifier` varchar(255) DEFAULT NULL,
  `Parcel_Identifier_Previous` varchar(255) DEFAULT NULL,
  `Parcel_Status` text DEFAULT NULL,
  `Parcel_Status_Previous` text DEFAULT NULL,
  `Region` text DEFAULT NULL,
  `Submitted_By` text DEFAULT NULL,
  `Surveyor_Name` text DEFAULT NULL,
  `Township` text DEFAULT NULL,
  `Updated_By` text DEFAULT NULL,
  `Updated_On` varchar(255) DEFAULT NULL,
  `Verification_Method` text DEFAULT NULL,
  `Verification_Method_Previous` text DEFAULT NULL,
  `Work_Order_Number` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `Parcel_record`
--

INSERT INTO `Parcel_record` (`id`, `Start_Date`, `End_Date`, `Year`, `Status_Reason`, `MNR_Name1`, `MNR_Name2`, `MNR_Name3`, `Modified_On`, `Agreed_with_Acreages`, `ARN`, `arn1`, `arn2`, `arn3`, `arn4`, `Building_on_CL`, `CCLSubtype_1_Natural_Heritage_Area`, `CCLSubtype_10_Municipally_designated_lands`, `CCLSubtype_11_Great_Lakes_Wetlands`, `CCLSubtype_2_Regionally_significant_ANSI`, `CCLSubtype_3_Species_occurrence`, `CCLSubtype_4_Habitat_of_Special_Concern_species`, `CCLSubtype_5_OLL_Featured_Area`, `CCLSubtype_6_Abutting_within_Provincial_Park`, `CCLSubtype_7_Oak_Ridges_Moraine_natural_core`, `CCLSubtype_8_Niagara_Escarpment_Area`, `CCLSubtype_9_Regional_or_watershed_plan`, `CL_Confirmation_Number`, `CL_Eligible_Area_overlaps_with_MF_Eligible_Area`, `CL_Feature_Area_Names`, `CL_Inquiry`, `CL_Type_1`, `Comments`, `County`, `Created_By`, `Created_On`, `dateKeepMNRAddressChecked`, `E_mail_Address`, `Error_Log`, `GIS_Verification_Results`, `GIS_Verification_Status`, `GIS_Verification_Year`, `Harvesting_Activity_Commercial_Intent`, `Harvesting_Activity_Personal_Intent`, `Include_in_MPAC_Extract`, `Linked_Parcel_Year_Participation`, `Mismatch_Comments`, `Mismatch_Comments_Previous`, `Mismatch_Eligible_Area`, `Mismatch_Eligible_Area_Previous`, `Mismatch_Landowner`, `Mismatch_Landowner_Previous`, `Mismatch_Legal_Description`, `Mismatch_Legal_Description_Previous`, `Mismatch_Mailing_Address`, `Mismatch_Mailing_Address_Previous`, `Mismatch_Total_Area`, `Mismatch_Total_Area_Previous`, `MNR_Address`, `MNR_City`, `MNR_Eligible_Area`, `MNR_Legal_Description`, `MNR_Mailing_Address_Country`, `MNR_Mailing_Address_Line2`, `MNR_Mailing_Address_Line3`, `MNR_Mailing_Address_Province`, `MNR_Name1_Account`, `MNR_Name1_Citizenship`, `MNR_Name1_Type`, `MNR_Name2_Account`, `MNR_Name2_Citizenship`, `MNR_Name2_Type`, `MNR_Name3_Account`, `MNR_Name3_Citizenship`, `MNR_Name3_Type`, `MNR_Phone_Number`, `MNR_Postal_Code`, `MNR_Province`, `MNR_Street_Number`, `MNR_Total_Area`, `MPAC_Address`, `MPAC_City`, `MPAC_Eligible_Area`, `MPAC_Legal_Description`, `MPAC_Mailing_Address_Country`, `MPAC_Mailing_Address_Line2`, `MPAC_Mailing_Address_Line3`, `MPAC_Mailing_Address_Province`, `MPAC_Name1_Account`, `MPAC_Name1_Citizenship`, `MPAC_Name1_Type`, `MPAC_Name2_Account`, `MPAC_Name2_Citizenship`, `MPAC_Name2_Type`, `MPAC_Name3_Account`, `MPAC_Name3_Citizenship`, `MPAC_Name3_Type`, `MPAC_Phone_Number`, `MPAC_Postal_Code`, `MPAC_Province`, `MPAC_Street_Number`, `MPAC_Total_Area`, `Original_Data_Entry_Date`, `Parcel_Identifier`, `Parcel_Identifier_Previous`, `Parcel_Status`, `Parcel_Status_Previous`, `Region`, `Submitted_By`, `Surveyor_Name`, `Township`, `Updated_By`, `Updated_On`, `Verification_Method`, `Verification_Method_Previous`, `Work_Order_Number`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 420839000811450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `Aboriginal Groups Involved` varchar(100) DEFAULT NULL,
  `Animal Care Protocol` varchar(100) DEFAULT NULL,
  `Approach or Methodology` varchar(100) DEFAULT NULL,
  `Approval Comments` varchar(255) DEFAULT NULL,
  `Associated Parcels` int(11) DEFAULT NULL,
  `Benefits` varchar(255) DEFAULT NULL,
  `Case` varchar(20) DEFAULT NULL,
  `Census Subdivision` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Claims Override Reason` varchar(255) DEFAULT NULL,
  `Client Share (Base)` decimal(10,2) DEFAULT NULL,
  `Client Share %` decimal(5,2) DEFAULT NULL,
  `Client Share Amount` decimal(10,2) DEFAULT NULL,
  `Client Type for HST` varchar(100) DEFAULT NULL,
  `Closure Comments` varchar(255) DEFAULT NULL,
  `Closure Reason` varchar(100) DEFAULT NULL,
  `Community Support` varchar(100) DEFAULT NULL,
  `Construction End Date` date DEFAULT NULL,
  `Construction Start Date` date DEFAULT NULL,
  `Costs Incurred From` date DEFAULT NULL,
  `Costs Incurred To` date DEFAULT NULL,
  `County` varchar(100) DEFAULT NULL,
  `Created By (Delegate)` varchar(100) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `currenncyTemp` decimal(10,2) DEFAULT NULL,
  `currenncyTemp (Base)` decimal(10,2) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Duty To Consult` varchar(100) DEFAULT NULL,
  `EA Approved On` date DEFAULT NULL,
  `Exchange Rate` decimal(10,4) DEFAULT NULL,
  `Executed Date` date DEFAULT NULL,
  `Federal Riding` varchar(100) DEFAULT NULL,
  `Federal Share %` decimal(5,2) DEFAULT NULL,
  `Federal Share Amount` decimal(10,2) DEFAULT NULL,
  `Federal Share Amount (Base)` decimal(10,2) DEFAULT NULL,
  `Final Report Date` date DEFAULT NULL,
  `Final Report Date Multiyear` date DEFAULT NULL,
  `First Contract Award` date DEFAULT NULL,
  `First Tender Call` date DEFAULT NULL,
  `Forecasted Construction End Date` date DEFAULT NULL,
  `Forecasted Construction Start Date` date DEFAULT NULL,
  `Project Types Import Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `Aboriginal Groups Involved`, `Animal Care Protocol`, `Approach or Methodology`, `Approval Comments`, `Associated Parcels`, `Benefits`, `Case`, `Census Subdivision`, `City`, `Claims Override Reason`, `Client Share (Base)`, `Client Share %`, `Client Share Amount`, `Client Type for HST`, `Closure Comments`, `Closure Reason`, `Community Support`, `Construction End Date`, `Construction Start Date`, `Costs Incurred From`, `Costs Incurred To`, `County`, `Created By (Delegate)`, `Currency`, `currenncyTemp`, `currenncyTemp (Base)`, `Description`, `Duty To Consult`, `EA Approved On`, `Exchange Rate`, `Executed Date`, `Federal Riding`, `Federal Share %`, `Federal Share Amount`, `Federal Share Amount (Base)`, `Final Report Date`, `Final Report Date Multiyear`, `First Contract Award`, `First Tender Call`, `Forecasted Construction End Date`, `Forecasted Construction Start Date`, `Project Types Import Id`) VALUES
(1, 'Group_A', 'AC_Protocol1', 'Method_A', 'Approved after consultation.', 5, 'Habitat restoration, biodiversity.', 'CLTIP_001', 'Subdiv_01', 'Ottawa', 'Additional information provided', '25000.00', '40.00', '10000.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2023-09-30', '2023-04-01', '2023-04-01', '2023-09-30', 'County_01', 'John_Doe', 'CAD', '15000.00', '20000.00', 'Habitat restoration project.', 'Consultation with Group_A', '2022-11-15', '1.0000', '2022-03-01', 'Riding_01', '60.00', '15000.00', '25000.00', '2023-10-15', '2023-10-15', '2023-01-15', '2023-01-01', '2023-09-30', '2023-04-01', 101),
(2, 'Group_B', 'AC_Protocol2', 'Method_B', 'Approved after consultation.', 7, 'Habitat restoration, biodiversity.', 'CLTIP_002', 'Subdiv_02', 'Toronto', 'Additional information provided', '30000.00', '45.00', '13500.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2023-10-31', '2023-05-01', '2023-05-01', '2023-10-31', 'County_02', 'Jane_Doe', 'CAD', '16500.00', '22000.00', 'Habitat restoration project.', 'Consultation with Group_B', '2022-11-20', '1.0000', '2022-03-10', 'Riding_02', '55.00', '16500.00', '30000.00', '2023-11-15', '2023-11-15', '2023-02-15', '2023-02-01', '2023-10-31', '2023-05-01', 102),
(3, 'Group_C', 'AC_Protocol3', 'Method_C', 'Approved after consultation.', 6, 'Habitat restoration, biodiversity.', 'CLTIP_003', 'Subdiv_03', 'Vancouver', 'Additional information provided', '28000.00', '50.00', '14000.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2023-11-30', '2023-06-01', '2023-06-01', '2023-11-30', 'County_03', 'Jim_Doe', 'CAD', '14000.00', '24000.00', 'Habitat restoration project.', 'Consultation with Group_C', '2022-12-01', '1.0000', '2022-03-15', 'Riding_03', '50.00', '14000.00', '28000.00', '2023-12-15', '2023-12-15', '2023-03-15', '2023-03-01', '2023-11-30', '2023-06-01', 103),
(4, 'Group_D', 'AC_Protocol4', 'Method_D', 'Approved after consultation.', 8, 'Habitat restoration, biodiversity.', 'CLTIP_004', 'Subdiv_04', 'Calgary', 'Additional information provided', '32000.00', '60.00', '19200.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2024-01-31', '2023-07-01', '2023-07-01', '2024-01-31', 'County_04', 'Jill_Doe', 'CAD', '12800.00', '26000.00', 'Habitat restoration project.', 'Consultation with Group_D', '2023-01-05', '1.0000', '2022-03-20', 'Riding_04', '40.00', '12800.00', '32000.00', '2024-02-15', '2024-02-15', '2023-04-15', '2023-04-01', '2024-01-31', '2023-07-01', 104),
(5, 'Group_E', 'AC_Protocol5', 'Method_E', 'Approved after consultation.', 9, 'Habitat restoration, biodiversity.', 'CLTIP_005', 'Subdiv_05', 'Montreal', 'Additional information provided', '35000.00', '65.00', '22750.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2024-03-31', '2023-08-01', '2023-08-01', '2024-03-31', 'County_05', 'Jack_Doe', 'CAD', '12250.00', '29000.00', 'Habitat restoration project.', 'Consultation with Group_E', '2023-02-01', '1.0000', '2022-03-25', 'Riding_05', '35.00', '12250.00', '35000.00', '2024-04-15', '2024-04-15', '2023-05-15', '2023-05-01', '2024-03-31', '2023-08-01', 105),
(6, 'Group_F', 'AC_Protocol6', 'Method_F', 'Approved after consultation.', 4, 'Habitat restoration, biodiversity.', 'CLTIP_006', 'Subdiv_06', 'Edmonton', 'Additional information provided', '23000.00', '55.00', '12650.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2024-05-31', '2023-09-01', '2023-09-01', '2024-05-31', 'County_06', 'Janet_Doe', 'CAD', '10350.00', '21000.00', 'Habitat restoration project.', 'Consultation with Group_F', '2023-03-01', '1.0000', '2022-03-30', 'Riding_06', '45.00', '10350.00', '23000.00', '2024-06-15', '2024-06-15', '2023-06-15', '2023-06-01', '2024-05-31', '2023-09-01', 106),
(7, 'Group_G', 'AC_Protocol7', 'Method_G', 'Approved after consultation.', 3, 'Habitat restoration, biodiversity.', 'CLTIP_007', 'Subdiv_07', 'Quebec City', 'Additional information provided', '20000.00', '50.00', '10000.00', 'Non-profit', 'Project completed successfully.', 'Project completed', 'Local community engaged', '2024-07-31', '2023-10-01', '2023-10-01', '2024-07-31', 'County_07', 'Jake_Doe', 'CAD', '10000.00', '18000.00', 'Habitat restoration project.', 'Consultation with Group_G', '2023-04-01', '1.0000', '2022-04-01', 'Riding_07', '50.00', '10000.00', '20000.00', '2024-08-15', '2024-08-15', '2023-07-15', '2023-07-01', '2024-07-31', '2023-10-01', 107);

-- --------------------------------------------------------

--
-- Table structure for table `Programs`
--

CREATE TABLE `Programs` (
  `Aprroved By` varchar(100) DEFAULT NULL,
  `Created By (Delegate)` varchar(100) DEFAULT NULL,
  `DTC Lead` varchar(100) DEFAULT NULL,
  `Duty Consult Aprroved By` varchar(100) DEFAULT NULL,
  `Duty Consult Aprroved On` date DEFAULT NULL,
  `Goals` varchar(100) DEFAULT NULL,
  `HoldBack %` varchar(100) DEFAULT NULL,
  `Import Id` varchar(100) DEFAULT NULL,
  `Modified By (Delegate)` varchar(100) DEFAULT NULL,
  `Pre-Proposal Form Id` varchar(100) DEFAULT NULL,
  `Project Status` varchar(100) DEFAULT NULL,
  `Record Created On` date DEFAULT NULL,
  `Secondary Analyst` varchar(100) DEFAULT NULL,
  `Secondary Lead` varchar(100) DEFAULT NULL,
  `Secondary Manager` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Programs`
--

INSERT INTO `Programs` (`Aprroved By`, `Created By (Delegate)`, `DTC Lead`, `Duty Consult Aprroved By`, `Duty Consult Aprroved On`, `Goals`, `HoldBack %`, `Import Id`, `Modified By (Delegate)`, `Pre-Proposal Form Id`, `Project Status`, `Record Created On`, `Secondary Analyst`, `Secondary Lead`, `Secondary Manager`, `id`) VALUES
('User 1', 'Delegate 1', 'Lead 1', 'User 2', '2023-01-01', 'Goal 1', '10.00', 'ID1', 'Delegate 2', 'Form 1', 'Status 1', '2023-01-01', 'Analyst 1', 'Lead 2', 'Manager 1', 1),
('User 3', 'Delegate 3', 'Lead 3', 'User 4', '2023-02-01', 'Goal 2', '20.00', 'ID2', 'Delegate 4', 'Form 2', 'Status 2', '2023-02-01', 'Analyst 2', 'Lead 4', 'Manager 2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `ARN` bigint(15) NOT NULL,
  `Program` enum('MFTIP','CLTIP') DEFAULT NULL,
  `Plan` int(11) DEFAULT NULL,
  `PlanStatus` varchar(255) DEFAULT NULL,
  `PlanTerm` varchar(255) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `PropertiesInPlan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `ARN`, `Program`, `Plan`, `PlanStatus`, `PlanTerm`, `Owner`, `PropertiesInPlan`) VALUES
(0, 10100600133000, 'CLTIP', 2336, 'Closed', '2017-2022', 'Luke Moore', '010100004050030'),
(1, 420839000811300, 'MFTIP', 2331, 'Active', '2029-2039', 'Alexander Scott', '010100004050025 + 3 more'),
(3, 420839000811450, 'MFTIP', 2307, 'Closed', '2008-2017', 'Anderson Cooper', '010100004050000 + 5 more');

-- --------------------------------------------------------

--
-- Table structure for table `Send to MPAC`
--

CREATE TABLE `Send to MPAC` (
  `Project Name` int(11) NOT NULL,
  `Project Type` int(11) NOT NULL,
  `Account` int(11) NOT NULL,
  `Project Start Date` int(11) NOT NULL,
  `Project End Date` int(11) NOT NULL,
  `Created By` text NOT NULL,
  `Created On` date NOT NULL,
  `Modified By` text NOT NULL,
  `Modified On` date NOT NULL,
  `Status` text NOT NULL,
  `Status Type` text NOT NULL,
  `Date Sent` date NOT NULL,
  `Reason Sent` text NOT NULL,
  `MPAC_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Send to MPAC`
--

INSERT INTO `Send to MPAC` (`Project Name`, `Project Type`, `Account`, `Project Start Date`, `Project End Date`, `Created By`, `Created On`, `Modified By`, `Modified On`, `Status`, `Status Type`, `Date Sent`, `Reason Sent`, `MPAC_id`) VALUES
(2, 2, 2, 20230201, 20231231, 'User 3', '2023-02-01', 'User 4', '2023-02-02', 'Status 2', 'Type 2', '2023-02-03', 'Reason 2', 20230001);

-- --------------------------------------------------------

--
-- Table structure for table `Technical_reviews`
--

CREATE TABLE `Technical_reviews` (
  `id` bigint(11) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Individual Review Type` varchar(10) DEFAULT NULL,
  `Due Date` varchar(10) DEFAULT NULL,
  `Submitted On` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Total Score` varchar(10) DEFAULT NULL,
  `Status Reason` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `20 Year Plan Dates Correct` varchar(10) DEFAULT NULL,
  `Approved By` varchar(10) DEFAULT NULL,
  `Approved On` varchar(10) DEFAULT NULL,
  `Assessment Form Id` varchar(10) DEFAULT NULL,
  `Assessment Package Number` varchar(10) DEFAULT NULL,
  `Client Lead` varchar(10) DEFAULT NULL,
  `Comments` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `Evaluation` varchar(10) DEFAULT NULL,
  `Exchange Rate` varchar(10) DEFAULT NULL,
  `Mandatory Items Score` varchar(10) DEFAULT NULL,
  `Maximum Score` varchar(10) DEFAULT NULL,
  `Meets Min Standards` varchar(10) DEFAULT NULL,
  `MFPA` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `Overall Quality Comments` varchar(10) DEFAULT NULL,
  `Overall Quality Score 1` varchar(10) DEFAULT NULL,
  `Overall Quality Score 2` varchar(10) DEFAULT NULL,
  `Overall Quality Score 3` varchar(10) DEFAULT NULL,
  `Overall Quality Score 4` varchar(10) DEFAULT NULL,
  `Overall Quality Score 5` varchar(10) DEFAULT NULL,
  `Overall Quality Score 6` varchar(10) DEFAULT NULL,
  `Portal User` varchar(10) DEFAULT NULL,
  `Recommendation` varchar(10) DEFAULT NULL,
  `Seciton 3.2 Score` varchar(10) DEFAULT NULL,
  `Section 1 Comments` varchar(10) DEFAULT NULL,
  `Section 1.1 Score` varchar(10) DEFAULT NULL,
  `Section 1.2 Score` varchar(10) DEFAULT NULL,
  `Section 10 Comments` varchar(10) DEFAULT NULL,
  `Section 10 Score` varchar(10) DEFAULT NULL,
  `Section 2 Comments` varchar(10) DEFAULT NULL,
  `Section 2 Score` varchar(10) DEFAULT NULL,
  `Section 2 Score in %` varchar(10) DEFAULT NULL,
  `Section 2.1 Score` varchar(10) DEFAULT NULL,
  `Section 2.2 Score` varchar(10) DEFAULT NULL,
  `Section 3 Comments` varchar(10) DEFAULT NULL,
  `Section 3.1 Score` varchar(10) DEFAULT NULL,
  `Section 4 Comments` varchar(10) DEFAULT NULL,
  `Section 4 Score` varchar(10) DEFAULT NULL,
  `Section 5.1 Score` varchar(10) DEFAULT NULL,
  `Section 5.2 Score` varchar(10) DEFAULT NULL,
  `Section 5.3 Score` varchar(10) DEFAULT NULL,
  `Section 6.1 Score` varchar(10) DEFAULT NULL,
  `Section 6.2 Score` varchar(10) DEFAULT NULL,
  `Section 7 Comments` varchar(10) DEFAULT NULL,
  `Section 7 Eligibility Score` varchar(10) DEFAULT NULL,
  `Section 7.1 Score` varchar(10) DEFAULT NULL,
  `Section 7.2 Score` varchar(10) DEFAULT NULL,
  `Section 7.3 Score` varchar(10) DEFAULT NULL,
  `Section 7.4 Score` varchar(10) DEFAULT NULL,
  `Section 7.5 Score` varchar(10) DEFAULT NULL,
  `Section 7.6 Score` varchar(10) DEFAULT NULL,
  `Section 8 Comments` varchar(10) DEFAULT NULL,
  `Section 8 Score` varchar(10) DEFAULT NULL,
  `Section 9 Comments` varchar(10) DEFAULT NULL,
  `Section 9 Score` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Total Percentage` varchar(10) DEFAULT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Technical_reviews`
--

INSERT INTO `Technical_reviews` (`id`, `Name`, `Individual Review Type`, `Due Date`, `Submitted On`, `Owner`, `Total Score`, `Status Reason`, `Modified On`, `20 Year Plan Dates Correct`, `Approved By`, `Approved On`, `Assessment Form Id`, `Assessment Package Number`, `Client Lead`, `Comments`, `Created By`, `Created On`, `Currency`, `Evaluation`, `Exchange Rate`, `Mandatory Items Score`, `Maximum Score`, `Meets Min Standards`, `MFPA`, `Modified By`, `Overall Quality Comments`, `Overall Quality Score 1`, `Overall Quality Score 2`, `Overall Quality Score 3`, `Overall Quality Score 4`, `Overall Quality Score 5`, `Overall Quality Score 6`, `Portal User`, `Recommendation`, `Seciton 3.2 Score`, `Section 1 Comments`, `Section 1.1 Score`, `Section 1.2 Score`, `Section 10 Comments`, `Section 10 Score`, `Section 2 Comments`, `Section 2 Score`, `Section 2 Score in %`, `Section 2.1 Score`, `Section 2.2 Score`, `Section 3 Comments`, `Section 3.1 Score`, `Section 4 Comments`, `Section 4 Score`, `Section 5.1 Score`, `Section 5.2 Score`, `Section 5.3 Score`, `Section 6.1 Score`, `Section 6.2 Score`, `Section 7 Comments`, `Section 7 Eligibility Score`, `Section 7.1 Score`, `Section 7.2 Score`, `Section 7.3 Score`, `Section 7.4 Score`, `Section 7.5 Score`, `Section 7.6 Score`, `Section 8 Comments`, `Section 8 Score`, `Section 9 Comments`, `Section 9 Score`, `Status`, `Total Percentage`, `plan_id`) VALUES
(1, 'Name 1', 'Type 1', '2023-01-31', '2023-01-15', 'Owner 1', '90.00', 'Reason 1', '2023-01-15', 'Yes', 'User 1', '2023-01-16', 'Form 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Name 2', 'Type 2', '2023-02-28', '2023-02-15', 'Owner 2', '80.00', 'Reason 2', '2023-02-15', 'No', 'User 2', '2023-02-16', 'Form 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`rollNumber`);

--
-- Indexes for table `Appeals`
--
ALTER TABLE `Appeals`
  ADD PRIMARY KEY (`Appeal_Number`);

--
-- Indexes for table `appeal_parcels`
--
ALTER TABLE `appeal_parcels`
  ADD PRIMARY KEY (`ARN`),
  ADD KEY `Appeal` (`Appeal`);

--
-- Indexes for table `CLTIP`
--
ALTER TABLE `CLTIP`
  ADD PRIMARY KEY (`ARN`);

--
-- Indexes for table `Cltip_application`
--
ALTER TABLE `Cltip_application`
  ADD PRIMARY KEY (`PIN`);

--
-- Indexes for table `Compartements`
--
ALTER TABLE `Compartements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Counties`
--
ALTER TABLE `Counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `EligibleAreaUpdates`
--
ALTER TABLE `EligibleAreaUpdates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Area_id` (`Area_id`),
  ADD KEY `ARN` (`ARN`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `exam_candidates`
--
ALTER TABLE `exam_candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sin` (`sin`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `landowners`
--
ALTER TABLE `landowners`
  ADD PRIMARY KEY (`ARN`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `plan_number` (`plan_number`);

--
-- Indexes for table `managed_forest_plan_approvers`
--
ALTER TABLE `managed_forest_plan_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MFTIP`
--
ALTER TABLE `MFTIP`
  ADD PRIMARY KEY (`ARN`);

--
-- Indexes for table `MFTIP_form`
--
ALTER TABLE `MFTIP_form`
  ADD PRIMARY KEY (`formId`),
  ADD KEY `fk_accounts` (`ARN`);

--
-- Indexes for table `Municipality`
--
ALTER TABLE `Municipality`
  ADD PRIMARY KEY (`Municipality Code`),
  ADD KEY `fk_accounts2` (`ARN`);

--
-- Indexes for table `Ownership_change`
--
ALTER TABLE `Ownership_change`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_accounts3` (`ARN`);

--
-- Indexes for table `Parcel`
--
ALTER TABLE `Parcel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parcel_annual_record`
--
ALTER TABLE `Parcel_annual_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parcel_annual_record_update`
--
ALTER TABLE `Parcel_annual_record_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ARN` (`ARN`),
  ADD KEY `arn1` (`arn1`),
  ADD KEY `arn2` (`arn2`),
  ADD KEY `arn3` (`arn3`),
  ADD KEY `arn4` (`arn4`),
  ADD KEY `record_id` (`a_record_id`);

--
-- Indexes for table `Parcel_record`
--
ALTER TABLE `Parcel_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ARN` (`ARN`),
  ADD KEY `arn1` (`arn1`),
  ADD KEY `arn2` (`arn2`),
  ADD KEY `arn3` (`arn3`),
  ADD KEY `arn4` (`arn4`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Programs`
--
ALTER TABLE `Programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ARN` (`ARN`);

--
-- Indexes for table `Send to MPAC`
--
ALTER TABLE `Send to MPAC`
  ADD PRIMARY KEY (`MPAC_id`);

--
-- Indexes for table `Technical_reviews`
--
ALTER TABLE `Technical_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Compartements`
--
ALTER TABLE `Compartements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Counties`
--
ALTER TABLE `Counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EligibleAreaUpdates`
--
ALTER TABLE `EligibleAreaUpdates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exam_candidates`
--
ALTER TABLE `exam_candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `MFTIP_form`
--
ALTER TABLE `MFTIP_form`
  MODIFY `formId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Ownership_change`
--
ALTER TABLE `Ownership_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Parcel_annual_record_update`
--
ALTER TABLE `Parcel_annual_record_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Programs`
--
ALTER TABLE `Programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Technical_reviews`
--
ALTER TABLE `Technical_reviews`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appeal_parcels`
--
ALTER TABLE `appeal_parcels`
  ADD CONSTRAINT `appeal_parcels_ibfk_1` FOREIGN KEY (`Appeal`) REFERENCES `Appeals` (`Appeal_Number`);

--
-- Constraints for table `EligibleAreaUpdates`
--
ALTER TABLE `EligibleAreaUpdates`
  ADD CONSTRAINT `EligibleAreaUpdates_ibfk_1` FOREIGN KEY (`Area_id`) REFERENCES `Counties` (`id`),
  ADD CONSTRAINT `EligibleAreaUpdates_ibfk_2` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `landowners`
--
ALTER TABLE `landowners`
  ADD CONSTRAINT `landowners_ibfk_1` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `landowners_ibfk_2` FOREIGN KEY (`plan_number`) REFERENCES `plans` (`id`);

--
-- Constraints for table `MFTIP`
--
ALTER TABLE `MFTIP`
  ADD CONSTRAINT `MFTIP_ibfk_1` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `MFTIP_form`
--
ALTER TABLE `MFTIP_form`
  ADD CONSTRAINT `fk_accounts` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `Municipality`
--
ALTER TABLE `Municipality`
  ADD CONSTRAINT `fk_accounts2` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `Ownership_change`
--
ALTER TABLE `Ownership_change`
  ADD CONSTRAINT `fk_accounts3` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `Parcel_annual_record`
--
ALTER TABLE `Parcel_annual_record`
  ADD CONSTRAINT `Parcel_annual_record_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Parcel_record` (`id`);

--
-- Constraints for table `Parcel_annual_record_update`
--
ALTER TABLE `Parcel_annual_record_update`
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_1` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_2` FOREIGN KEY (`arn1`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_3` FOREIGN KEY (`arn2`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_4` FOREIGN KEY (`arn3`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_5` FOREIGN KEY (`arn4`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_annual_record_update_ibfk_6` FOREIGN KEY (`a_record_id`) REFERENCES `Parcel_annual_record` (`id`);

--
-- Constraints for table `Parcel_record`
--
ALTER TABLE `Parcel_record`
  ADD CONSTRAINT `Parcel_record_ibfk_1` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_record_ibfk_2` FOREIGN KEY (`arn1`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_record_ibfk_3` FOREIGN KEY (`arn2`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_record_ibfk_4` FOREIGN KEY (`arn3`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_record_ibfk_5` FOREIGN KEY (`arn4`) REFERENCES `accounts` (`rollNumber`),
  ADD CONSTRAINT `Parcel_record_ibfk_6` FOREIGN KEY (`id`) REFERENCES `records` (`id`);

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`ARN`) REFERENCES `accounts` (`rollNumber`);

--
-- Constraints for table `Send to MPAC`
--
ALTER TABLE `Send to MPAC`
  ADD CONSTRAINT `Send to MPAC_ibfk_1` FOREIGN KEY (`MPAC_id`) REFERENCES `managed_forest_plan_approvers` (`id`);

--
-- Constraints for table `Technical_reviews`
--
ALTER TABLE `Technical_reviews`
  ADD CONSTRAINT `Technical_reviews_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
