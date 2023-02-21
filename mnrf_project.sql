-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2023 at 05:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.14

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
-- Table structure for table `accounts_1`
--

CREATE TABLE `accounts_1` (
  `county` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `Address 1: Name` varchar(10) DEFAULT NULL,
  `Address 1: Primary Contact Name` varchar(10) DEFAULT NULL,
  `Address 1: Shipping Method` varchar(10) DEFAULT NULL,
  `Address 1: Telephone 2` varchar(10) DEFAULT NULL,
  `Address 2` varchar(10) DEFAULT NULL,
  `Address 2: Address Type` varchar(10) DEFAULT NULL,
  `Address 2: City` varchar(10) DEFAULT NULL,
  `Address 2: Country/Region` varchar(10) DEFAULT NULL,
  `Address 2: County` varchar(10) DEFAULT NULL,
  `Address 2: Fax` varchar(10) DEFAULT NULL,
  `Address 2: Name` varchar(10) DEFAULT NULL,
  `Address 2: Post Office Box` varchar(10) DEFAULT NULL,
  `Address 2: Primary Contact Name` varchar(10) DEFAULT NULL,
  `Address 2: Shipping Method` varchar(10) DEFAULT NULL,
  `Address 2: State/Province` varchar(10) DEFAULT NULL,
  `Address 2: Street 1` varchar(10) DEFAULT NULL,
  `Address 2: Street 2` varchar(10) DEFAULT NULL,
  `Address 2: Street 3` varchar(10) DEFAULT NULL,
  `Address 2: Telephone 1` varchar(10) DEFAULT NULL,
  `Address 2: Telephone 2` varchar(10) DEFAULT NULL,
  `Address 2: ZIP/Postal Code` varchar(10) DEFAULT NULL,
  `Address Phone` varchar(10) DEFAULT NULL,
  `Business Type` varchar(10) DEFAULT NULL,
  `Classification` varchar(10) DEFAULT NULL,
  `Client Type for HST` varchar(10) DEFAULT NULL,
  `CRA BN` varchar(10) DEFAULT NULL,
  `Created By Username` varchar(10) DEFAULT NULL,
  `Customer Size` varchar(10) DEFAULT NULL,
  `DMS #` varchar(10) DEFAULT NULL,
  `Farm BN` varchar(10) DEFAULT NULL,
  `Federal Riding` varchar(10) DEFAULT NULL,
  `FTP Site` varchar(10) DEFAULT NULL,
  `Geocode` varchar(10) DEFAULT NULL,
  `GGO #` varchar(10) DEFAULT NULL,
  `Import id` varchar(10) DEFAULT NULL,
  `Incorporation #` varchar(10) DEFAULT NULL,
  `Last On Hold Time` varchar(10) DEFAULT NULL,
  `Managing Partner` varchar(10) DEFAULT NULL,
  `No. of Employees` varchar(10) DEFAULT NULL,
  `Ontario BN` varchar(10) DEFAULT NULL,
  `Originating Lead` varchar(10) DEFAULT NULL,
  `Ownership` varchar(10) DEFAULT NULL,
  `Parent Account` varchar(10) DEFAULT NULL,
  `Payment Method` varchar(10) DEFAULT NULL,
  `Population` varchar(10) DEFAULT NULL,
  `Preferred Service` varchar(10) DEFAULT NULL,
  `Preferred Time` varchar(10) DEFAULT NULL,
  `Preferred User` varchar(10) DEFAULT NULL,
  `Premise ID` varchar(10) DEFAULT NULL,
  `Price List` varchar(10) DEFAULT NULL,
  `Primary Twitter ID` varchar(10) DEFAULT NULL,
  `Process` varchar(10) DEFAULT NULL,
  `Process Stage` varchar(10) DEFAULT NULL,
  `Provincial Riding` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Relationship Type` varchar(10) DEFAULT NULL,
  `Rural Route` varchar(10) DEFAULT NULL,
  `Shipping Method` varchar(10) DEFAULT NULL,
  `SIC Code` varchar(10) DEFAULT NULL,
  `Site Name` varchar(10) DEFAULT NULL,
  `SLA` varchar(10) DEFAULT NULL,
  `Supplier #` varchar(10) DEFAULT NULL,
  `Territory` varchar(10) DEFAULT NULL,
  `Territory Code` varchar(10) DEFAULT NULL,
  `Time Spent by me` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appeals`
--

CREATE TABLE `appeals` (
  `Request for reconsideration` varchar(10) DEFAULT NULL,
  `Record created on` varchar(10) DEFAULT NULL,
  `Project change` varchar(10) DEFAULT NULL,
  `import id` varchar(10) DEFAULT NULL,
  `insurance bond` varchar(10) DEFAULT NULL,
  `liability insurance` varchar(10) DEFAULT NULL,
  `EA approved on` varchar(10) DEFAULT NULL,
  `Benefits` varchar(10) DEFAULT NULL,
  `By-law` varchar(10) DEFAULT NULL,
  `case` varchar(10) DEFAULT NULL,
  `Certificate of Approval` varchar(10) DEFAULT NULL,
  `Agreement batch` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appeal_parcels`
--

CREATE TABLE `appeal_parcels` (
  `Approval/Decline Letter Sent to Landowner` varchar(10) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Account` varchar(10) DEFAULT NULL,
  `Account Address` varchar(10) DEFAULT NULL,
  `Account Address City` varchar(10) DEFAULT NULL,
  `Account Country` varchar(10) DEFAULT NULL,
  `Account Legal Name` varchar(10) DEFAULT NULL,
  `Account Postal Code` varchar(10) DEFAULT NULL,
  `Account Province` varchar(10) DEFAULT NULL,
  `Agreement Effective Date` varchar(10) DEFAULT NULL,
  `Agreement Expiry Date` varchar(10) DEFAULT NULL,
  `Category` varchar(10) DEFAULT NULL,
  `Change Request` varchar(10) DEFAULT NULL,
  `Change Request Form Id` varchar(10) DEFAULT NULL,
  `Change Type` varchar(10) DEFAULT NULL,
  `Current Account Address` varchar(10) DEFAULT NULL,
  `Current Account Address City` varchar(10) DEFAULT NULL,
  `Current Account Country` varchar(10) DEFAULT NULL,
  `Current Account Legal Name` varchar(10) DEFAULT NULL,
  `Current Account Postal Code` varchar(10) DEFAULT NULL,
  `Current Account Province` varchar(10) DEFAULT NULL,
  `Current Agreement Expiry Date` varchar(10) DEFAULT NULL,
  `Current Final Report Date` varchar(10) DEFAULT NULL,
  `Current Other Protocols` varchar(10) DEFAULT NULL,
  `Current Primary Contact Email` varchar(10) DEFAULT NULL,
  `Current Primary Contact First Name` varchar(10) DEFAULT NULL,
  `Current Primary Contact Last Name` varchar(10) DEFAULT NULL,
  `Current Primary Contact Position` varchar(10) DEFAULT NULL,
  `Current Primary Contact Telephone` varchar(10) DEFAULT NULL,
  `Current Project Description` varchar(10) DEFAULT NULL,
  `Current Project Name` varchar(10) DEFAULT NULL,
  `Current Sensitive Provincial Data` varchar(10) DEFAULT NULL,
  `Current Specific Project Conditions` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Final Report Date` varchar(10) DEFAULT NULL,
  `Impact To Agreement Budget` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Primary Contact Email` varchar(10) DEFAULT NULL,
  `Primary Contact First Name` varchar(10) DEFAULT NULL,
  `Primary Contact Last Name` varchar(10) DEFAULT NULL,
  `Primary Contact Telephone` varchar(10) DEFAULT NULL,
  `Project Description` varchar(10) DEFAULT NULL,
  `Project Name` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Specific Project Conditions` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cltip_application`
--

CREATE TABLE `cltip_application` (
  `(Do Not Modify) Program` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
  `Project Name` varchar(44) DEFAULT NULL,
  `Project Status` varchar(14) DEFAULT NULL,
  `Account` varchar(19) DEFAULT NULL,
  `Email` varchar(23) DEFAULT NULL,
  `Address` varchar(11) DEFAULT NULL,
  `Phone Number` varchar(12) DEFAULT NULL,
  `Language Preferred` varchar(7) DEFAULT NULL,
  `Eligible Area` varchar(4) DEFAULT NULL,
  `Eligible Feature Type` varchar(3) DEFAULT NULL,
  `Created By` varchar(17) DEFAULT NULL,
  `Created On` varchar(16) DEFAULT NULL,
  `Modified By` varchar(17) DEFAULT NULL,
  `Modified On` varchar(16) DEFAULT NULL,
  `PIN` varchar(7) DEFAULT NULL,
  `Agrred with acreages on Application` varchar(3) DEFAULT NULL,
  `Agreemend End Date` varchar(10) DEFAULT NULL,
  `Agreement Start Date` varchar(10) DEFAULT NULL,
  `Forecasted Project End Date` varchar(10) DEFAULT NULL,
  `Forecasted Project Start Date` varchar(10) DEFAULT NULL,
  `Program` varchar(47) DEFAULT NULL,
  `Project Type` varchar(17) DEFAULT NULL,
  `Province` varchar(7) DEFAULT NULL,
  `Site Visit` varchar(9) DEFAULT NULL,
  `Stage` varchar(9) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Status Reason` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cltip_applications`
--

CREATE TABLE `cltip_applications` (
  `Form ID` varchar(10) DEFAULT NULL,
  `Geocode` varchar(10) DEFAULT NULL,
  `History of Accomplishments to Date` varchar(10) DEFAULT NULL,
  `How does this proposal build on previous project` varchar(10) DEFAULT NULL,
  `Human Resource Requirements` varchar(10) DEFAULT NULL,
  `Import Id` varchar(10) DEFAULT NULL,
  `Import OwnerId` varchar(10) DEFAULT NULL,
  `Incomplete Date` varchar(10) DEFAULT NULL,
  `Land Tenure Other` varchar(10) DEFAULT NULL,
  `Land Tenure Provincial Park Name` varchar(10) DEFAULT NULL,
  `Landscape Level Conservative Plan Alignment` varchar(10) DEFAULT NULL,
  `Latitude` varchar(10) DEFAULT NULL,
  `Lead Applicant` varchar(10) DEFAULT NULL,
  `Lead Contact Date` varchar(10) DEFAULT NULL,
  `Lead Contact Name` varchar(10) DEFAULT NULL,
  `Lead Contact Title` varchar(10) DEFAULT NULL,
  `Location` varchar(10) DEFAULT NULL,
  `Longitude` varchar(10) DEFAULT NULL,
  `Matching Cash Amount` varchar(10) DEFAULT NULL,
  `Matching Funds %` varchar(10) DEFAULT NULL,
  `Matching In-kind Amount` varchar(10) DEFAULT NULL,
  `Measuring Success` varchar(10) DEFAULT NULL,
  `MNR Approved Amount` varchar(10) DEFAULT NULL,
  `MNR District` varchar(10) DEFAULT NULL,
  `MNR Region` varchar(10) DEFAULT NULL,
  `MNR Share %` varchar(10) DEFAULT NULL,
  `Multi Year Number` varchar(10) DEFAULT NULL,
  `Municipality` varchar(10) DEFAULT NULL,
  `Next Claim No` varchar(10) DEFAULT NULL,
  `Original Contributions Requested` varchar(10) DEFAULT NULL,
  `Other Funding %` varchar(10) DEFAULT NULL,
  `Other Funding Source (Base)` varchar(10) DEFAULT NULL,
  `Other In-kind Amount (Base)` varchar(10) DEFAULT NULL,
  `Other Protocols` varchar(10) DEFAULT NULL,
  `Postal Code` varchar(10) DEFAULT NULL,
  `Preferred Language` varchar(10) DEFAULT NULL,
  `PreivousCLTIPParcelMasterARN` varchar(10) DEFAULT NULL,
  `Prepared by Other` varchar(10) DEFAULT NULL,
  `Prepared By Other Phone` varchar(10) DEFAULT NULL,
  `Project Monitoring & Evaluation` varchar(10) DEFAULT NULL,
  `Project No` varchar(10) DEFAULT NULL,
  `Project Results` varchar(10) DEFAULT NULL,
  `Project Total` varchar(10) DEFAULT NULL,
  `Project Total (Base)` varchar(10) DEFAULT NULL,
  `Provincial Riding` varchar(10) DEFAULT NULL,
  `Provincial Share Amount (Base)` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Rejection Reason` varchar(10) DEFAULT NULL,
  `Remailed On` varchar(10) DEFAULT NULL,
  `Renewal Plan Received` varchar(10) DEFAULT NULL,
  `Rural Road` varchar(10) DEFAULT NULL,
  `Secondary Project Analyst` varchar(10) DEFAULT NULL,
  `Sensitive Provincial Data` varchar(10) DEFAULT NULL,
  `Service Provider Comments` varchar(10) DEFAULT NULL,
  `Signing Authority Date` varchar(10) DEFAULT NULL,
  `Street 1` varchar(10) DEFAULT NULL,
  `Street 2` varchar(10) DEFAULT NULL,
  `Summary` varchar(10) DEFAULT NULL,
  `Super Agreement` varchar(10) DEFAULT NULL,
  `Task Assigned To` varchar(10) DEFAULT NULL,
  `Task Description` varchar(10) DEFAULT NULL,
  `tasktitle` varchar(10) DEFAULT NULL,
  `Territory/Region` varchar(10) DEFAULT NULL,
  `Total Contributions Requested (Base)` varchar(10) DEFAULT NULL,
  `Total Eligible Cost` varchar(10) DEFAULT NULL,
  `Total Eligible Cost (Base)` varchar(10) DEFAULT NULL,
  `Volunteers` varchar(10) DEFAULT NULL,
  `Project Types?Import Id?` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compartements`
--

CREATE TABLE `compartements` (
  `cl type` varchar(10) DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL,
  `parent campaign` varchar(10) DEFAULT NULL,
  `activity type` varchar(10) DEFAULT NULL,
  `actual cost` varchar(10) DEFAULT NULL,
  `actual duration` varchar(10) DEFAULT NULL,
  `actual end` varchar(10) DEFAULT NULL,
  `actual start` varchar(10) DEFAULT NULL,
  `budget allocated` varchar(10) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `channel` varchar(10) DEFAULT NULL,
  `created by` varchar(10) DEFAULT NULL,
  `created on` varchar(10) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `exclude members who opt out` varchar(10) DEFAULT NULL,
  `modified by` varchar(10) DEFAULT NULL,
  `modified on` varchar(10) DEFAULT NULL,
  `no.of days` varchar(10) DEFAULT NULL,
  `outsource vendors` varchar(10) DEFAULT NULL,
  `owner` varchar(10) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `process` varchar(10) DEFAULT NULL,
  `process stage` varchar(10) DEFAULT NULL,
  `record created on` varchar(10) DEFAULT NULL,
  `scheduled duration` varchar(10) DEFAULT NULL,
  `scheduled end` varchar(10) DEFAULT NULL,
  `scheduled start` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `status reason` varchar(10) DEFAULT NULL,
  `sub-category` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `Subject` varchar(10) DEFAULT NULL,
  `Parent Campaign` varchar(10) DEFAULT NULL,
  `Response Code` varchar(10) DEFAULT NULL,
  `Activity Type` varchar(10) DEFAULT NULL,
  `Actual Duration` varchar(10) DEFAULT NULL,
  `Actual End` varchar(10) DEFAULT NULL,
  `Actual Start` varchar(10) DEFAULT NULL,
  `Category` varchar(10) DEFAULT NULL,
  `Channel` varchar(10) DEFAULT NULL,
  `Company Name` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `Customer` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Email` varchar(10) DEFAULT NULL,
  `Fax` varchar(10) DEFAULT NULL,
  `First Name` varchar(10) DEFAULT NULL,
  `Last Name` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `Originating Activity` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Priority` varchar(10) DEFAULT NULL,
  `Process` varchar(10) DEFAULT NULL,
  `Process Stage` varchar(10) DEFAULT NULL,
  `Received On` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Scheduled Duration` varchar(10) DEFAULT NULL,
  `Scheduled Start` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Sub-Category` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Access Granted Date CLTIP` varchar(10) DEFAULT NULL,
  `Case Title` varchar(10) DEFAULT NULL,
  `Case Number` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Origin` varchar(10) DEFAULT NULL,
  `Activities Complete` varchar(10) DEFAULT NULL,
  `Actual Service Units` varchar(10) DEFAULT NULL,
  `Billed Service Units` varchar(10) DEFAULT NULL,
  `Blocked Profile` varchar(10) DEFAULT NULL,
  `Case Stage` varchar(10) DEFAULT NULL,
  `Case Type` varchar(10) DEFAULT NULL,
  `Check Email` varchar(10) DEFAULT NULL,
  `Child Cases` varchar(10) DEFAULT NULL,
  `Contact` varchar(10) DEFAULT NULL,
  `Contract` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created By IP Address` varchar(10) DEFAULT NULL,
  `Created By Username` varchar(10) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `Customer` varchar(10) DEFAULT NULL,
  `Decrement Entitlement Terms` varchar(10) DEFAULT NULL,
  `Decrementing` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Entitlement` varchar(10) DEFAULT NULL,
  `Escalated On` varchar(10) DEFAULT NULL,
  `First Response By` varchar(10) DEFAULT NULL,
  `Last On Hold Time` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `On Hold Time (Minutes)` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Parent Case` varchar(10) DEFAULT NULL,
  `Partner` varchar(10) DEFAULT NULL,
  `Partner Contact` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Serial Number` varchar(10) DEFAULT NULL,
  `Social Profile` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `data validation of ARN (first 4 digits only)` varchar(10) DEFAULT NULL,
  `Territory/Region` varchar(10) DEFAULT NULL,
  `Subject` varchar(10) DEFAULT NULL,
  `Date Created` varchar(10) DEFAULT NULL,
  `Activity Additional Parameters` varchar(10) DEFAULT NULL,
  `Activity Status` varchar(10) DEFAULT NULL,
  `Activity Type` varchar(10) DEFAULT NULL,
  `Actual Duration` varchar(10) DEFAULT NULL,
  `Actual End` varchar(10) DEFAULT NULL,
  `Actual Start` varchar(10) DEFAULT NULL,
  `Change Request Form Id` varchar(10) DEFAULT NULL,
  `Change Request No` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Customers` varchar(10) DEFAULT NULL,
  `Date Delivery Last Attempted` varchar(10) DEFAULT NULL,
  `Date Sent` varchar(10) DEFAULT NULL,
  `Delivery Priority` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Due Date` varchar(10) DEFAULT NULL,
  `Last On Hold Time` varchar(10) DEFAULT NULL,
  `Last Updated` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `On Hold Time (Minutes)` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Priority` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Scheduled Duration` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_location`
--

CREATE TABLE `document_location` (
  `Name` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Change Request` varchar(10) DEFAULT NULL,
  `Change Request Form Id` varchar(10) DEFAULT NULL,
  `Change Type` varchar(10) DEFAULT NULL,
  `Claim` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Due Date` varchar(10) DEFAULT NULL,
  `Estimated Payment Total` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `Owner` varchar(10) DEFAULT NULL,
  `Project` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Status Reason` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_messages`
--

CREATE TABLE `email_messages` (
  `actual start` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email id` varchar(10) DEFAULT NULL,
  `phone no.` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `COL 1` varchar(4) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(17) DEFAULT NULL,
  `COL 4` varchar(9) DEFAULT NULL,
  `COL 5` varchar(17) DEFAULT NULL,
  `COL 6` varchar(4) DEFAULT NULL,
  `COL 7` varchar(10) DEFAULT NULL,
  `COL 8` varchar(21) DEFAULT NULL,
  `COL 9` varchar(10) DEFAULT NULL,
  `COL 10` varchar(8) DEFAULT NULL,
  `COL 11` varchar(14) DEFAULT NULL,
  `COL 12` varchar(11) DEFAULT NULL,
  `COL 13` varchar(15) DEFAULT NULL,
  `COL 14` varchar(13) DEFAULT NULL,
  `COL 15` varchar(8) DEFAULT NULL,
  `COL 16` varchar(9) DEFAULT NULL,
  `COL 17` varchar(11) DEFAULT NULL,
  `COL 18` varchar(22) DEFAULT NULL,
  `COL 19` varchar(11) DEFAULT NULL,
  `COL 20` varchar(5) DEFAULT NULL,
  `COL 21` varchar(6) DEFAULT NULL,
  `COL 22` varchar(13) DEFAULT NULL,
  `COL 23` varchar(4) DEFAULT NULL,
  `COL 24` varchar(11) DEFAULT NULL,
  `COL 25` varchar(18) DEFAULT NULL,
  `COL 26` varchar(20) DEFAULT NULL,
  `COL 27` varchar(17) DEFAULT NULL,
  `COL 28` varchar(14) DEFAULT NULL,
  `COL 29` varchar(10) DEFAULT NULL,
  `COL 30` varchar(12) DEFAULT NULL,
  `COL 31` varchar(8) DEFAULT NULL,
  `COL 32` varchar(7) DEFAULT NULL,
  `COL 33` varchar(11) DEFAULT NULL,
  `COL 34` varchar(15) DEFAULT NULL,
  `COL 35` varchar(7) DEFAULT NULL,
  `COL 36` varchar(22) DEFAULT NULL,
  `COL 37` varchar(10) DEFAULT NULL,
  `COL 38` varchar(16) DEFAULT NULL,
  `COL 39` varchar(5) DEFAULT NULL,
  `COL 40` varchar(14) DEFAULT NULL,
  `COL 41` varchar(9) DEFAULT NULL,
  `COL 42` varchar(13) DEFAULT NULL,
  `COL 43` varchar(17) DEFAULT NULL,
  `COL 44` varchar(9) DEFAULT NULL,
  `COL 45` varchar(17) DEFAULT NULL,
  `COL 46` varchar(21) DEFAULT NULL,
  `COL 47` varchar(25) DEFAULT NULL,
  `COL 48` varchar(9) DEFAULT NULL,
  `COL 49` varchar(13) DEFAULT NULL,
  `COL 50` varchar(10) DEFAULT NULL,
  `COL 51` varchar(14) DEFAULT NULL,
  `COL 52` varchar(18) DEFAULT NULL,
  `COL 53` varchar(10) DEFAULT NULL,
  `COL 54` varchar(18) DEFAULT NULL,
  `COL 55` varchar(22) DEFAULT NULL,
  `COL 56` varchar(26) DEFAULT NULL,
  `COL 57` varchar(9) DEFAULT NULL,
  `COL 58` varchar(8) DEFAULT NULL,
  `COL 59` varchar(13) DEFAULT NULL,
  `COL 60` varchar(11) DEFAULT NULL,
  `COL 61` varchar(15) DEFAULT NULL,
  `COL 62` varchar(18) DEFAULT NULL,
  `COL 63` varchar(10) DEFAULT NULL,
  `COL 64` varchar(10) DEFAULT NULL,
  `COL 65` varchar(10) DEFAULT NULL,
  `COL 66` varchar(9) DEFAULT NULL,
  `COL 67` varchar(10) DEFAULT NULL,
  `COL 68` varchar(20) DEFAULT NULL,
  `COL 69` varchar(16) DEFAULT NULL,
  `COL 70` varchar(9) DEFAULT NULL,
  `COL 71` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`, `COL 35`, `COL 36`, `COL 37`, `COL 38`, `COL 39`, `COL 40`, `COL 41`, `COL 42`, `COL 43`, `COL 44`, `COL 45`, `COL 46`, `COL 47`, `COL 48`, `COL 49`, `COL 50`, `COL 51`, `COL 52`, `COL 53`, `COL 54`, `COL 55`, `COL 56`, `COL 57`, `COL 58`, `COL 59`, `COL 60`, `COL 61`, `COL 62`, `COL 63`, `COL 64`, `COL 65`, `COL 66`, `COL 67`, `COL 68`, `COL 69`, `COL 70`, `COL 71`) VALUES
('Name', 'Viewable By', 'Associated Entity', 'File Name', 'File Size (Bytes)', 'Body', 'Created By', 'Created By (Delegate)', 'Created On', 'Currency', 'Default filter', 'Description', 'Document Format', 'Exchange Rate', 'Language', 'Mime Type', 'Modified By', 'Modified By (Delegate)', 'Modified On', 'Owner', 'Status', 'Status Reason', 'Body', 'Description', 'GenerationTypeCode', 'ImportSequenceNumber', 'IntroducedVersion', 'IsCustomizable', 'IsPersonal', 'LanguageCode', 'MimeType', 'OwnerId', 'OwnerIdType', 'PresentationXml', 'Subject', 'SubjectPresentationXml', 'TemplateId', 'TemplateTypeCode', 'Title', 'ComponentState', 'CreatedBy', 'CreatedByName', 'CreatedByYomiName', 'CreatedOn', 'CreatedOnBehalfBy', 'CreatedOnBehalfByName', 'CreatedOnBehalfByYomiName', 'IsManaged', 'IsRecommended', 'ModifiedBy', 'ModifiedByName', 'ModifiedByYomiName', 'ModifiedOn', 'ModifiedOnBehalfBy', 'ModifiedOnBehalfByName', 'ModifiedOnBehalfByYomiName', 'OpenCount', 'OpenRate', 'OverwriteTime', 'OwnerIdName', 'OwnerIdYomiName', 'OwningBusinessUnit', 'OwningTeam', 'OwningUser', 'ReplyCount', 'ReplyRate', 'SolutionId', 'SupportingSolutionId', 'TemplateIdUnique', 'UsedCount', 'VersionNumber');

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `(Do Not Modify) Project` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
  `Name` varchar(29) DEFAULT NULL,
  `County` varchar(28) DEFAULT NULL,
  `Created By` varchar(13) DEFAULT NULL,
  `Created On` varchar(16) DEFAULT NULL,
  `Full Name` varchar(24) DEFAULT NULL,
  `Modified By` varchar(13) DEFAULT NULL,
  `Modified On` varchar(16) DEFAULT NULL,
  `Municipality Code` int(3) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Status Reason` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `municipality`
--

INSERT INTO `municipality` (`(Do Not Modify) Project`, `(Do Not Modify) Row Checksum`, `(Do Not Modify) Modified On`, `Name`, `County`, `Created By`, `Created On`, `Full Name`, `Modified By`, `Modified On`, `Municipality Code`, `Status`, `Status Reason`) VALUES
('', '', '', '0101-SOUTH GLENGARRY TOWNSHIP', '01-STORMONT DUNDAS GLENGARRY', 'Anna Krupnova', '2013-07-22 15:23', 'SOUTH GLENGARRY TOWNSHIP', 'Anna Krupnova', '2013-07-22 15:23', 101, 'Active', 'Active'),
('', '', '', '0111-NORTH GLENGARRY TOWNSHIP', '01-STORMONT DUNDAS GLENGARRY', 'Anna Krupnova', '2013-07-22 15:23', 'NORTH GLENGARRY TOWNSHIP', 'Anna Krupnova', '2013-07-22 15:23', 111, 'Active', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ownership_change`
--

CREATE TABLE `ownership_change` (
  `(Do Not Modify) Project` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
  `Project Name` varchar(10) DEFAULT NULL,
  `Project Type` varchar(10) DEFAULT NULL,
  `Account` varchar(10) DEFAULT NULL,
  `Email` varchar(10) DEFAULT NULL,
  `Phone Number` varchar(10) DEFAULT NULL,
  `New Account` varchar(10) DEFAULT NULL,
  `New Email` varchar(10) DEFAULT NULL,
  `New Phone Number` varchar(10) DEFAULT NULL,
  `Project Start Date` varchar(10) DEFAULT NULL,
  `Project End Date` varchar(10) DEFAULT NULL,
  `Ownership Change Date` varchar(10) DEFAULT NULL,
  `Created By` varchar(10) DEFAULT NULL,
  `Created On` varchar(10) DEFAULT NULL,
  `Modified By` varchar(10) DEFAULT NULL,
  `Modified On` varchar(10) DEFAULT NULL,
  `ARN` varchar(10) DEFAULT NULL,
  `PIN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Parcel`
--

CREATE TABLE `Parcel` (
  `Roll number(dnt)` int(11) NOT NULL,
  `Current owner/Contact` int(11) NOT NULL,
  `Current eligible area(MFTIP and CLTIP)` int(11) NOT NULL,
  `PYP` int(11) NOT NULL,
  `link to annual participation information` int(11) NOT NULL,
  `current MFTIP plan` int(11) NOT NULL,
  `current CLTIP app` int(11) NOT NULL,
  `past MFTIP plans` int(11) NOT NULL,
  `past CLTIP apps` int(11) NOT NULL,
  `Term end date` int(11) NOT NULL,
  `Data validation should ensure that CL area (if participating) +` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_annual_record_2`
--

CREATE TABLE `parcel_annual_record_2` (
  `(Do Not Modify) Parcel Year Participation` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
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
  `ARN` varchar(10) DEFAULT NULL,
  `arn1` varchar(10) DEFAULT NULL,
  `arn2` varchar(10) DEFAULT NULL,
  `arn3` varchar(10) DEFAULT NULL,
  `arn4` varchar(10) DEFAULT NULL,
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
  `Update Landowners` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_annual_record_update`
--

CREATE TABLE `parcel_annual_record_update` (
  `(Do Not Modify) Parcel Year Participation` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
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
  `ARN` varchar(10) DEFAULT NULL,
  `arn1` varchar(10) DEFAULT NULL,
  `arn2` varchar(10) DEFAULT NULL,
  `arn3` varchar(10) DEFAULT NULL,
  `arn4` varchar(10) DEFAULT NULL,
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
  `Update Landowners` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `Aboriginal Groups Involved` varchar(10) DEFAULT NULL,
  `Animal Care Protocol` varchar(10) DEFAULT NULL,
  `Approach or Methodology` varchar(10) DEFAULT NULL,
  `Approval Comments` varchar(10) DEFAULT NULL,
  `Associated Parcels` varchar(10) DEFAULT NULL,
  `Benefits` varchar(10) DEFAULT NULL,
  `Case` varchar(10) DEFAULT NULL,
  `Census Subdivision` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Claims Override Reason` varchar(10) DEFAULT NULL,
  `Client Share (Base)` varchar(10) DEFAULT NULL,
  `Client Share %` varchar(10) DEFAULT NULL,
  `Client Share Amount` varchar(10) DEFAULT NULL,
  `Client Type for HST` varchar(10) DEFAULT NULL,
  `Closure Comments` varchar(10) DEFAULT NULL,
  `Closure Reason` varchar(10) DEFAULT NULL,
  `Community Support` varchar(10) DEFAULT NULL,
  `Construction End Date` varchar(10) DEFAULT NULL,
  `Construction Start Date` varchar(10) DEFAULT NULL,
  `Costs Incurred From` varchar(10) DEFAULT NULL,
  `Costs Incurred To` varchar(10) DEFAULT NULL,
  `County` varchar(10) DEFAULT NULL,
  `Created By (Delegate)` varchar(10) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `currenncyTemp` varchar(10) DEFAULT NULL,
  `currenncyTemp (Base)` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Duty To Consult` varchar(10) DEFAULT NULL,
  `EA Approved On` varchar(10) DEFAULT NULL,
  `Exchange Rate` varchar(10) DEFAULT NULL,
  `Executed Date` varchar(10) DEFAULT NULL,
  `Federal Riding` varchar(10) DEFAULT NULL,
  `Federal Share %` varchar(10) DEFAULT NULL,
  `Federal Share Amount` varchar(10) DEFAULT NULL,
  `Federal Share Amount (Base)` varchar(10) DEFAULT NULL,
  `Final Report Date` varchar(10) DEFAULT NULL,
  `Final Report Date Multiyear` varchar(10) DEFAULT NULL,
  `First Contract Award` varchar(10) DEFAULT NULL,
  `First Tender Call` varchar(10) DEFAULT NULL,
  `Forecasted Construction End Date` varchar(10) DEFAULT NULL,
  `Forecasted Construction Start Date` varchar(10) DEFAULT NULL,
  `Project Types?Import Id?` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process_sessions`
--

CREATE TABLE `process_sessions` (
  `Dialog Stage` varchar(10) DEFAULT NULL,
  `Error Code` varchar(10) DEFAULT NULL,
  `Next Linked Session` varchar(10) DEFAULT NULL,
  `Originating Session` varchar(10) DEFAULT NULL,
  `Previous Linked Session` varchar(10) DEFAULT NULL,
  `Step Name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `Aprroved By` varchar(10) DEFAULT NULL,
  `Created By (Delegate)` varchar(10) DEFAULT NULL,
  `DTC Lead` varchar(10) DEFAULT NULL,
  `Duty Consult Aprroved By` varchar(10) DEFAULT NULL,
  `Duty Consult Aprroved On` varchar(10) DEFAULT NULL,
  `Goals` varchar(10) DEFAULT NULL,
  `HoldBack %` varchar(10) DEFAULT NULL,
  `Import Id` varchar(10) DEFAULT NULL,
  `Modified By (Delegate)` varchar(10) DEFAULT NULL,
  `Pre-Proposal Form Id` varchar(10) DEFAULT NULL,
  `Program Code` varchar(10) DEFAULT NULL,
  `Project Status` varchar(10) DEFAULT NULL,
  `Record Created On` varchar(10) DEFAULT NULL,
  `Secondary Analyst` varchar(10) DEFAULT NULL,
  `Secondary Lead` varchar(10) DEFAULT NULL,
  `Secondary Manager` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Security Roles`
--

CREATE TABLE `Security Roles` (
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Send to MPAC`
--

CREATE TABLE `Send to MPAC` (
  `(Do Not Modify) Project` int(11) NOT NULL,
  `(Do Not Modify) Row Checksum` int(11) NOT NULL,
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
  `Reason Sent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technical_reviews`
--

CREATE TABLE `technical_reviews` (
  `(Do Not Modify) Assessment Package` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Row Checksum` varchar(10) DEFAULT NULL,
  `(Do Not Modify) Modified On` varchar(10) DEFAULT NULL,
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
  `Total Percentage` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Position` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Web Roles`
--

CREATE TABLE `Web Roles` (
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
