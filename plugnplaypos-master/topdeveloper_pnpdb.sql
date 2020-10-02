-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2020 at 11:54 PM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topdeveloper_pnpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_menus`
--

CREATE TABLE `tbl_admin_user_menus` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_user_menus`
--

INSERT INTO `tbl_admin_user_menus` (`id`, `menu_name`, `controller_name`, `del_status`) VALUES
(1, 'Sale', 'Sale', 'Live'),
(2, 'Purchase', 'Purchase', 'Live'),
(3, 'Inventory', 'Inventory', 'Live'),
(4, 'Waste', 'Waste', 'Live'),
(6, 'Expense', 'Expense', 'Live'),
(7, 'Report', 'Report', 'Live'),
(8, 'Dashboard', 'Dashboard', 'Live'),
(9, 'Master', 'Master', 'Live'),
(10, 'User', 'User', 'Live'),
(11, 'Supplier Payment', 'SupplierPayment', 'Live'),
(13, 'Inventory Adjustment', 'Inventory_adjustment', 'Live'),
(14, 'Short Message Service', 'Short_message_service', 'Live'),
(15, 'Customer Due Receive', 'Customer_due_receive', 'Live'),
(16, 'Attendance', 'Attendance', 'Live'),
(17, 'Bar', 'Bar', 'Live'),
(18, 'Kitchen', 'Kitchen', 'Live'),
(19, 'Waiter', 'Waiter', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `reference_no`, `employee_id`, `date`, `in_time`, `out_time`, `note`, `user_id`, `company_id`, `del_status`) VALUES
(1, '000001', NULL, '2018-12-12', '20:16:56', '23:30:00', '', 1, 1, 'Deleted'),
(2, '000002', 8, '2019-08-14', '05:40:46', '01:30:00', '', 1, 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `currency`, `timezone`, `date_format`, `outlet_id`) VALUES
(1, '৳', 'Asia/Dhaka', 'd/m/Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES
(1, 'Walk-in Customer', '', NULL, NULL, NULL, 0, 1, 1, 'Live', NULL, NULL),
(2, 'Alan K. Beach', '000333999444', NULL, NULL, NULL, 5, 1, 1, 'Live', NULL, NULL),
(3, 'Mark Winnan', '000333999444', NULL, NULL, NULL, 33, 1, 1, 'Live', NULL, NULL),
(4, 'John Doe ', '01812391633', '', '', NULL, NULL, 1, 1, 'Live', '1984-06-12', '2018-10-10'),
(5, 'Glenn J. Fisher', 'Rashed', '', '', NULL, NULL, 1, 1, 'Live', '2018-11-13', '1990-11-13'),
(14, 'Everett S. Jones', '0000000000000', '', '', NULL, NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(17, 'Allen J. Horton', '013948393489', '', 'Test Delivery address for habibur rahman', NULL, NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(18, 'Andrew S. Johnson', '+96067789391633', '', '422/A, Park Avenue, Kanakati, UK', NULL, NULL, 1, 1, 'Live', '1987-03-23', '2017-05-19'),
(19, 'Gary P. Wilkerson', '9632443362', '', '', NULL, NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(20, 'Benjamin E. Rosado', '5473943', '', 'B105 ssvr', '09', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(21, 'Samuel R. Cameron', '029388993894', '', '', '03', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(22, 'Chris L. Ramsey', '3333', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(23, 'hhhh', '255666', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(26, 'test', '5555', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(27, 'test 1', '666', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(28, 'test 2', '333', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_due_receives`
--

CREATE TABLE `tbl_customer_due_receives` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_items`
--

CREATE TABLE `tbl_expense_items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_expense_items`
--

INSERT INTO `tbl_expense_items` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Salary', 'Monthly Salary', 1, 1, 'Deleted'),
(2, 'Rent', 'Rent', 1, 1, 'Live'),
(3, 'Electric Bill', 'Electric Bill', 1, 1, 'Live'),
(4, 'Water Bill', 'Water Bill', 1, 1, 'Live'),
(5, 'Gas Bill ', 'Gas Bill', 1, 1, 'Live'),
(6, 'Entertainment', 'Entertainment', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus`
--

CREATE TABLE `tbl_food_menus` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `tax_information` text DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `veg_item` varchar(50) DEFAULT 'Veg No',
  `beverage_item` varchar(50) DEFAULT 'Beverage No',
  `bar_item` varchar(50) DEFAULT 'Bar No',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus`
--

INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES
(18, '02', 'Fish Tacos', 15, 'With luscious poached eggs perched on a bed of creamy avocado, savory ham, and crust', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'fc2b5da5c6c834dd1a693105db1c1d4c.jpg', 'Veg No', 'Bev Yes', 'Bar No', 'Live'),
(19, '03', 'Black Pepper Beef', 1, 'An easy Chicken Chow Mein recipe loaded with five spice marinated chicken and vegetables.', 350.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'df80d58a211b0ec4e33470e76059a072.jpg', 'Veg Yes', 'Beverage No', 'Bar No', 'Live'),
(20, '04', 'Orange Chicken', 10, 'The cheeks need to come from a good sized fish, otherwise thereâ€™s just not a lot of meat there', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '6dd4d447e677d6d7f1683e390fa5cf22.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(21, '05', 'Kimchi Pasta', 1, 'vegetables are included, imbuing them with flavor while leaving you with only one pan to wash at the end.', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'd378bf1c443bf2872c5b18de33affd03.png', 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(22, '06', 'Massaman Beef Curry', 1, 'Orange Chicken is a classic Chinese-American take-out dish with pieces of fried chicken coated with a sweet and sour orange sauce', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '2646509f5b6e29b8ed57ce8fb8c063c5.jpeg', 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(23, '07', 'Hot And Sour Soup', 12, 'Vibrant, spicy and ultra-flavorful, Kimchi Pasta makes for a quick weeknight entree', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '4cd4c41406dba0912df052ce7d1ede0e.jpg', 'Veg No', 'Bev Yes', 'Bar No', 'Live'),
(24, '08', 'Grape Escape', 13, 'Loaded with tender beef, potatoes and peanuts, in a savory, spicey, sweet and tangy curry', 400.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'dccc40b268e185e0577bcf017cb5bf69.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(25, '09', 'Better Chocolate Chip Cookies', 1, 'Learn the secrets to making an easy Hot and Sour Soup with a rich flavorful broth, feathery eggs and a pleasant balance of heat and tartness.', 330.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'c552ce0b62a2443fd11a975506727f0d.jpg', 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(26, '010', 'Pepsi 250ml', 8, 'This delightful late-summer cocktail pairs sweet and smoky shochu with juicy Concord grapes and fragrant pink peppercorns', 150.00, '[]', NULL, 1, 1, 'dc2eea299d12725d334326c4950d5916.jpg', 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(27, '011', 'Parsley Pasta', 14, 'These chocolate chip cookies are crunchy around the edges and soft and chewy in the center', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '261e0c3ad308eb524a66dc66ae1d84aa.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(28, '012', 'Shochu Mojito', 15, 'How to make the BEST hamburgers. Ingredients and technique for making your perfect burger.', 250.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '90707408ce6bc4afa8a70c91f55c03cf.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(29, '013', 'Mongolian Beef', 12, 'A simple herbal pasta topped with a fried egg, perfect for a quick weeknight meal.', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'c5031bb8fdcfd6e4ea5195239f76004a.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(30, '014', 'Whisky', 8, 'Mojitos are a refreshing Cuban cocktail made with mint, sugar, lime juice, and rum', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\"}]', NULL, 1, 1, 'cd263fe536703168cca3ee28013eb385.jpg', 'Veg Yes', 'Bev Yes', 'Bar Yes', 'Live'),
(31, '015', 'Coca cola 400ml', 1, 'While not a Mongolian dish, Mongolian beef is a delicious Chinese-American classic with beef, garlic and scallions stir-fried with Hoisin sauce.', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '3c1f1550866e03f5ade2d732de0566fb.jpeg', 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(32, '016', 'Beet And Onion Pickle Recipe', 14, 'This hot fudge has a butter caramel base, giving it a magical texture that\'s molten', 250.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '760d338b4a5c5c5ff6a18fea3ee058cd.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(33, '017', 'Chicken Piccata', 16, 'Preparing for a long trip can be a lot of work, but I try and make the most of it', 500.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '14f956595b796bd461cdec5cf9fc91a0.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(34, '018', 'Shaved Fennel Salad With Steak', 16, 'Bright magenta beet and onion pickles are quick to make and are a delicious condiment with Indian food.', 150.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'c8e2e893cb7b66db03eb0850355b5439.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(35, '019', 'Tuna Sashimi Pizza', 12, 'Tender chicken cutlets fried until golden brown and draped in a fresh, tangy lemon and caper sauce', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '5bdb1980541eea0c61043072ef4227df.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(36, '020', 'Sweet Potato Bacon Salad', 15, 'This shaved fennel salad features warm slices of seared fillet steak atop a bed of crisp', 450.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '6fdac92df7221c396a53ce783cc51269.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(37, '021', 'Fish And Chips', 10, 'Pizza reinterpreted through Japanese ingredients. A rice cracker makes the crus', 250.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '5662554ae954069dd70c0cdcdcfc9ef1.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(38, '022', 'Wonton Soup', 15, 'This delicious and satisfying salad is loaded with sweet potatoes and bacon tossed in a creamy peanut mustard dressing', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '3f1b1cd0bd50013e2734359bdebb68dc.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(39, '023', 'Garlic Chive Shrimp Fried Rice With Garlic Chips', 2, 'The Fish and Chips have moist, tender fish fillets wrapped in a light crispy beer batter,', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '7bc7cdd93212ccbc2e68222226cfc6ca.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(40, '024', 'Crispy Taco Rice', 1, 'these Hong Kong style wonton noodles are packed with firm shrimp in a savory seafood broth', 400.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '02f34847d0dec974a58a1da02ce7600c.jpg', 'Veg Yes', 'Beverage No', 'Bar No', 'Live'),
(41, '025', 'Shrimp Toast', 1, 'One of the best things about fried rice is that it can be made with just about anything', 400.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '0be8cf7ca471fef8d651a5b22ecbbc1c.jpg', 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(42, '026', 'Best Eggs Benedict', 17, 'Taco Rice is an Okinawan dish mashing up Japanese and Texmex cuisine. With taco meat and an assortment of toppings on a bed of crispy rice, it\'s a quick and satisfying meal', 400.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '3d94c53e68c6026dfcfe4b0c6c1bc982.jpg', 'Veg No', 'Bev No', 'Bar No', 'Live'),
(43, '027', 'Chicken Chow Mein', 1, 'Originally a Chinese appetizer called Hatosi, Shrimp Toast is a simple finger food that makes for a great canape at parties.', 300.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'eeb3e821bcefe80803845ba5d6fdcb56.png', 'Veg No', 'Soft Drinks No', 'Bar No', 'Live'),
(44, '12', 'DeshiMas', 21, '', 100.46, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, 'bf317ad9b86f8ceb40d2c2f9c083d00f.jpg', 'Veg Yes', 'Bev No', 'Bar No', 'Live'),
(45, '020', 'Sahrma', 20, '', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '08e85c43ff6be98ff1b23dc350a05509.jpg', 'Veg Yes', 'Bev No', 'Bar No', 'Live'),
(46, '02', 'JhalFry', 11, '', 200.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\"}]', NULL, 1, 1, '75fed59dd2a453b5e4ccde750f142906.jpg', 'Veg Yes', 'Bev No', 'Bar Yes', 'Live'),
(48, '030', 'MD NAZMUL HOSAN', 20, '', 20.00, '[{\"tax_field_id\":\"18\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"17\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"16\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"15\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\"}]', NULL, 1, 1, '1d9b12897a16758c406367d660be9770.jpeg', 'Veg No', 'Bev No', 'Bar No', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_ingredients`
--

CREATE TABLE `tbl_food_menus_ingredients` (
  `id` bigint(20) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus_ingredients`
--

INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES
(8, 13, 200.00, 10, 2, NULL, 'Live'),
(9, 14, 0.40, 10, 2, NULL, 'Live'),
(10, 14, 100.00, 11, 2, NULL, 'Live'),
(11, 13, 0.40, 11, 2, NULL, 'Live'),
(12, 13, 50.00, 12, 2, NULL, 'Live'),
(13, 14, 0.20, 12, 2, NULL, 'Live'),
(22, 14, 50.00, 15, 2, NULL, 'Live'),
(23, 13, 2.00, 15, 2, NULL, 'Live'),
(28, 14, 50.00, 13, 2, NULL, 'Live'),
(29, 13, 2.00, 13, 2, NULL, 'Live'),
(33, 14, 50.00, 14, 2, NULL, 'Live'),
(34, 15, 1.00, 16, 2, NULL, 'Live'),
(35, 16, 0.50, 17, 2, NULL, 'Live'),
(36, 18, 250.00, 17, 2, NULL, 'Live'),
(37, 14, 200.00, 17, 2, NULL, 'Live'),
(38, 15, 200.00, 17, 2, NULL, 'Live'),
(39, 13, 0.25, 17, 2, NULL, 'Live'),
(292, 97, 87.00, 47, 2, NULL, 'Live'),
(293, 66, 87.00, 47, 2, NULL, 'Live'),
(334, 66, 1.45, 49, 2, NULL, 'Live'),
(335, 123, 0.01, 49, 2, NULL, 'Live'),
(336, 98, 1.11, 49, 2, NULL, 'Live'),
(337, 66, 1.15, 50, 2, NULL, 'Live'),
(338, 153, 0.10, 51, 6, NULL, 'Live'),
(339, 155, 20.00, 51, 6, NULL, 'Live'),
(340, 154, 0.02, 51, 6, NULL, 'Live'),
(341, 153, 0.20, 52, 6, NULL, 'Live'),
(342, 155, 30.00, 52, 6, NULL, 'Live'),
(343, 154, 0.05, 53, 6, NULL, 'Live'),
(353, 153, 1.30, 54, 6, NULL, 'Live'),
(356, 153, 200.00, 55, 6, NULL, 'Live'),
(357, 153, 10.00, 56, 6, NULL, 'Live'),
(358, 154, 0.00, 56, 6, NULL, 'Live'),
(359, 155, 3.00, 57, 6, NULL, 'Live'),
(360, 50, 4.00, 58, 2, NULL, 'Live'),
(363, 159, 1.00, 61, 18, NULL, 'Live'),
(364, 166, 1.00, 61, 18, NULL, 'Live'),
(365, 157, 30.00, 60, 18, NULL, 'Live'),
(366, 186, 0.10, 60, 18, NULL, 'Live'),
(367, 163, 0.20, 60, 18, NULL, 'Live'),
(368, 158, 1.00, 59, 18, NULL, 'Live'),
(369, 163, 0.20, 59, 18, NULL, 'Live'),
(370, 186, 0.10, 59, 18, NULL, 'Live'),
(371, 171, 0.07, 59, 18, NULL, 'Live'),
(375, 181, 0.20, 62, 18, NULL, 'Live'),
(376, 170, 1.00, 62, 18, NULL, 'Live'),
(377, 158, 0.50, 62, 18, NULL, 'Live'),
(378, 160, 2.00, 62, 18, NULL, 'Live'),
(379, 158, 1.00, 63, 18, NULL, 'Live'),
(380, 163, 0.20, 63, 18, NULL, 'Live'),
(381, 186, 0.05, 63, 18, NULL, 'Live'),
(382, 171, 0.07, 63, 18, NULL, 'Live'),
(383, 168, 0.25, 64, 18, NULL, 'Live'),
(384, 158, 0.50, 64, 18, NULL, 'Live'),
(385, 186, 0.10, 64, 18, NULL, 'Live'),
(386, 165, 2.00, 65, 18, NULL, 'Live'),
(387, 179, 0.02, 66, 18, NULL, 'Live'),
(388, 178, 8.00, 66, 18, NULL, 'Live'),
(389, 177, 0.10, 66, 18, NULL, 'Live'),
(390, 176, 0.30, 66, 18, NULL, 'Live'),
(391, 179, 0.02, 67, 18, NULL, 'Live'),
(392, 176, 0.03, 67, 18, NULL, 'Live'),
(393, 183, 0.40, 67, 18, NULL, 'Live'),
(394, 177, 0.10, 67, 18, NULL, 'Live'),
(395, 161, 0.10, 68, 18, NULL, 'Live'),
(396, 178, 5.00, 68, 18, NULL, 'Live'),
(397, 179, 0.02, 68, 18, NULL, 'Live'),
(398, 164, 0.12, 69, 18, NULL, 'Live'),
(399, 186, 0.10, 70, 18, NULL, 'Live'),
(400, 168, 0.25, 71, 18, NULL, 'Live'),
(401, 183, 0.50, 71, 18, NULL, 'Live'),
(402, 161, 0.08, 72, 18, NULL, 'Live'),
(403, 175, 0.08, 72, 18, NULL, 'Live'),
(404, 173, 2.00, 73, 18, NULL, 'Live'),
(405, 174, 0.10, 73, 18, NULL, 'Live'),
(406, 175, 0.10, 73, 18, NULL, 'Live'),
(448, 118, 2.00, 74, 2, NULL, 'Live'),
(449, 111, 23.00, 75, 2, 1, 'Live'),
(450, 181, 4.00, 75, 2, 1, 'Live'),
(451, 50, 2.00, 75, 2, 1, 'Live'),
(452, 50, 3.00, 76, 1, 1, 'Live'),
(454, 118, 4.00, 77, 1, 1, 'Live'),
(726, 137, 12.00, 43, 1, 1, 'Live'),
(727, 123, 400.00, 43, 1, 1, 'Live'),
(728, 16, 0.20, 43, 1, 1, 'Live'),
(729, 15, 23.00, 43, 1, 1, 'Live'),
(730, 48, 50.00, 43, 1, 1, 'Live'),
(731, 64, 2.00, 43, 1, 1, 'Live'),
(732, 42, 11.00, 43, 1, 1, 'Live'),
(733, 30, 6.00, 43, 1, 1, 'Live'),
(734, 61, 11.00, 43, 1, 1, 'Live'),
(735, 13, 50.00, 43, 1, 1, 'Live'),
(736, 83, 11.00, 43, 1, 1, 'Live'),
(737, 138, 10.00, 43, 1, 1, 'Live'),
(781, 23, 3.00, 19, 1, 1, 'Live'),
(782, 27, 40.00, 19, 1, 1, 'Live'),
(783, 21, 185.00, 19, 1, 1, 'Live'),
(784, 26, 325.00, 19, 1, 1, 'Live'),
(785, 20, 1.00, 19, 1, 1, 'Live'),
(786, 22, 22.00, 19, 1, 1, 'Live'),
(787, 24, 100.00, 19, 1, 1, 'Live'),
(788, 13, 0.05, 19, 1, 1, 'Live'),
(789, 25, 40.00, 19, 1, 1, 'Live'),
(790, 15, 20.00, 19, 1, 1, 'Live'),
(791, 14, 20.00, 19, 1, 1, 'Live'),
(792, 20, 100.00, 41, 1, 1, 'Live'),
(793, 123, 500.00, 41, 1, 1, 'Live'),
(794, 128, 250.00, 41, 1, 1, 'Live'),
(795, 129, 50.00, 41, 1, 1, 'Live'),
(796, 130, 12.00, 41, 1, 1, 'Live'),
(797, 61, 15.00, 41, 1, 1, 'Live'),
(798, 132, 10.00, 41, 1, 1, 'Live'),
(799, 131, 4.00, 41, 1, 1, 'Live'),
(800, 122, 5.00, 40, 1, 1, 'Live'),
(801, 123, 300.00, 40, 1, 1, 'Live'),
(802, 124, 250.00, 40, 1, 1, 'Live'),
(803, 125, 15.00, 40, 1, 1, 'Live'),
(804, 24, 300.00, 40, 1, 1, 'Live'),
(805, 48, 3.00, 40, 1, 1, 'Live'),
(806, 31, 12.00, 40, 1, 1, 'Live'),
(807, 30, 6.00, 40, 1, 1, 'Live'),
(808, 25, 7.00, 40, 1, 1, 'Live'),
(809, 15, 10.00, 40, 1, 1, 'Live'),
(810, 22, 6.00, 40, 1, 1, 'Live'),
(811, 42, 4.00, 40, 1, 1, 'Live'),
(812, 61, 7.00, 40, 1, 1, 'Live'),
(813, 126, 280.00, 40, 1, 1, 'Live'),
(814, 127, 100.00, 40, 1, 1, 'Live'),
(823, 61, 22.00, 25, 1, 1, 'Live'),
(824, 13, 50.00, 25, 1, 1, 'Live'),
(825, 54, 21.00, 25, 1, 1, 'Live'),
(826, 62, 100.00, 25, 1, 1, 'Live'),
(827, 25, 12.00, 25, 1, 1, 'Live'),
(828, 48, 23.00, 25, 1, 1, 'Live'),
(829, 44, 24.00, 25, 1, 1, 'Live'),
(830, 30, 11.00, 25, 1, 1, 'Live'),
(831, 15, 34.00, 25, 1, 1, 'Live'),
(832, 21, 200.00, 25, 1, 1, 'Live'),
(833, 64, 2.00, 25, 1, 1, 'Live'),
(834, 38, 20.00, 22, 1, 1, 'Live'),
(835, 42, 6.00, 22, 1, 1, 'Live'),
(836, 21, 450.00, 22, 1, 1, 'Live'),
(837, 14, 100.00, 22, 1, 1, 'Live'),
(838, 44, 6.00, 22, 1, 1, 'Live'),
(839, 13, 100.00, 22, 1, 1, 'Live'),
(840, 43, 12.00, 22, 1, 1, 'Live'),
(841, 15, 50.00, 22, 1, 1, 'Live'),
(842, 41, 6.00, 22, 1, 1, 'Live'),
(843, 40, 35.00, 22, 1, 1, 'Live'),
(844, 39, 76.00, 22, 1, 1, 'Live'),
(845, 25, 12.00, 22, 1, 1, 'Live'),
(846, 16, 300.00, 21, 1, 1, 'Live'),
(847, 38, 85.00, 21, 1, 1, 'Live'),
(848, 20, 12.00, 21, 1, 1, 'Live'),
(849, 25, 6.00, 21, 1, 1, 'Live'),
(850, 22, 22.00, 21, 1, 1, 'Live'),
(851, 30, 6.00, 21, 1, 1, 'Live'),
(852, 15, 5.00, 21, 1, 1, 'Live'),
(853, 13, 12.00, 21, 1, 1, 'Live'),
(854, 14, 140.00, 21, 1, 1, 'Live'),
(864, 146, 15.00, 45, 1, 1, 'Live'),
(865, 111, 20.00, 45, 1, 1, 'Live'),
(868, 133, 12.00, 42, 1, 1, 'Live'),
(869, 25, 12.00, 42, 1, 1, 'Live'),
(870, 131, 11.00, 42, 1, 1, 'Live'),
(871, 13, 13.00, 42, 1, 1, 'Live'),
(872, 14, 115.00, 42, 1, 1, 'Live'),
(873, 20, 7.00, 42, 1, 1, 'Live'),
(874, 134, 12.00, 42, 1, 1, 'Live'),
(875, 16, 0.26, 42, 1, 1, 'Live'),
(876, 135, 600.00, 42, 1, 1, 'Live'),
(877, 136, 60.00, 42, 1, 1, 'Live'),
(878, 80, 3.00, 42, 1, 1, 'Live'),
(879, 81, 2.00, 42, 1, 1, 'Live'),
(880, 104, 20.00, 42, 1, 1, 'Live'),
(881, 15, 300.00, 39, 1, 1, 'Live'),
(882, 117, 4.00, 39, 1, 1, 'Live'),
(883, 118, 30.00, 39, 1, 1, 'Live'),
(884, 119, 22.00, 39, 1, 1, 'Live'),
(885, 120, 3.00, 39, 1, 1, 'Live'),
(886, 121, 3.00, 39, 1, 1, 'Live'),
(887, 13, 30.00, 39, 1, 1, 'Live'),
(888, 69, 50.00, 39, 1, 1, 'Live'),
(889, 114, 400.00, 38, 1, 1, 'Live'),
(890, 76, 22.00, 38, 1, 1, 'Live'),
(891, 94, 11.00, 38, 1, 1, 'Live'),
(892, 78, 6.00, 38, 1, 1, 'Live'),
(893, 25, 4.00, 38, 1, 1, 'Live'),
(894, 115, 50.00, 38, 1, 1, 'Live'),
(895, 116, 15.00, 38, 1, 1, 'Live'),
(903, 107, 160.00, 36, 1, 1, 'Live'),
(904, 32, 25.00, 36, 1, 1, 'Live'),
(905, 108, 6.00, 36, 1, 1, 'Live'),
(906, 30, 4.00, 36, 1, 1, 'Live'),
(907, 67, 4.00, 36, 1, 1, 'Live'),
(908, 23, 4.00, 36, 1, 1, 'Live'),
(909, 16, 0.30, 36, 1, 1, 'Live'),
(910, 13, 29.00, 36, 1, 1, 'Live'),
(911, 109, 30.00, 36, 1, 1, 'Live'),
(912, 21, 800.00, 35, 1, 1, 'Live'),
(913, 13, 70.00, 35, 1, 1, 'Live'),
(914, 48, 50.00, 35, 1, 1, 'Live'),
(915, 29, 70.00, 35, 1, 1, 'Live'),
(916, 105, 100.00, 35, 1, 1, 'Live'),
(917, 67, 6.00, 35, 1, 1, 'Live'),
(918, 83, 20.00, 35, 1, 1, 'Live'),
(919, 94, 25.00, 35, 1, 1, 'Live'),
(920, 106, 25.00, 35, 1, 1, 'Live'),
(921, 103, 1.00, 34, 1, 1, 'Live'),
(922, 14, 100.00, 34, 1, 1, 'Live'),
(923, 30, 22.00, 34, 1, 1, 'Live'),
(924, 63, 25.00, 34, 1, 1, 'Live'),
(925, 67, 6.00, 34, 1, 1, 'Live'),
(926, 104, 6.00, 34, 1, 1, 'Live'),
(927, 97, 1.50, 33, 1, 1, 'Live'),
(928, 23, 6.00, 33, 1, 1, 'Live'),
(929, 13, 12.00, 33, 1, 1, 'Live'),
(930, 98, 7.00, 33, 1, 1, 'Live'),
(931, 100, 7.00, 33, 1, 1, 'Live'),
(932, 99, 4.00, 33, 1, 1, 'Live'),
(933, 20, 12.00, 33, 1, 1, 'Live'),
(934, 42, 12.00, 33, 1, 1, 'Live'),
(935, 14, 25.00, 33, 1, 1, 'Live'),
(936, 101, 6.00, 33, 1, 1, 'Live'),
(937, 21, 800.00, 33, 1, 1, 'Live'),
(938, 13, 70.00, 33, 1, 1, 'Live'),
(939, 48, 50.00, 33, 1, 1, 'Live'),
(940, 29, 70.00, 33, 1, 1, 'Live'),
(941, 105, 100.00, 33, 1, 1, 'Live'),
(942, 21, 800.00, 33, 1, 1, 'Live'),
(943, 13, 70.00, 33, 1, 1, 'Live'),
(944, 48, 50.00, 33, 1, 1, 'Live'),
(945, 29, 70.00, 33, 1, 1, 'Live'),
(946, 105, 100.00, 33, 1, 1, 'Live'),
(947, 21, 800.00, 33, 1, 1, 'Live'),
(948, 13, 70.00, 33, 1, 1, 'Live'),
(949, 48, 50.00, 33, 1, 1, 'Live'),
(950, 29, 70.00, 33, 1, 1, 'Live'),
(951, 105, 100.00, 33, 1, 1, 'Live'),
(952, 24, 25.00, 32, 1, 1, 'Live'),
(953, 92, 25.00, 32, 1, 1, 'Live'),
(954, 31, 50.00, 32, 1, 1, 'Live'),
(955, 93, 70.00, 32, 1, 1, 'Live'),
(956, 94, 22.00, 32, 1, 1, 'Live'),
(957, 95, 68.00, 32, 1, 1, 'Live'),
(958, 72, 8.00, 32, 1, 1, 'Live'),
(959, 30, 5.00, 32, 1, 1, 'Live'),
(960, 96, 120.00, 32, 1, 1, 'Live'),
(966, 83, 25.00, 29, 1, 1, 'Live'),
(967, 64, 2.00, 29, 1, 1, 'Live'),
(968, 45, 250.00, 29, 1, 1, 'Live'),
(969, 32, 12.00, 29, 1, 1, 'Live'),
(970, 30, 5.00, 29, 1, 1, 'Live'),
(971, 23, 120.00, 29, 1, 1, 'Live'),
(972, 84, 40.00, 29, 1, 1, 'Live'),
(973, 16, 680.00, 28, 1, 1, 'Live'),
(974, 75, 4.00, 28, 1, 1, 'Live'),
(975, 76, 50.00, 28, 1, 1, 'Live'),
(976, 77, 25.00, 28, 1, 1, 'Live'),
(977, 78, 12.00, 28, 1, 1, 'Live'),
(978, 79, 12.00, 28, 1, 1, 'Live'),
(979, 81, 4.00, 28, 1, 1, 'Live'),
(980, 82, 4.00, 28, 1, 1, 'Live'),
(981, 14, 25.00, 28, 1, 1, 'Live'),
(982, 80, 2.00, 28, 1, 1, 'Live'),
(983, 70, 50.00, 27, 1, 1, 'Live'),
(984, 72, 12.00, 27, 1, 1, 'Live'),
(985, 74, 100.00, 27, 1, 1, 'Live'),
(986, 73, 25.00, 27, 1, 1, 'Live'),
(987, 30, 6.00, 27, 1, 1, 'Live'),
(988, 71, 12.00, 27, 1, 1, 'Live'),
(989, 31, 250.00, 27, 1, 1, 'Live'),
(990, 69, 6.00, 27, 1, 1, 'Live'),
(991, 37, 250.00, 27, 1, 1, 'Live'),
(996, 50, 12.50, 24, 1, 1, 'Live'),
(997, 16, 600.00, 24, 1, 1, 'Live'),
(998, 57, 10.00, 24, 1, 1, 'Live'),
(999, 55, 5.00, 24, 1, 1, 'Live'),
(1000, 52, 18.00, 24, 1, 1, 'Live'),
(1001, 58, 20.00, 24, 1, 1, 'Live'),
(1002, 53, 1.40, 24, 1, 1, 'Live'),
(1003, 56, 25.00, 24, 1, 1, 'Live'),
(1004, 13, 12.00, 24, 1, 1, 'Live'),
(1005, 54, 50.00, 24, 1, 1, 'Live'),
(1006, 15, 400.00, 24, 1, 1, 'Live'),
(1007, 59, 100.00, 24, 1, 1, 'Live'),
(1008, 49, 25.00, 24, 1, 1, 'Live'),
(1016, 37, 200.00, 20, 1, 1, 'Live'),
(1017, 23, 2.00, 20, 1, 1, 'Live'),
(1018, 36, 100.00, 20, 1, 1, 'Live'),
(1019, 34, 300.00, 20, 1, 1, 'Live'),
(1020, 31, 6.00, 20, 1, 1, 'Live'),
(1021, 32, 72.00, 20, 1, 1, 'Live'),
(1022, 30, 5.00, 20, 1, 1, 'Live'),
(1023, 29, 20.00, 20, 1, 1, 'Live'),
(1024, 13, 50.00, 20, 1, 1, 'Live'),
(1025, 35, 8.00, 20, 1, 1, 'Live'),
(1026, 33, 5.00, 20, 1, 1, 'Live'),
(1027, 20, 12.00, 20, 1, 1, 'Live'),
(1046, 16, 225.00, 31, 1, 1, 'Live'),
(1047, 22, 23.00, 31, 1, 1, 'Live'),
(1048, 15, 5.00, 31, 1, 1, 'Live'),
(1049, 90, 22.00, 31, 1, 1, 'Live'),
(1050, 13, 19.00, 31, 1, 1, 'Live'),
(1051, 20, 11.00, 31, 1, 1, 'Live'),
(1052, 48, 75.00, 31, 1, 1, 'Live'),
(1053, 91, 6.00, 31, 1, 1, 'Live'),
(1067, 19, 0.50, 18, 1, 1, 'Live'),
(1068, 18, 250.00, 18, 1, 1, 'Live'),
(1069, 14, 200.00, 18, 1, 1, 'Live'),
(1070, 13, 0.50, 18, 1, 1, 'Live'),
(1071, 17, 200.00, 18, 1, 1, 'Live'),
(1072, 110, 4.00, 37, 1, 1, 'Live'),
(1073, 111, 300.00, 37, 1, 1, 'Live'),
(1074, 76, 33.00, 37, 1, 1, 'Live'),
(1075, 32, 12.00, 37, 1, 1, 'Live'),
(1076, 112, 20.00, 37, 1, 1, 'Live'),
(1077, 113, 11.00, 37, 1, 1, 'Live'),
(1078, 30, 23.00, 37, 1, 1, 'Live'),
(1079, 111, 5.00, 44, 1, 1, 'Live'),
(1080, 50, 5.00, 44, 1, 1, 'Live'),
(1081, 111, 5.00, 46, 1, 1, 'Live'),
(1082, 118, 5.00, 46, 1, 1, 'Live'),
(1083, 50, 5.00, 46, 1, 1, 'Live'),
(1084, 46, 25.00, 23, 1, 1, 'Live'),
(1085, 48, 25.00, 23, 1, 1, 'Live'),
(1086, 45, 160.00, 23, 1, 1, 'Live'),
(1087, 47, 12.00, 23, 1, 1, 'Live'),
(1088, 20, 7.00, 23, 1, 1, 'Live'),
(1089, 32, 12.00, 23, 1, 1, 'Live'),
(1090, 21, 190.00, 23, 1, 1, 'Live'),
(1091, 85, 6.00, 30, 1, 1, 'Live'),
(1092, 88, 4.00, 30, 1, 1, 'Live'),
(1093, 86, 12.00, 30, 1, 1, 'Live'),
(1094, 89, 1.00, 30, 1, 1, 'Live'),
(1095, 87, 40.00, 30, 1, 1, 'Live'),
(1096, 66, 70.00, 26, 1, 1, 'Live'),
(1097, 65, 4.00, 26, 1, 1, 'Live'),
(1098, 67, 7.00, 26, 1, 1, 'Live'),
(1099, 68, 25.00, 26, 1, 1, 'Live'),
(1100, 111, 3.00, 47, 1, 1, 'Live'),
(1102, 98, 12.00, 48, 1, 1, 'Live'),
(1103, 123, 5.00, 48, 1, 1, 'Live'),
(1104, 95, 6.00, 48, 1, 1, 'Live'),
(1105, 66, 7.00, 48, 1, 1, 'Live'),
(1106, 63, 0.90, 48, 1, 1, 'Live'),
(1107, 27, 7.00, 48, 1, 1, 'Live'),
(1108, 134, 4.00, 48, 1, 1, 'Live'),
(1109, 104, 3.00, 48, 1, 1, 'Live'),
(1110, 119, 1.00, 48, 1, 1, 'Live'),
(1111, 113, 6.00, 48, 1, 1, 'Live'),
(1112, 118, 3.00, 48, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_modifiers`
--

CREATE TABLE `tbl_food_menus_modifiers` (
  `id` bigint(20) NOT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_food_menus_modifiers`
--

INSERT INTO `tbl_food_menus_modifiers` (`id`, `modifier_id`, `food_menu_id`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES
(2, 3, 43, 1, NULL, 1, 'Live'),
(3, 4, 43, 1, NULL, 1, 'Live'),
(16, 8, 32, 1, NULL, 1, 'Live'),
(17, 6, 32, 1, NULL, 1, 'Live'),
(18, 9, 32, 1, NULL, 1, 'Live'),
(19, 10, 32, 1, NULL, 1, 'Live'),
(20, 6, 44, 1, NULL, 1, 'Live'),
(21, 9, 44, 1, NULL, 1, 'Live'),
(22, 10, 44, 1, NULL, 1, 'Live'),
(23, 5, 44, 1, NULL, 1, 'Live'),
(24, 8, 25, 1, NULL, 1, 'Live'),
(25, 7, 25, 1, NULL, 1, 'Live'),
(26, 6, 25, 1, NULL, 1, 'Live'),
(27, 10, 25, 1, NULL, 1, 'Live'),
(28, 5, 25, 1, NULL, 1, 'Live'),
(30, 10, 46, 1, NULL, 1, 'Live'),
(31, 8, 45, 1, NULL, 1, 'Live'),
(32, 7, 45, 1, NULL, 1, 'Live'),
(33, 8, 48, 1, NULL, 1, 'Live'),
(34, 6, 48, 1, NULL, 1, 'Live'),
(35, 10, 48, 1, NULL, 1, 'Live'),
(36, 8, 21, 1, NULL, 1, 'Live'),
(37, 7, 21, 1, NULL, 1, 'Live'),
(38, 6, 21, 1, NULL, 1, 'Live'),
(39, 9, 21, 1, NULL, 1, 'Live'),
(40, 10, 21, 1, NULL, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_tags`
--

CREATE TABLE `tbl_food_menus_tags` (
  `id` bigint(20) NOT NULL,
  `food_menu_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_food_menus_tags`
--

INSERT INTO `tbl_food_menus_tags` (`id`, `food_menu_id`, `tag_id`, `user_id`, `company_id`) VALUES
(6, 42, 1, 1, 1),
(7, 48, 1, 1, 1),
(8, 48, 3, 1, 1),
(9, 21, 1, 1, 1),
(10, 21, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menu_categories`
--

CREATE TABLE `tbl_food_menu_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food_menu_categories`
--

INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Chienese', 'Chienese', 1, 1, 'Live'),
(2, 'Fast Food ', 'Fast Food', 1, 1, 'Live'),
(8, 'Beverage', 'Beverage', 1, 1, 'Live'),
(10, 'Mexican', 'tacos', 1, 1, 'Live'),
(11, 'Bengali', 'Bengali food', 1, 1, 'Live'),
(12, 'Italian', 'Italian Food', 1, 1, 'Live'),
(13, 'Thai Food', 'Thai Food', 1, 1, 'Live'),
(14, 'Deserts', 'Deserts', 1, 1, 'Live'),
(15, 'American', 'American', 1, 1, 'Live'),
(16, 'Indian', 'Indian', 1, 1, 'Live'),
(17, 'Japanese', 'Japanese', 1, 1, 'Live'),
(19, 'Maxiacan', 'Maxican', 1, 1, 'Live'),
(20, 'Chinese', NULL, 1, 1, 'Live'),
(21, 'DeshiFishFry', '', 1, 1, 'Live'),
(22, 'dd', '', 1, 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_tags`
--

CREATE TABLE `tbl_food_tags` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` enum('Radio Group','Checkbox Group','Text Field') NOT NULL DEFAULT 'Radio Group',
  `description` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food_tags`
--

INSERT INTO `tbl_food_tags` (`id`, `title`, `type`, `description`, `company_id`) VALUES
(1, 'Sour Cream', 'Radio Group', 'This is the first tag', 1),
(2, 'Sushi Mods', 'Checkbox Group', 'This is the checkbox tag', 1),
(3, 'Special Drink', 'Text Field', 'This is a text tag', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_tags_items`
--

CREATE TABLE `tbl_food_tags_items` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food_tags_items`
--

INSERT INTO `tbl_food_tags_items` (`id`, `tag_id`, `title`, `description`, `price`, `company_id`) VALUES
(10, 2, 'Soy Paper', '', 1.05, 1),
(11, 2, 'No Masago', '', 0, 1),
(12, 2, 'Deep Fry Roll', '', 2, 1),
(13, 1, 'No', '', 0, 1),
(14, 1, 'Yes', '', 12.99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds`
--

CREATE TABLE `tbl_holds` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(11) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT 0,
  `outlet_id` int(11) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text DEFAULT NULL,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds`
--

INSERT INTO `tbl_holds` (`id`, `customer_id`, `hold_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `due_payment_date`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `token_no`, `sale_date`, `date_time`, `sale_time`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `sale_vat_objects`, `order_type`, `del_status`) VALUES
(1, '2', '1', 1, 300.00, NULL, NULL, NULL, NULL, NULL, 45.00, 345.00, NULL, 0, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-20', '2018-11-20 06:06:47', '2018-11-20 06:0', 1, 5, 2, 1, NULL, 3, 'Live'),
(2, '2', '2', 1, 400.00, NULL, NULL, NULL, NULL, NULL, 60.00, 460.00, NULL, 0, 0.00, 400.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-20', '2018-11-20 06:10:07', '2018-11-20 06:1', 1, 5, 2, 1, NULL, 1, 'Live'),
(5, '1', '1', 2, 650.00, NULL, NULL, NULL, NULL, NULL, 0.00, 650.00, NULL, 0, 0.00, 650.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-22', '2018-11-22 22:38:21', '2018-11-22 10:3', 1, 0, 3, 1, NULL, 0, 'Live'),
(6, '1', '2', 4, 2050.00, NULL, NULL, NULL, NULL, NULL, 0.00, 2050.00, NULL, 0, 0.00, 2050.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-22', '2018-11-22 22:43:45', '2018-11-22 10:4', 1, 0, 3, 1, NULL, 0, 'Live'),
(7, '5', '3', 2, 650.00, NULL, NULL, NULL, NULL, NULL, 0.00, 650.00, NULL, 0, 0.00, 650.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-22', '2018-11-22 22:44:04', '2018-11-22 10:4', 1, 0, 3, 1, NULL, 2, 'Live'),
(8, '1', '4', 1, 250.00, NULL, NULL, NULL, NULL, NULL, 0.00, 240.00, NULL, 0, 0.00, 240.00, 10.00, 10.00, 0.00, '10', 'plain', NULL, '2018-11-23', '2018-11-23 13:34:10', '2018-11-23 01:3', 1, 0, 3, 1, NULL, 0, 'Live'),
(9, '1', '5', 1, 250.00, NULL, NULL, NULL, NULL, NULL, 0.00, 250.00, NULL, 0, 0.00, 240.00, 10.00, 10.00, 10.00, '10', 'plain', NULL, '2018-11-23', '2018-11-23 13:35:00', '2018-11-23 01:3', 1, 0, 3, 1, NULL, 3, 'Live'),
(10, '1', '6', 1, 250.00, NULL, NULL, NULL, NULL, NULL, 0.00, 225.00, NULL, 0, 0.00, 225.00, 25.00, 25.00, 0.00, '10%', 'percentage', NULL, '2018-11-23', '2018-11-23 13:36:03', '2018-11-23 01:3', 1, 0, 3, 1, NULL, 0, 'Live'),
(11, '13', '7', 1, 124.00, NULL, NULL, NULL, NULL, NULL, 0.00, 124.00, NULL, 0, 10.00, 114.00, 10.00, 20.00, 10.00, '10', 'plain', NULL, '2018-11-23', '2018-11-23 13:44:53', '2018-11-23 01:4', 1, 0, 3, 1, NULL, 0, 'Live'),
(12, '1', '8', 2, 650.00, NULL, NULL, NULL, NULL, NULL, 0.00, 650.00, NULL, 0, 0.00, 650.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-24', '2018-11-24 07:03:14', '2018-11-24 07:0', 1, 0, 3, 1, NULL, 0, 'Live'),
(13, '1', '9', 5, 1250.00, NULL, NULL, NULL, NULL, NULL, 0.00, 1250.00, NULL, 0, 0.00, 1250.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-24', '2018-11-24 07:18:55', '2018-11-24 07:1', 1, 0, 3, 1, NULL, 1, 'Live'),
(18, '1', '3', 2, 384.79, NULL, NULL, NULL, NULL, NULL, 37.50, 422.29, NULL, 0, 0.00, 384.79, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-11-27', '2018-11-27 07:01:49', '2018-11-27 07:0', 1, 0, 2, 1, NULL, 0, 'Live'),
(23, '', '1', 3, 980.00, NULL, NULL, NULL, NULL, NULL, 147.00, 1127.00, NULL, 0, 0.00, 980.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-12-09', '2018-12-09 13:47:06', '2018-12-09 07:4', 1, 0, 4, 1, NULL, 0, 'Live'),
(24, '', '1', 3, 980.00, NULL, NULL, NULL, NULL, NULL, 147.00, 1127.00, NULL, 0, 0.00, 980.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2018-12-09', '2018-12-09 13:47:13', '2018-12-09 07:4', 1, 0, 4, 1, NULL, 0, 'Live'),
(25, '', '3', 2, 680.00, NULL, NULL, NULL, NULL, NULL, 102.00, 872.00, NULL, 0, 0.00, 670.00, 10.00, 10.00, 100.00, '10', 'plain', NULL, '2018-12-12', '2018-12-12 06:06:49', '2018-12-12 12:0', 1, 0, 4, 1, NULL, 0, 'Live'),
(29, '1', '1', 5, 1450.00, NULL, NULL, NULL, NULL, NULL, 0.00, 1522.50, NULL, 0, 0.00, 1450.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2020-07-08', '2020-07-08 00:27:14', '2020-07-08 03:2', 1, 0, 1, 1, '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"36.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"36.25\"}]', 0, 'Live'),
(30, '1', '1', 2, 1260.00, NULL, NULL, NULL, NULL, NULL, 0.00, 1323.00, NULL, 0, 0.00, 1260.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2020-09-28', '2020-09-29 03:53:20', '2020-09-28 11:5', 10, 10, 1, 1, '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"31.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"31.50\"}]', 0, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details`
--

CREATE TABLE `tbl_holds_details` (
  `id` int(11) NOT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text DEFAULT NULL,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds_details`
--

INSERT INTO `tbl_holds_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `holds_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 31, 'Lamb With Green Chili Masala (015)', 1, 300.00, 300.00, 300.00, 15.00, NULL, '', 'plain', '', 0.00, 1, 1, 2, 'Live'),
(2, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 2, 1, 2, 'Live'),
(5, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 5, 1, 3, 'Live'),
(6, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 5, 1, 3, 'Live'),
(7, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 6, 1, 3, 'Live'),
(8, 32, 'Beet And Onion Pickle Recipe (016)', 2, 500.00, 500.00, 250.00, 15.00, NULL, '', 'plain', 'test', 0.00, 6, 1, 3, 'Live'),
(9, 42, 'Best Eggs Benedict (026)', 2, 800.00, 800.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 6, 1, 3, 'Live'),
(10, 32, 'Beet And Onion Pickle Recipe (016)', 2, 500.00, 500.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 6, 1, 3, 'Live'),
(11, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 7, 1, 3, 'Live'),
(12, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 7, 1, 3, 'Live'),
(13, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 8, 1, 3, 'Live'),
(14, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 9, 1, 3, 'Live'),
(15, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 10, 1, 3, 'Live'),
(16, 44, 'DeshiMas (12)', 1, 100.00, 90.00, 100.00, 15.00, NULL, '10', 'plain', 'None.', 10.00, 11, 1, 3, 'Live'),
(17, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 12, 1, 3, 'Live'),
(18, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 12, 1, 3, 'Live'),
(19, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 13, 1, 3, 'Live'),
(20, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 13, 1, 3, 'Live'),
(21, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 13, 1, 3, 'Live'),
(22, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 13, 1, 3, 'Live'),
(23, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 13, 1, 3, 'Live'),
(37, 44, 'DeshiMas (12)', 1, 100.46, 100.46, 100.46, 0.00, NULL, '', 'plain', '', 0.00, 18, 1, 2, 'Live'),
(38, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 18, 1, 2, 'Live'),
(43, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 23, 1, 4, 'Live'),
(44, 25, 'Better Chocolate Chip Cookies (09)', 1, 330.00, 330.00, 330.00, 15.00, NULL, '', 'plain', '', 0.00, 23, 1, 4, 'Live'),
(45, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 23, 1, 4, 'Live'),
(46, 32, 'Beet And Onion Pickle Recipe (016)', 1, 250.00, 250.00, 250.00, 15.00, NULL, '', 'plain', '', 0.00, 24, 1, 4, 'Live'),
(47, 25, 'Better Chocolate Chip Cookies (09)', 1, 330.00, 330.00, 330.00, 15.00, NULL, '', 'plain', '', 0.00, 24, 1, 4, 'Live'),
(48, 42, 'Best Eggs Benedict (026)', 1, 400.00, 400.00, 400.00, 15.00, NULL, '', 'plain', '', 0.00, 24, 1, 4, 'Live'),
(49, 19, 'Black Pepper Beef (03)', 1, 350.00, 350.00, 350.00, 15.00, NULL, '', 'plain', '', 0.00, 25, 1, 4, 'Live'),
(50, 25, 'Better Chocolate Chip Cookies (09)', 1, 330.00, 330.00, 330.00, 15.00, NULL, '', 'plain', '', 0.00, 25, 1, 4, 'Live'),
(61, 38, 'Wonton Soup (022)', 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 29, 1, 1, 'Live'),
(62, 28, 'Shochu Mojito (012)', 1, 250.00, 250.00, 250.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"}]', '0', 'plain', '', 0.00, 29, 1, 1, 'Live'),
(63, 36, 'Sweet Potato Bacon Salad (020)', 1, 450.00, 450.00, 450.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"11.25\",\"item_vat_amount_for_all_quantity\":\"11.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"11.25\",\"item_vat_amount_for_all_quantity\":\"11.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"11.25\",\"item_vat_amount_for_all_quantity\":\"11.25\"}]', '0', 'plain', '', 0.00, 29, 1, 1, 'Live'),
(64, 46, 'JhalFry (02)', 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 29, 1, 1, 'Live'),
(65, 19, 'Black Pepper Beef (03)', 1, 350.00, 350.00, 350.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"}]', '0', 'plain', '', 0.00, 29, 1, 1, 'Live'),
(66, 25, 'Better Chocolate Chip Cookies (09)', 2, 660.00, 660.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 30, 10, 1, 'Live'),
(67, 21, 'Kimchi Pasta (05)', 2, 600.00, 600.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 30, 10, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details_modifiers`
--

CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int(11) NOT NULL,
  `modifier_id` int(11) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(11) NOT NULL,
  `holds_id` int(11) NOT NULL,
  `holds_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_holds_details_modifiers`
--

INSERT INTO `tbl_holds_details_modifiers` (`id`, `modifier_id`, `modifier_price`, `food_menu_id`, `holds_id`, `holds_details_id`, `user_id`, `outlet_id`, `customer_id`) VALUES
(1, 4, 34.00, 44, 11, 16, 1, 3, 13),
(3, 4, 34.33, 44, 18, 37, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details_tags`
--

CREATE TABLE `tbl_holds_details_tags` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_item_id` int(11) NOT NULL,
  `tag_price` float(10,2) NOT NULL,
  `food_menu_id` int(11) NOT NULL,
  `holds_id` int(11) NOT NULL,
  `holds_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients`
--

CREATE TABLE `tbl_ingredients` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredients`
--

INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES
(13, 'IG-001', 'Soyabin Oil ', 1, 110.00, 5.00, 4, 1, 1, 'Live'),
(14, 'IG-002', 'Onion', 7, 80.00, 3.00, 4, 1, 1, 'Live'),
(15, 'IG-003', 'Potato', 2, 25.00, 2.00, 4, 1, 1, 'Live'),
(16, 'IG-004', 'Beef', 3, 450.00, 1.00, 1, 1, 1, 'Live'),
(17, 'IG-005', 'yogurt', 7, 100.00, 250.00, 4, 1, 1, 'Live'),
(18, 'IG-006', 'Katari Vogh Rice', 8, 120.00, 1.00, 4, 1, 1, 'Live'),
(19, 'IG-007', 'Ilish', 4, 500.00, 5.00, 1, 1, 1, 'Live'),
(20, 'IG-008', 'Garlic', 7, 200.00, 2.00, 4, 1, 1, 'Live'),
(21, 'IG-009', 'Chicken', 3, 100.00, 10.00, 4, 1, 1, 'Live'),
(22, 'IG-010', 'Oyster Sauce', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(23, 'IG-011', 'Black pepper', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(24, 'IG-012', 'Water', 8, 20.00, 10.00, 4, 1, 1, 'Live'),
(25, 'IG-013', 'Soy Sauce', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(26, 'IG-014', 'chow mein noodles', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(27, 'IG-015', 'Carrot', 2, 25.00, 10.00, 4, 1, 1, 'Live'),
(28, 'IG-016', 'egg yolks', 8, 10.00, 10.00, 3, 1, 1, 'Live'),
(29, 'IG-017', 'Lime juice', 2, 20.00, 10.00, 4, 1, 1, 'Live'),
(30, 'IG-018', 'Salt', 7, 30.00, 10.00, 4, 1, 1, 'Live'),
(31, 'IG-019', 'Granulated sugar', 7, 30.00, 10.00, 4, 1, 1, 'Live'),
(32, 'IG-020', 'Olive oil', 1, 100.00, 10.00, 4, 1, 1, 'Live'),
(33, 'IG-021', 'Mexican oregano', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(34, 'IG-022', 'Cod cheeks', 4, 200.00, 10.00, 4, 1, 1, 'Live'),
(35, 'IG-023', 'Corn tortillas', 2, 50.00, 10.00, 3, 1, 1, 'Live'),
(36, 'IG-024', 'Cabbage', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(37, 'IG-025', 'Flour', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(38, 'IG-026', 'Bell pepper', 2, 100.00, 10.00, 4, 1, 1, 'Live'),
(39, 'IG-027', 'Orange juice', 9, 100.00, 10.00, 4, 1, 1, 'Live'),
(40, 'IG-028', 'Orange marmalade', 9, 50.00, 10.00, 4, 1, 1, 'Live'),
(41, 'IG-029', 'Orange zest', 9, 50.00, 10.00, 4, 1, 1, 'Live'),
(42, 'IG-030', 'Fresh ginger', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(43, 'IG-031', 'Sake', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(44, 'IG-032', 'sesame seeds', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(45, 'IG-033', 'Spaghetti', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(46, 'IG-034', 'Kimchi juice', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(47, 'IG-035', 'Gochujang', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(48, 'IG-036', 'Scallions', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(49, 'IG-037', 'Dried guajillo chiles', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(50, 'IG-038', 'Allspice', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(51, 'IG-039', 'Lemongrass', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(52, 'IG-040', 'Galanga', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(53, 'IG-041', 'Kaffir lime leaves', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(54, 'IG-042', 'Shallot ', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(55, 'IG-043', 'Coriander roots', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(56, 'IG-044', 'Tamarind pulp', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(57, 'IG-045', 'Cinnamon stick', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(58, 'IG-046', 'Green cardamom', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(59, 'IG-047', 'Cloves', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(60, 'IG-048', 'Mashroom', 2, 100.00, 10.00, 4, 1, 1, 'Live'),
(61, 'IG-049', 'White pepper', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(62, 'IG-050', 'Soft tof', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(63, 'IG-051', 'Black vinegar', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(64, 'IG-052', 'Eggs', 8, 40.00, 10.00, 3, 1, 1, 'Live'),
(65, 'IG-053', 'Pink peppercorns', 7, 100.00, 10.00, 3, 1, 1, 'Live'),
(66, 'IG-054', 'Concord grapes', 9, 100.00, 10.00, 4, 1, 1, 'Live'),
(67, 'IG-055', 'Honey', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(68, 'IG-056', 'Sweet potato shochu', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(69, 'IG-057', 'Baking soda', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(70, 'IG-058', 'Coconut oil', 1, 50.00, 10.00, 4, 1, 1, 'Live'),
(71, 'IG-059', 'Nutritional yeast', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(72, 'IG-060', 'Vanilla extract', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(73, 'IG-061', 'Soy milk', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(74, 'IG-062', 'Unsweetened chocolate ', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(75, 'IG-063', 'American cheese', 8, 100.00, 10.00, 3, 1, 1, 'Live'),
(76, 'IG-064', 'Mayonnaise', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(77, 'IG-065', 'Ketchup', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(78, 'IG-066', 'Yellow mustard', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(79, 'IG-067', 'Dill pickle', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(80, 'IG-068', 'Tomatoes', 2, 50.00, 10.00, 3, 1, 1, 'Live'),
(81, 'IG-069', 'Lettuce', 2, 50.00, 10.00, 3, 1, 1, 'Live'),
(82, 'IG-070', 'Hamburger buns', 8, 50.00, 10.00, 3, 1, 1, 'Live'),
(83, 'IG-071', 'Flat leaf parsley', 2, 50.00, 10.00, 4, 1, 1, 'Live'),
(84, 'IG-072', 'Parmigiano-Reggiano', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(85, 'IG-073', 'Mint ', 2, 20.00, 10.00, 3, 1, 1, 'Live'),
(86, 'IG-074', 'Suger', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(87, 'IG-075', 'Brown sugar shochu', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(88, 'IG-076', 'Club soda', 8, 50.00, 10.00, 3, 1, 1, 'Live'),
(89, 'IG-077', 'Lime', 9, 20.00, 10.00, 3, 1, 1, 'Live'),
(90, 'IG-078', 'Hoisin sauce', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(91, 'IG-079', 'Doubanjiang', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(92, 'IG-080', 'Light corn syrup', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(93, 'IG-081', 'Heavy cream', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(94, 'IG-082', 'Cultured unsalted butter', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(95, 'IG-083', 'Cocoa powder', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(96, 'IG-084', 'Bittersweet chocolate', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(97, 'IG-085', 'Lamb ', 3, 600.00, 10.00, 1, 1, 1, 'Live'),
(98, 'IG-086', 'Black mustard seeds', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(99, 'IG-087', 'Fenugreek seeds', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(100, 'IG-088', 'Fennel seeds', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(101, 'IG-089', 'Jalapeno peppers', 2, 100.00, 10.00, 3, 1, 1, 'Live'),
(102, 'IG-090', 'Tamarind concentrate', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(104, 'IG-092', 'Cilantro', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(106, 'IG-094', 'Capers in brine', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(107, 'IG-095', 'Fennel ', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(108, 'IG-096', 'Dijon mustard', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(109, 'IG-097', 'Chives', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(110, 'IG-098', 'Salt rice', 8, 100.00, 10.00, 3, 1, 1, 'Live'),
(111, 'IG-099', 'Ahi tuna', 4, 50.00, 10.00, 4, 1, 1, 'Live'),
(112, 'IG-100', 'Shiso', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(113, 'IG-101', 'Daikon', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(114, 'IG-102', 'Sweet potatoes', 2, 100.00, 10.00, 4, 1, 1, 'Live'),
(115, 'IG-103', 'Bacon', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(116, 'IG-104', 'Mizuna', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(117, 'IG-105', 'Fish fillet', 4, 100.00, 10.00, 3, 1, 1, 'Live'),
(118, 'IG-106', 'All-purpose flour', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(119, 'IG-107', 'Cornstarch', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(120, 'IG-108', 'Paprika', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(121, 'IG-109', 'Onion powder', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(122, 'IG-110', 'Kansui', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(123, 'IG-111', 'Medium shrimp', 4, 200.00, 10.00, 4, 1, 1, 'Live'),
(124, 'IG-112', 'Shrimp shells', 4, 100.00, 10.00, 4, 1, 1, 'Live'),
(125, 'IG-113', 'Dried pollock ', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(126, 'IG-114', 'Thin Chinese wonton noodles', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(127, 'IG-115', 'Wonton wrappers', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(128, 'IG-116', 'Cooked rice', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(129, 'IG-117', 'Chopped garlic chives', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(130, 'IG-118', 'Kaffir lime leaves', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(131, 'IG-119', 'Mirin', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(132, 'IG-120', 'Fish sauce', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(133, 'IG-121', 'Tomato paste', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(134, 'IG-122', 'Chili powder', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(135, 'IG-123', 'Cooked short-grain rice', 8, 100.00, 10.00, 4, 1, 1, 'Live'),
(136, 'IG-124', 'Cheddar cheese ', 8, 200.00, 10.00, 4, 1, 1, 'Live'),
(137, 'IG-125', 'Sandwich bread', 8, 100.00, 10.00, 3, 1, 1, 'Live'),
(138, 'IG-126', 'Thai sweet chili sauce', 7, 50.00, 10.00, 4, 1, 1, 'Live'),
(139, 'IG-127', 'Perfect Hollandaise sauce', 7, 100.00, 10.00, 4, 1, 1, 'Live'),
(140, 'IG-128', 'English muffins', 8, 50.00, 10.00, 4, 1, 1, 'Live'),
(141, 'IG-129', 'Thick-cut ham', 8, 50.00, 10.00, 3, 1, 1, 'Live'),
(142, 'IG-130', 'Avocado ', 9, 99.00, 10.00, 3, 1, 1, 'Live'),
(209, '205', 'Kaski Fish', 47, 200.00, 2.00, 1, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredient_categories`
--

CREATE TABLE `tbl_ingredient_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredient_categories`
--

INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Oil', '', 1, 1, 'Live'),
(2, 'Vegetable', NULL, 1, 1, 'Live'),
(3, 'Meat', NULL, 1, 1, 'Live'),
(4, 'Fish', NULL, 1, 1, 'Live'),
(6, 'Sea Fish', NULL, 1, 1, 'Live'),
(7, 'Spicery', NULL, 1, 1, 'Live'),
(8, 'Others', 'Rice,Yougart etc', 1, 1, 'Live'),
(9, 'Fruit', 'Fruits', 1, 1, 'Live'),
(47, 'Deshi Fish', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment`
--

CREATE TABLE `tbl_inventory_adjustment` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_inventory_adjustment`
--

INSERT INTO `tbl_inventory_adjustment` (`id`, `reference_no`, `date`, `note`, `employee_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', '2018-10-27', '', NULL, 1, 1, 'Deleted'),
(2, '000002', '2018-10-27', '', NULL, 1, 1, 'Deleted'),
(3, '000003', '2018-10-21', '', NULL, 1, 1, 'Deleted'),
(4, '000004', '2018-10-27', '', NULL, 1, 1, 'Deleted'),
(5, '000005', '2018-10-09', '', NULL, 1, 1, 'Deleted'),
(6, '000006', '2018-10-08', '', NULL, 1, 1, 'Deleted'),
(7, '000007', '2018-10-10', '', 2, 1, 1, 'Live'),
(8, '000001', '2018-11-16', '', NULL, 1, 2, 'Live'),
(9, '000002', '2018-11-18', '', NULL, 1, 2, 'Live'),
(10, '000003', '2018-11-18', '', NULL, 1, 2, 'Live'),
(11, '000001', '2018-12-02', '', NULL, 1, 4, 'Deleted'),
(12, '000002', '2018-12-04', '', NULL, 1, 4, 'Deleted'),
(13, '000003', '2018-12-04', '', NULL, 1, 4, 'Live'),
(14, '000008', '2018-12-12', '', 2, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment_ingredients`
--

CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int(11) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption_amount` float(10,2) DEFAULT NULL,
  `inventory_adjustment_id` int(11) DEFAULT NULL,
  `consumption_status` enum('Plus','Minus','','') DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_inventory_adjustment_ingredients`
--

INSERT INTO `tbl_inventory_adjustment_ingredients` (`id`, `ingredient_id`, `consumption_amount`, `inventory_adjustment_id`, `consumption_status`, `outlet_id`, `del_status`) VALUES
(0, 118, 23.00, 0, 'Plus', 1, 'Live'),
(0, 75, 4.00, 0, 'Plus', 1, 'Live'),
(0, 191, 3.00, 0, 'Minus', 1, 'Live'),
(0, 111, 5.00, 0, 'Plus', 1, 'Live'),
(0, 111, 5.00, 0, 'Minus', 1, 'Live'),
(0, 118, 6.00, 0, 'Minus', 1, 'Live'),
(0, 50, 7.00, 0, 'Plus', 1, 'Live'),
(0, 118, 4.00, 6, 'Plus', 1, 'Deleted'),
(0, 209, 10.00, 8, 'Plus', 2, 'Live'),
(0, 209, 1.00, 9, 'Plus', 2, 'Live'),
(0, 209, 1.00, 10, 'Minus', 2, 'Live'),
(0, 209, 5.00, 11, 'Plus', 4, 'Deleted'),
(0, 111, 5.00, 12, 'Plus', 4, 'Deleted'),
(0, 111, 5.00, 13, 'Plus', 4, 'Live'),
(0, 50, 5.00, 13, 'Plus', 4, 'Live'),
(0, 111, 4.00, 14, 'Plus', 1, 'Live'),
(0, 50, 2.00, 14, 'Minus', 1, 'Live'),
(0, 111, 4.00, 7, 'Plus', 1, 'Live'),
(0, 118, 5.00, 7, 'Minus', 1, 'Live'),
(0, 75, 6.00, 7, 'Minus', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ipp_methods`
--

CREATE TABLE `tbl_ipp_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ipp_methods`
--

INSERT INTO `tbl_ipp_methods` (`id`, `name`, `description`, `del_status`, `company_id`) VALUES
(1, 'Manual', '', 'Live', 1),
(2, 'EMV', '', 'Live', 1),
(3, 'Swipe', '', 'Live', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_match_products`
--

CREATE TABLE `tbl_match_products` (
  `id` int(11) NOT NULL,
  `pnp_product_id` int(11) NOT NULL,
  `suredine_product_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_match_products`
--

INSERT INTO `tbl_match_products` (`id`, `pnp_product_id`, `suredine_product_id`, `company_id`) VALUES
(15, 46, 2742, 1),
(14, 43, 2116, 1),
(12, 42, 2738, 1),
(13, 38, 2955, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifiers`
--

CREATE TABLE `tbl_modifiers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_modifiers`
--

INSERT INTO `tbl_modifiers` (`id`, `name`, `price`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(2, 'M FM', 32.00, 'f', 1, 1, 'Deleted'),
(3, 'M FM2', 42.00, 're42', 1, 1, 'Deleted'),
(4, 'test1', 34.33, '', 1, 1, 'Deleted'),
(5, 'sharmaPlus', 100.00, '', 1, 1, 'Live'),
(6, 'House Salad', 2.25, '', 1, 1, 'Live'),
(7, 'Caeser Salad', 3.70, '', 1, 1, 'Live'),
(8, 'Beet Salada', 3.00, '', 1, 1, 'Live'),
(9, 'Onion Ring', 4.00, '', 1, 1, 'Live'),
(10, 'Seasoned Fries', 4.00, '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifier_ingredients`
--

CREATE TABLE `tbl_modifier_ingredients` (
  `id` bigint(20) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_modifier_ingredients`
--

INSERT INTO `tbl_modifier_ingredients` (`id`, `ingredient_id`, `consumption`, `modifier_id`, `user_id`, `company_id`, `del_status`) VALUES
(3, 198, 32.00, 3, 4, 0, 'Live'),
(4, 202, 1.00, 3, 4, 0, 'Live'),
(10, 118, 4.00, 4, 1, 1, 'Live'),
(11, 75, 2.00, 4, 1, 1, 'Live'),
(12, 142, 3.00, 4, 1, 1, 'Live'),
(14, 111, 5.00, 5, 1, 1, 'Live'),
(15, 50, 5.00, 5, 1, 1, 'Live'),
(16, 50, 4.00, 6, 1, 1, 'Live'),
(17, 64, 2.00, 6, 1, 1, 'Live'),
(18, 59, 5.00, 6, 1, 1, 'Live'),
(19, 25, 1.00, 6, 1, 1, 'Live'),
(20, 109, 50.00, 7, 1, 1, 'Live'),
(21, 115, 30.00, 7, 1, 1, 'Live'),
(22, 50, 56.00, 8, 1, 1, 'Live'),
(23, 95, 25.00, 8, 1, 1, 'Live'),
(24, 14, 200.00, 9, 1, 1, 'Live'),
(25, 121, 10.00, 9, 1, 1, 'Live'),
(26, 15, 300.00, 10, 1, 1, 'Live'),
(27, 95, 30.00, 10, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` bigint(20) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_bar_kitchen_panel`
--

CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_bar_kitchen_panel`
--

INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES
(7, 'Order:A 000055 has been modified', 1),
(8, 'Order:A 000055 has been modified', 1),
(9, 'Order:A 000072 has been modified', 1),
(10, 'Order:A 000059 has been modified', 1),
(11, 'Order:A 000067 has been modified', 1),
(12, 'Order:A 000069 has been modified', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_table`
--

CREATE TABLE `tbl_orders_table` (
  `id` bigint(20) NOT NULL,
  `persons` int(11) NOT NULL,
  `booking_time` datetime NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sale_no` varchar(20) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orders_table`
--

INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES
(11, 1, '2019-03-14 21:10:16', 50, '000050', 1, 2, 'Deleted'),
(12, 1, '2019-08-11 00:40:27', 5, '000005', 1, 2, 'Deleted'),
(13, 1, '2019-08-11 00:40:27', 5, '000005', 1, 3, 'Deleted'),
(14, 1, '2019-08-20 13:53:24', 7, '000007', 1, 2, 'Deleted'),
(15, 1, '2019-08-20 13:53:24', 7, '000007', 1, 3, 'Deleted'),
(47, 1, '2020-07-04 01:36:12', 44, '000044', 1, 3, 'Deleted'),
(50, 1, '2020-07-08 00:24:01', 50, '000050', 1, 2, 'Deleted'),
(51, 1, '2020-07-08 03:15:42', 51, '000051', 1, 2, 'Deleted'),
(52, 1, '2020-07-13 05:51:51', 52, '000052', 1, 2, 'Deleted'),
(53, 1, '2020-08-05 17:51:44', 55, '000055', 1, 2, 'Deleted'),
(54, 5, '2020-08-07 01:21:26', 57, '000057', 1, 2, 'Deleted'),
(55, 1, '2020-08-07 01:21:26', 57, '000057', 1, 3, 'Deleted'),
(56, 1, '2020-08-14 12:17:31', 59, '000059', 1, 2, 'Deleted'),
(58, 1, '2020-08-29 22:23:47', 69, '000069', 1, 3, 'Live'),
(59, 1, '2020-08-29 22:25:11', 70, '000070', 1, 3, 'Deleted'),
(60, 3, '2020-08-29 22:34:37', 71, '000071', 1, 3, 'Live'),
(61, 1, '2020-08-29 23:17:47', 74, '000074', 1, 2, 'Deleted'),
(62, 1, '2020-09-28 23:19:09', 90, '000090', 1, 2, 'Live'),
(63, 1, '2020-09-28 23:19:09', 90, '000090', 1, 2, 'Live'),
(64, 1, '2020-09-28 23:19:09', 90, '000090', 1, 3, 'Live'),
(65, 1, '2020-09-28 23:19:11', 91, '000091', 1, 2, 'Live'),
(66, 1, '2020-09-28 23:19:11', 91, '000091', 1, 2, 'Live'),
(67, 1, '2020-09-28 23:19:11', 91, '000091', 1, 3, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int(11) NOT NULL,
  `outlet_name` varchar(50) DEFAULT NULL,
  `outlet_code` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `invoice_print` enum('Yes','No') DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `invoice_footer` varchar(500) DEFAULT NULL,
  `collect_tax` varchar(10) DEFAULT NULL,
  `tax_title` varchar(10) DEFAULT NULL,
  `tax_registration_no` varchar(30) DEFAULT NULL,
  `tax_is_gst` varchar(10) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `pre_or_post_payment` varchar(500) DEFAULT 'Post Payment',
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `outlet_code`, `address`, `phone`, `invoice_print`, `starting_date`, `invoice_footer`, `collect_tax`, `tax_title`, `tax_registration_no`, `tax_is_gst`, `state_code`, `pre_or_post_payment`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Texas Bistro', '000001', '421 E. Commerce San Antonio, TX 78205', '(210) 224-1313', 'Yes', '2018-02-18', 'Thank you for visiting us!', 'Yes', 'GST', '093784728373', 'Yes', '09', 'Post Payment', 2, 1, 'Live'),
(2, 'KFC', '000002', 'Dhanmondi 32', '09876543210', NULL, '2018-11-13', 'Thank You! Avar Ashben.', '', '', '', '', '', 'Post Payment', 1, 1, 'Live'),
(3, 'KhanaPina', '000003', 'Dhaka', '01727677793', NULL, '2018-11-22', 'Thank you!', '', '', '', '', '', 'Post Payment', 1, 1, 'Deleted'),
(4, 'Grand Nobab', '000004', 'Hajigonj', '12345678902', NULL, '2018-11-25', 'Thank you!', '', '', '', '', '', 'Post Payment', 1, 1, 'Live'),
(5, 'Pasta State', '000005', 'Dhaka', '01825201703', NULL, '2018-12-12', 'Thank you!', '', '', '', '', '', 'Post Payment', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlet_taxes`
--

CREATE TABLE `tbl_outlet_taxes` (
  `id` int(11) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(100) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outlet_taxes`
--

INSERT INTO `tbl_outlet_taxes` (`id`, `tax`, `outlet_id`, `user_id`, `company_id`, `del_status`) VALUES
(15, 'CGST', 1, 1, 1, 'Live'),
(16, 'SGST', 1, 1, 1, 'Live'),
(17, 'IGST', 1, 1, 1, 'Live'),
(18, 'VAT', 1, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT 'Live',
  `ipp_endpoint_url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ipp_username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ipp_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ipp_methods` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`, `ipp_endpoint_url`, `ipp_username`, `ipp_password`, `ipp_methods`) VALUES
(3, 'Cash', 'Pay with cash', 1, 1, 'Live', '', '', '', ''),
(4, 'Card', '', 1, 1, 'Deleted', '', '', '', ''),
(5, 'Paypal', '', 1, 1, 'Deleted', '', '', '', ''),
(6, 'IPP', 'ipPayAware Payment Gateway', 1, 1, 'Live', 'https://api.ippayware.com/v1', 'Hz17zHia7BxgQepggRLmr6XmjPX8Wb1D', 'L3LkK4vRF38vhyMypyUREReXHb6Dn7h8', '1||2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', 9, '2018-06-12', NULL, NULL, 5000.00, 5000.00, 0.00, NULL, 1, 1, 'Live'),
(2, '000002', 9, '2018-11-15', NULL, NULL, 2000.00, 1200.00, 800.00, NULL, 1, 1, 'Live'),
(3, '000001', 9, '2018-11-16', NULL, NULL, 2000.00, 1200.00, 800.00, NULL, 1, 2, 'Live'),
(4, '000001', 13, '2018-12-02', NULL, NULL, 2000.00, 2000.00, 0.00, NULL, 1, 4, 'Deleted'),
(5, '000002', 13, '2018-12-02', NULL, NULL, 2000.00, 2000.00, 0.00, NULL, 1, 2, 'Live'),
(6, '000002', 9, '2018-12-04', NULL, NULL, 5000.00, 6000.00, -1000.00, NULL, 1, 4, 'Deleted'),
(7, '000003', 13, '2018-12-04', NULL, NULL, 41790.00, 6000.00, 35790.00, NULL, 1, 4, 'Deleted'),
(8, '000004', 16, '2018-12-04', NULL, NULL, 39800.00, 6000.00, 33800.00, NULL, 1, 4, 'Live'),
(9, '000001', 16, '2018-12-12', NULL, NULL, 5000.00, 2000.00, 3000.00, NULL, 1, 5, 'Live'),
(10, '000002', 10, '2018-12-12', NULL, NULL, 10000.00, 6000.00, 4000.00, NULL, 1, 5, 'Live'),
(11, '000003', 9, '2018-12-12', NULL, NULL, 5000.00, 2000.00, 3000.00, NULL, 1, 5, 'Live'),
(12, '000003', 19, '2019-08-11', NULL, NULL, 650.00, 500.00, 150.00, NULL, 1, 1, 'Live'),
(13, '000004', 18, '2019-08-11', NULL, NULL, 200.00, 100.00, 100.00, NULL, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_ingredients`
--

CREATE TABLE `tbl_purchase_ingredients` (
  `id` int(11) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase_ingredients`
--

INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES
(1, 111, 50.00, 100.00, 5000.00, 1, 1, 'Live'),
(2, 209, 200.00, 10.00, 2000.00, 2, 1, 'Live'),
(3, 209, 200.00, 10.00, 2000.00, 3, 2, 'Live'),
(4, 209, 200.00, 10.00, 2000.00, 4, 4, 'Deleted'),
(5, 209, 200.00, 10.00, 2000.00, 5, 2, 'Live'),
(8, 111, 50.00, 100.00, 5000.00, 6, 4, 'Deleted'),
(12, 111, 50.00, 210.00, 10500.00, 7, 4, 'Deleted'),
(13, 50, 50.00, 210.00, 10500.00, 7, 4, 'Deleted'),
(14, 191, 99.00, 210.00, 20790.00, 7, 4, 'Deleted'),
(15, 111, 50.00, 200.00, 10000.00, 8, 4, 'Live'),
(16, 50, 50.00, 200.00, 10000.00, 8, 4, 'Live'),
(17, 191, 99.00, 200.00, 19800.00, 8, 4, 'Live'),
(18, 111, 50.00, 100.00, 5000.00, 9, 5, 'Live'),
(19, 118, 100.00, 100.00, 10000.00, 10, 5, 'Live'),
(20, 50, 50.00, 100.00, 5000.00, 11, 5, 'Live'),
(21, 111, 50.00, 3.00, 150.00, 12, 1, 'Live'),
(22, 118, 100.00, 5.00, 500.00, 12, 1, 'Live'),
(23, 75, 100.00, 2.00, 200.00, 13, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `opening_balance` float(10,2) NOT NULL,
  `closing_balance` float(10,2) NOT NULL,
  `opening_balance_date_time` datetime NOT NULL,
  `closing_balance_date_time` datetime NOT NULL,
  `sale_paid_amount` float(10,2) NOT NULL,
  `customer_due_receive` float(10,2) NOT NULL,
  `payment_methods_sale` text NOT NULL,
  `register_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=open,2=closed',
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES
(1, 200.00, 0.00, '2018-12-01 18:57:28', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(2, 200.00, 0.00, '2018-12-01 19:00:47', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 2, 1),
(3, 200.00, 0.00, '2018-12-02 20:23:10', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(4, 200.00, 0.00, '2018-12-02 20:25:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 2, 1),
(5, 3000.00, 0.00, '2018-12-03 13:31:55', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(6, 200.00, 0.00, '2018-12-04 12:20:21', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(7, 200.00, 0.00, '2018-12-04 20:23:28', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 3, 1),
(8, 500.00, 0.00, '2018-12-07 18:41:20', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(9, 20.00, 0.00, '2018-12-07 19:06:30', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(10, 10.00, 0.00, '2018-12-07 22:59:16', '2018-12-07 23:07:08', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(11, 130.00, 0.00, '2018-12-07 23:07:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(12, 500.00, 0.00, '2018-12-08 01:40:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(13, 500.00, 0.00, '2018-12-08 17:06:05', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(14, 500.00, 0.00, '2018-12-09 10:02:32', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(15, 3000.00, 0.00, '2018-12-09 14:37:15', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(16, 650.00, 0.00, '2018-12-10 14:24:11', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(17, 10.00, 0.00, '2018-12-10 17:33:10', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(18, 10.00, 0.00, '2018-12-10 17:41:07', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 2, 1),
(19, 200.00, 0.00, '2018-12-11 19:04:51', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(20, 200.00, 0.00, '2018-12-11 20:53:31', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(21, 1000.00, 2736.50, '2018-12-12 12:05:51', '2018-12-12 20:24:13', 1736.50, 0.00, '{\"Cash\": ,\"Paypal\": 1449.00,\"Card\": 287.50}', 2, 1, 4, 1),
(22, 650.00, 650.00, '2018-12-12 16:57:14', '2018-12-12 20:16:33', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(23, 100.00, 0.00, '2018-12-12 20:26:50', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 4, 1),
(24, 1.00, 0.00, '2018-12-12 20:38:32', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(25, 200.00, 0.00, '2018-12-12 21:04:25', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 5, 1),
(26, 200.00, 200.00, '2018-12-12 21:04:36', '2018-12-12 21:04:56', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 5, 1),
(27, 650.00, 0.00, '2018-12-13 08:15:58', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 2, 1),
(28, 450.00, 0.00, '2018-12-14 08:39:33', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 5, 1),
(29, 600.00, 0.00, '2018-12-28 17:38:40', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(30, 434.00, 0.00, '2018-12-29 12:10:40', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(31, 4444.00, 0.00, '2019-01-01 11:21:46', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(32, 444.00, 0.00, '2019-01-07 07:44:57', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(33, 4444.00, 0.00, '2019-01-08 23:39:40', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(34, 4444.00, 0.00, '2019-01-08 23:40:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 6, 1, 1),
(35, 500.00, 0.00, '2019-01-10 20:53:26', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(36, 566.00, 566.00, '2019-01-11 14:41:15', '2019-01-11 14:48:20', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(37, 533.00, 533.00, '2019-01-11 14:49:07', '2019-01-11 14:56:04', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(38, 2232.00, 2232.00, '2019-01-11 15:01:46', '2019-01-11 15:04:29', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 8, 1, 1),
(39, 444.00, 0.00, '2019-01-11 15:02:07', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(40, 32.00, 0.00, '2019-01-16 07:18:34', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(41, 444.00, 0.00, '2019-01-17 01:44:51', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(42, 500.00, 0.00, '2019-01-18 06:15:14', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(43, 33.00, 0.00, '2019-01-29 16:41:12', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(44, 500.00, 0.00, '2019-03-12 11:38:21', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(45, 345.00, 0.00, '2019-03-13 00:04:05', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(46, 500.00, 0.00, '2019-03-14 17:04:50', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(47, 345.00, 0.00, '2019-03-16 06:59:20', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(48, 500.00, 0.00, '2019-03-17 15:51:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(49, 500.00, 0.00, '2019-03-20 12:50:46', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(50, 33.00, 0.00, '2019-07-04 09:56:28', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(51, 33.00, 0.00, '2019-07-09 08:39:18', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(52, 25.00, 0.00, '2019-08-11 00:21:13', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(53, 56.00, 0.00, '2019-08-18 03:28:24', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(54, 25.00, 0.00, '2019-08-20 13:02:24', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(55, 56.00, 0.00, '2019-08-31 02:56:02', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(56, 100.00, 0.00, '2020-06-18 23:15:24', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(57, 100.00, 0.00, '2020-06-20 04:03:58', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(58, 10.00, 0.00, '2020-06-21 10:01:20', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(59, 100.00, 100.00, '2020-06-28 03:41:38', '2020-06-28 04:27:46', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(60, 2.00, 0.00, '2020-06-28 04:27:53', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(61, 100.00, 0.00, '2020-07-03 00:22:52', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(62, 0.00, 0.00, '2020-07-04 01:18:56', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(63, 100.00, 0.00, '2020-07-05 08:15:07', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(64, 0.00, 0.00, '2020-07-07 22:52:37', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(65, 0.00, 0.00, '2020-07-08 00:06:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(66, 100.00, 0.00, '2020-07-10 00:53:03', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(67, 1.00, 0.00, '2020-07-13 05:48:36', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(68, 100.00, 0.00, '2020-07-17 02:23:57', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(69, 1000.00, 0.00, '2020-07-18 03:50:25', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(70, 1.00, 0.00, '2020-08-05 04:44:40', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(71, 1.00, 0.00, '2020-08-07 00:53:33', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(72, 1.00, 0.00, '2020-08-08 01:25:54', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(73, 1.00, 0.00, '2020-08-08 01:26:00', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(74, 1.00, 0.00, '2020-08-09 03:03:16', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(75, 100.00, 0.00, '2020-08-10 19:52:32', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(76, 1.00, 0.00, '2020-08-11 00:46:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(77, 110.00, 110.00, '2020-08-12 03:39:04', '2020-08-12 03:50:09', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(78, 100.00, 0.00, '2020-08-12 18:29:57', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(79, 100.00, 0.00, '2020-08-14 12:15:41', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(80, 1.00, 0.00, '2020-08-17 09:46:20', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(81, 2.00, 0.00, '2020-08-29 21:44:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(82, 333.00, 2163.00, '2020-08-29 21:44:50', '2020-08-29 22:42:36', 1830.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": 1290.00}', 2, 10, 1, 1),
(83, 2.00, 2.00, '2020-08-29 23:16:04', '2020-08-29 23:16:32', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(84, 1.00, 0.00, '2020-08-30 18:05:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(85, 2.00, 0.00, '2020-08-31 13:48:05', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(86, 2.00, 0.00, '2020-08-31 13:48:05', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(87, 1.00, 0.00, '2020-09-01 21:19:29', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(88, 46.00, 0.00, '2020-09-04 23:39:44', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(89, 1.00, 0.00, '2020-09-06 21:16:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(90, 2.00, 0.00, '2020-09-06 23:26:44', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(91, 2.00, 0.00, '2020-09-06 23:26:49', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(92, 12.00, 0.00, '2020-09-06 23:28:01', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(93, 0.00, 0.00, '2020-09-07 02:49:49', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(94, 1.00, 0.00, '2020-09-08 11:55:13', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(95, 8.00, 0.00, '2020-09-11 02:03:35', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(96, 1.00, 0.00, '2020-09-15 00:10:46', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(97, 0.00, 0.00, '2020-09-21 22:16:38', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(98, 0.00, 0.00, '2020-09-22 20:53:21', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(99, 0.00, 0.00, '2020-09-23 13:23:58', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(100, 100.00, 0.00, '2020-09-25 10:38:28', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1),
(101, 100.00, 0.00, '2020-09-25 10:52:04', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(102, 0.00, 525.00, '2020-09-28 21:04:27', '2020-09-28 23:27:21', 525.00, 0.00, '{\"Cash\": 525.00,\"Paypal\": ,\"Card\": }', 2, 10, 1, 1),
(103, 0.00, 0.00, '2020-09-28 21:04:29', '2020-09-28 23:21:14', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 10, 1, 1),
(104, 500.00, 0.00, '2020-09-28 23:28:11', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(11) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` float(10,2) DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `close_time` time NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_time` time NOT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) NOT NULL DEFAULT 0,
  `outlet_id` int(11) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order, 2=invoiced order, 3=closed order',
  `order_type` tinyint(1) NOT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `sale_vat_objects` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES
(1, '21', '000001', 4, 1130.00, 1201.50, 0.00, NULL, NULL, 0.00, 1201.50, 4, '23:53:37', NULL, 0.00, 1130.00, 0.00, 0.00, 0.00, '', 'plain', '2019-03-14', '2019-03-14 17:53:28', '23:53:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_type\":\"IGST\",\"tax_field_amount\":\"23.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"23.25\"}]'),
(2, '17', '000002', 3, 930.00, 976.50, NULL, NULL, NULL, 0.00, 976.50, 3, '12:54:11', NULL, 0.00, 930.00, 0.00, 0.00, 0.00, '', 'plain', '2019-03-20', '2019-03-20 06:54:11', '12:54:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"23.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"23.25\"}]'),
(4, '1', '000004', 3, 2100.00, 2550.00, 0.00, NULL, NULL, 0.00, 2550.00, 4, '02:46:13', NULL, 0.00, 2100.00, 0.00, 0.00, 210.00, '', 'plain', '2019-07-09', '2019-07-09 13:20:09', '19:20:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"225.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(5, '20', '000005', 2, 630.00, 724.50, 0.00, NULL, NULL, 0.00, 724.50, 5, '02:44:08', NULL, 0.00, 630.00, 0.00, 0.00, 63.00, '', 'plain', '2019-08-11', '2019-08-10 20:44:01', '02:44:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.75\"}]'),
(6, '17', '000006', 4, 1130.00, 1201.50, 0.00, NULL, NULL, 0.00, 1201.50, 4, '02:56:13', NULL, 0.00, 1130.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-20', '2019-08-20 09:05:29', '15:05:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"23.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"23.25\"}]'),
(7, '17', '000007', 2, 750.00, 862.50, 0.00, NULL, NULL, 0.00, 862.50, 4, '13:55:14', NULL, 0.00, 750.00, 0.00, 0.00, 75.00, '', 'plain', '2019-08-20', '2019-08-20 07:53:24', '13:53:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"18.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"18.75\"}]'),
(8, '14', '3C-F-001', 3, 830.00, NULL, NULL, NULL, NULL, 0.00, 886.50, NULL, '00:00:00', NULL, 0.00, 830.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-24', '2019-08-24 05:45:00', '11:45:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.75\"}]'),
(9, '17', '000009', 2, 600.00, 630.00, 0.00, NULL, NULL, 0.00, 630.00, 5, '08:30:52', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-30 20:57:06', '02:57:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(10, '17', '000010', 2, 600.00, 630.00, 0.00, NULL, NULL, 0.00, 630.00, 5, '08:31:23', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-30 22:58:26', '04:58:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(11, '17', '000011', 2, 600.00, 630.00, 0.00, NULL, NULL, 0.00, 630.00, 4, '00:33:38', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 02:34:28', '08:34:28', '2020-06-18 23:21:32', '2020-06-18 23:21:40', 'No', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(12, '26', '3C-F-001', 2, 600.00, NULL, NULL, NULL, NULL, 0.00, 630.00, NULL, '00:00:00', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 06:10:00', '12:10:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(13, '27', '3C-F-001', 2, 500.00, NULL, NULL, NULL, NULL, 0.00, 540.00, NULL, '00:00:00', NULL, 0.00, 500.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 06:10:00', '12:10:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(14, '28', '3C-F-001', 4, 1200.00, NULL, NULL, NULL, NULL, 0.00, 1275.00, NULL, '00:00:00', NULL, 0.00, 1200.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 06:15:00', '12:15:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"25.00\"}]'),
(15, '17', '3C-F-004', 2, 630.00, NULL, NULL, NULL, NULL, 0.00, 661.50, NULL, '00:00:00', NULL, 0.00, 630.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 06:15:00', '12:15:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.75\"}]'),
(16, '29', '3C-F-001', 2, 600.00, NULL, NULL, NULL, NULL, 0.00, 630.00, NULL, '00:00:00', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 07:00:00', '13:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(17, '14', '3C-F-001', 3, 1000.00, NULL, NULL, NULL, NULL, 0.00, 1050.00, NULL, '00:00:00', NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, '', 'plain', '2019-08-31', '2019-08-31 07:25:00', '13:25:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"25.00\"}]'),
(44, '1', '000044', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '01:41:40', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-07-04', '2020-07-04 05:36:12', '01:36:12', '0000-00-00 00:00:00', '2020-07-04 01:37:10', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(47, '1', '000047', 3, 700.00, 750.00, 0.00, NULL, NULL, 0.00, 750.00, 6, '08:25:37', NULL, 0.00, 700.00, 0.00, 0.00, 0.00, '', 'plain', '2020-07-05', '2020-07-05 12:25:30', '08:25:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"12.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"12.50\"}]'),
(50, '1', '000050', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '03:18:17', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-07-08', '2020-07-08 04:24:01', '00:24:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(51, '2', '000051', 2, 600.00, 690.00, 0.00, NULL, NULL, 0.00, 690.00, 4, '17:37:22', NULL, 0.00, 600.00, 0.00, 0.00, 60.00, '', 'plain', '2020-07-08', '2020-07-08 07:15:42', '03:15:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(52, '2', '000052', 2, 600.00, 630.00, 0.00, NULL, NULL, 0.00, 630.00, 4, '03:58:19', NULL, 0.00, 600.00, 0.00, 0.00, 60.00, '', 'plain', '2020-07-13', '2020-07-13 09:51:51', '05:51:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(53, '1', '000053', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 4, '17:36:54', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-07-17', '2020-07-17 06:24:30', '02:24:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(54, '17', '000054', 1, 600.00, 660.00, 0.00, NULL, NULL, 0.00, 660.00, 4, '17:50:51', NULL, 0.00, 600.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-05', '2020-08-05 21:50:40', '17:50:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(55, '1', '000055', 2, 550.00, 607.50, 0.00, NULL, NULL, 0.00, 607.50, 4, '01:23:13', NULL, 0.00, 550.00, 0.00, 0.00, 55.00, '', 'plain', '2020-08-07', '2020-08-07 05:06:47', '01:06:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"13.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"13.75\"}]'),
(56, '1', '000056', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '01:04:59', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-07', '2020-08-07 05:03:53', '01:03:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(57, '1', '000057', 4, 800.00, 860.00, 0.00, NULL, NULL, 0.00, 860.00, 6, '02:18:37', NULL, 0.00, 800.00, 0.00, 0.00, 20.00, '', 'plain', '2020-08-07', '2020-08-07 05:21:26', '01:21:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"20.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"20.00\"}]'),
(58, '1', '000058', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '01:26:39', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-08', '2020-08-08 05:26:30', '01:26:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(59, '1', '000059', 4, 1003.00, 1123.30, 0.00, NULL, NULL, 0.00, 1123.30, 3, '02:50:26', NULL, 0.00, 1003.00, 0.00, 0.00, 70.30, '', 'plain', '2020-08-29', '2020-08-30 02:37:39', '22:37:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"25.00\"}]'),
(60, '1', '000060', 1, 352.70, 367.70, 0.00, NULL, NULL, 0.00, 367.70, 6, '21:49:26', NULL, 0.00, 352.70, 0.00, 0.00, 35.27, '', 'plain', '2020-08-14', '2020-08-14 16:38:07', '12:38:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(61, '1', '000061', 1, 354.70, 369.70, 0.00, NULL, NULL, 0.00, 369.70, 6, '12:45:59', NULL, 0.00, 354.70, 0.00, 0.00, 35.47, '', 'plain', '2020-08-14', '2020-08-14 17:09:59', '13:09:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(62, '1', '000062', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '14:24:13', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-17', '2020-08-18 01:11:46', '21:11:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(63, '1', '000063', 2, 600.00, 630.00, 0.00, NULL, NULL, 0.00, 630.00, 4, '22:04:45', NULL, 0.00, 600.00, 0.00, 0.00, 60.00, '', 'plain', '2020-08-29', '2020-08-30 02:01:41', '22:01:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(64, '1', '000064', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 4, '22:06:47', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-29', '2020-08-30 02:06:40', '22:06:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(65, '1', '000065', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 3, '23:54:11', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-08-29', '2020-08-30 02:08:17', '22:08:17', '0000-00-00 00:00:00', '2020-09-25 11:05:09', 'No', 10, 10, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(66, '1', '000066', 2, 500.00, 540.00, 0.00, NULL, NULL, 0.00, 540.00, 6, '22:17:31', NULL, 0.00, 500.00, 0.00, 0.00, 0.00, '', 'plain', '2020-08-29', '2020-08-30 02:17:22', '22:17:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(67, '1', '000067', 1, 300.00, 345.00, 0.00, NULL, NULL, 0.00, 345.00, 3, '23:26:55', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-29', '2020-08-30 02:38:08', '22:38:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(68, '1', '000068', 4, 1200.00, NULL, NULL, NULL, NULL, 0.00, 1260.00, NULL, '00:00:00', NULL, 0.00, 1200.00, 0.00, 0.00, 0.00, '', 'plain', '2020-08-29', '2020-08-30 02:19:33', '22:19:33', '2020-09-28 23:23:08', '2020-09-28 23:23:11', 'No', 10, 10, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"30.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"30.00\"}]'),
(69, '1', '000069', 2, 600.00, NULL, NULL, NULL, NULL, 0.00, 690.00, NULL, '00:00:00', NULL, 0.00, 600.00, 0.00, 0.00, 60.00, '', 'plain', '2020-08-29', '2020-08-30 03:17:59', '23:17:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(70, '1', '000070', 6, 1730.00, 1831.50, 0.00, NULL, NULL, 0.00, 1831.50, 6, '16:58:37', NULL, 0.00, 1730.00, 0.00, 0.00, 173.00, '', 'plain', '2020-08-29', '2020-08-30 02:25:11', '22:25:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"38.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"38.25\"}]'),
(71, '1', '000071', 3, 800.00, NULL, NULL, NULL, NULL, 0.00, 855.00, NULL, '00:00:00', NULL, 0.00, 800.00, 0.00, 0.00, 0.00, '', 'plain', '2020-08-29', '2020-08-30 02:34:37', '22:34:37', '0000-00-00 00:00:00', '2020-09-28 23:24:53', 'No', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(72, '1', '000072', 3, 900.00, 345.00, 0.00, NULL, NULL, 0.00, 945.00, 4, '22:38:18', NULL, 0.00, 900.00, 0.00, 0.00, 0.00, '', 'plain', '2020-08-29', '2020-08-30 02:37:17', '22:37:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"22.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"22.50\"}]'),
(73, '1', '000073', 7, 1950.00, NULL, NULL, NULL, NULL, 0.00, 2062.50, NULL, '00:00:00', NULL, 0.00, 1950.00, 0.00, 0.00, 195.00, '', 'plain', '2020-08-29', '2020-08-30 03:16:18', '23:16:18', '0000-00-00 00:00:00', '2020-09-28 23:24:56', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"25.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"43.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"43.75\"}]'),
(74, '1', '000074', 1, 300.00, 690.00, 0.00, NULL, NULL, 0.00, 315.00, 5, '23:18:03', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-08-29', '2020-08-30 03:17:47', '23:17:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(75, '1', '000075', 1, 200.00, 210.00, 0.00, NULL, NULL, 0.00, 210.00, 6, '22:52:06', NULL, 0.00, 200.00, 0.00, 0.00, 20.00, '', 'plain', '2020-08-31', '2020-09-01 02:52:01', '22:52:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"5.00\"}]'),
(76, '1', '000076', 1, 300.00, 315.00, 0.00, NULL, NULL, 0.00, 315.00, 6, '21:19:52', NULL, 0.00, 300.00, 0.00, 0.00, 30.00, '', 'plain', '2020-09-01', '2020-09-02 01:19:48', '21:19:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(77, '1', '000077', 1, 330.00, NULL, NULL, NULL, NULL, 0.00, 346.50, NULL, '00:00:00', NULL, 0.00, 330.00, 0.00, 0.00, 33.00, '', 'plain', '2020-09-04', '2020-09-05 03:39:56', '23:39:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"8.25\"}]'),
(78, '1', '000078', 1, 150.00, NULL, NULL, NULL, NULL, 0.00, 150.00, NULL, '00:00:00', NULL, 0.00, 150.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-07', '2020-09-07 20:27:29', '16:27:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[]'),
(79, '1', '000079', 2, 600.00, NULL, NULL, NULL, NULL, 0.00, 630.00, NULL, '00:00:00', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-07', '2020-09-07 20:54:36', '16:54:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(80, '1', '000080', 1, 200.00, NULL, NULL, NULL, NULL, 0.00, 210.00, NULL, '00:00:00', NULL, 0.00, 200.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-07', '2020-09-07 20:57:16', '16:57:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"5.00\"}]'),
(81, '1', '000081', 2, 600.00, NULL, NULL, NULL, NULL, 0.00, 630.00, NULL, '00:00:00', NULL, 0.00, 600.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-07', '2020-09-08 01:26:24', '21:26:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"15.00\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"15.00\"}]'),
(82, '1', '000082', 1, 300.00, NULL, NULL, NULL, NULL, 0.00, 315.00, NULL, '00:00:00', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-08', '2020-09-08 15:55:23', '11:55:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(83, '1', '000083', 1, 300.00, NULL, NULL, NULL, NULL, 0.00, 315.00, NULL, '00:00:00', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-11', '2020-09-11 06:03:49', '02:03:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(84, '1', '000084', 1, 300.00, NULL, NULL, NULL, NULL, 0.00, 315.00, NULL, '00:00:00', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-15', '2020-09-15 04:11:02', '00:11:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(85, '1', '000085', 1, 300.00, NULL, NULL, NULL, NULL, 0.00, 315.00, NULL, '00:00:00', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-15', '2020-09-15 04:15:09', '00:15:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(86, '1', '000086', 1, 300.00, NULL, NULL, NULL, NULL, 0.00, 315.00, NULL, '00:00:00', NULL, 0.00, 300.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-15', '2020-09-15 04:15:10', '00:15:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"7.50\"}]'),
(87, '1', '000087', 3, 1860.00, NULL, NULL, NULL, NULL, 0.00, 1953.00, NULL, '00:00:00', NULL, 0.00, 1860.00, 0.00, 0.00, 186.00, '', 'plain', '2020-09-25', '2020-09-25 14:39:31', '10:39:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"46.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"46.50\"}]'),
(88, '1', '000088', 3, 910.00, 955.50, 0.00, NULL, NULL, 0.00, 955.50, 3, '10:58:49', NULL, 0.00, 910.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-25', '2020-09-25 14:58:45', '10:58:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 1, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"22.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"22.75\"}]'),
(89, '1', '000089', 3, 700.00, NULL, NULL, NULL, NULL, 0.00, 727.50, NULL, '00:00:00', NULL, 0.00, 700.00, 0.00, 0.00, 0.00, '', 'plain', '2020-09-28', '2020-09-29 03:16:56', '23:16:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"13.75\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"13.75\"}]'),
(90, '1', '000090', 6, 1730.00, NULL, NULL, NULL, NULL, 0.00, 1816.50, NULL, '00:00:00', NULL, 0.00, 1730.00, 0.00, 0.00, 173.00, '', 'plain', '2020-09-28', '2020-09-29 03:19:09', '23:19:09', '0000-00-00 00:00:00', '2020-09-28 23:23:49', 'No', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"43.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"43.25\"}]'),
(91, '1', '000091', 6, 1730.00, NULL, NULL, NULL, NULL, 0.00, 1816.50, NULL, '00:00:00', NULL, 0.00, 1730.00, 0.00, 0.00, 173.00, '', 'plain', '2020-09-28', '2020-09-29 03:19:11', '23:19:11', '0000-00-00 00:00:00', '2020-09-28 23:23:42', 'No', 10, 10, 1, 1, 1, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"43.25\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"43.25\"}]'),
(92, '1', '000092', 2, 500.00, NULL, NULL, NULL, NULL, 0.00, 525.00, NULL, '00:00:00', NULL, 0.00, 500.00, 0.00, 0.00, 50.00, '', 'plain', '2020-09-28', '2020-09-29 03:21:25', '23:21:25', '0000-00-00 00:00:00', '2020-09-28 23:23:39', 'No', 10, 10, 1, 1, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"12.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"12.50\"}]'),
(93, '1', '000093', 2, 500.00, 525.00, 0.00, NULL, NULL, 0.00, 525.00, 3, '23:21:42', NULL, 0.00, 500.00, 0.00, 0.00, 50.00, '', 'plain', '2020-09-28', '2020-09-29 03:21:26', '23:21:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 10, 10, 1, 3, 2, 'Live', '[{\"tax_field_id\":\"10\",\"tax_field_type\":\"VAT\",\"tax_field_amount\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_type\":\"SGST\",\"tax_field_amount\":\"12.50\"},{\"tax_field_id\":\"7\",\"tax_field_type\":\"CGST\",\"tax_field_amount\":\"12.50\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `id` bigint(20) NOT NULL,
  `food_menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `tmp_qty` int(11) NOT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text DEFAULT NULL,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `cooking_status` varchar(30) DEFAULT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `previous_id` bigint(20) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales_details`
--

INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `tmp_qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 0, 1, 1, 'Live'),
(2, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1, 0, 1, 1, 'Live'),
(3, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1, 0, 1, 1, 'Live'),
(4, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1, 0, 1, 1, 'Live'),
(5, 31, 'Coca cola 400ml (015)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 2, 0, 1, 1, 'Live'),
(6, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 2, 0, 1, 1, 'Live'),
(7, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 2, 0, 1, 1, 'Live'),
(11, 43, 'Chicken Chow Mein (027)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 4, 0, 1, 1, 'Live'),
(12, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 4, 0, 1, 1, 'Live'),
(13, 30, 'Whisky (014)', 8, 0, 1600.00, 1600.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 4, 0, 1, 1, 'Live'),
(16, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 5, 0, 1, 1, 'Live'),
(17, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 5, 0, 1, 1, 'Live'),
(21, 41, 'Shrimp Toast (025)', 1, 0, 400.00, 400.00, 400.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 7, 0, 1, 1, 'Live'),
(22, 19, 'Black Pepper Beef (03)', 1, 0, 350.00, 350.00, 350.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.75\",\"item_vat_amount_for_all_quantity\":\"8.75\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 7, 0, 1, 1, 'Live'),
(23, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 6, 0, 1, 1, 'Live'),
(24, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 6, 0, 1, 1, 'Live'),
(25, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 6, 0, 1, 1, 'Live'),
(26, 31, 'Coca cola 400ml (015)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 26, 6, 0, 1, 1, 'Live'),
(27, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 27, 8, 0, 1, 1, 'Live'),
(28, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28, 8, 0, 1, 1, 'Live'),
(29, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29, 8, 0, 1, 1, 'Live'),
(30, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 30, 9, 0, 1, 1, 'Live'),
(31, 43, 'Chicken Chow Mein (027)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 9, 0, 1, 1, 'Live'),
(32, 31, 'Coca cola 400ml (015)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 32, 10, 0, 1, 1, 'Live'),
(33, 43, 'Chicken Chow Mein (027)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 33, 10, 0, 1, 1, 'Live'),
(34, 43, 'Chicken Chow Mein (027)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-06-18 23:21:32', '2020-06-18 23:21:39', 34, 11, 0, 1, 1, 'Live'),
(35, 20, 'Orange Chicken (04)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-06-18 23:21:32', '2020-06-18 23:21:39', 35, 11, 0, 1, 1, 'Live'),
(36, 31, 'Coca cola 400ml (015)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 36, 12, 0, 1, 1, 'Live'),
(37, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 37, 12, 0, 1, 1, 'Live'),
(38, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 38, 13, 0, 1, 1, 'Live'),
(39, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, 13, 0, 1, 1, 'Live'),
(40, 41, 'Shrimp Toast (025)', 1, 0, 400.00, 400.00, 400.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40, 14, 0, 1, 1, 'Live'),
(41, 20, 'Orange Chicken (04)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41, 14, 0, 1, 1, 'Live'),
(42, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 14, 0, 1, 1, 'Live'),
(43, 30, 'Whisky (014)', 1, 0, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 43, 14, 0, 1, 1, 'Live'),
(44, 25, 'Better Chocolate Chip Cookies (09)', 1, 0, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44, 15, 0, 1, 1, 'Live'),
(45, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 15, 0, 1, 1, 'Live'),
(46, 31, 'Coca cola 400ml (015)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 16, 0, 1, 1, 'Live'),
(47, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 47, 16, 0, 1, 1, 'Live'),
(48, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48, 17, 0, 1, 1, 'Live'),
(49, 43, 'Chicken Chow Mein (027)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 49, 17, 0, 1, 1, 'Live'),
(50, 41, 'Shrimp Toast (025)', 1, 0, 400.00, 400.00, 400.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"10.00\",\"item_vat_amount_for_all_quantity\":\"10.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 50, 17, 0, 1, 1, 'Live'),
(52, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-07-04 01:37:01', '2020-07-04 01:37:10', 52, 44, 0, 1, 1, 'Live');
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `tmp_qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(55, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 55, 47, 0, 1, 1, 'Live'),
(56, 30, 'Whisky (014)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 56, 47, 0, 1, 1, 'Live'),
(57, 29, 'Mongolian Beef (013)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 57, 47, 0, 1, 1, 'Live'),
(60, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 60, 50, 0, 1, 1, 'Live'),
(61, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 61, 51, 0, 1, 1, 'Live'),
(62, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 62, 51, 0, 1, 1, 'Live'),
(63, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 63, 52, 0, 1, 1, 'Live'),
(64, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 64, 52, 0, 1, 1, 'Live'),
(65, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 65, 53, 0, 1, 1, 'Live'),
(66, 21, 'Kimchi Pasta (05)', 2, 2, 600.00, 600.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 66, 54, 0, 1, 1, 'Live'),
(68, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 68, 56, 0, 1, 1, 'Live'),
(71, 21, 'Kimchi Pasta (05)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 67, 55, 0, 1, 1, 'Live'),
(72, 32, 'Beet And Onion Pickle Recipe (016)', 1, 0, 250.00, 250.00, 250.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 70, 55, 0, 1, 1, 'Live'),
(73, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 73, 57, 0, 1, 1, 'Live'),
(74, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 74, 57, 0, 1, 1, 'Live'),
(75, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 75, 57, 0, 1, 1, 'Live'),
(76, 29, 'Mongolian Beef (013)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, 57, 0, 1, 1, 'Live'),
(77, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 58, 0, 1, 1, 'Live'),
(81, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 81, 60, 0, 1, 1, 'Live'),
(82, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 82, 61, 0, 1, 1, 'Live'),
(83, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 83, 62, 0, 1, 1, 'Live'),
(84, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 84, 63, 0, 10, 1, 'Live'),
(85, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 85, 63, 0, 10, 1, 'Live'),
(86, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 86, 64, 0, 10, 1, 'Live'),
(87, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-25 11:05:09', 87, 65, 0, 10, 1, 'Live'),
(88, 30, 'Whisky (014)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 66, 0, 10, 1, 'Live'),
(89, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 89, 66, 0, 10, 1, 'Live'),
(91, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-09-28 23:23:07', '2020-09-28 23:23:11', 91, 68, 0, 10, 1, 'Live'),
(92, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-09-28 23:23:08', '2020-09-28 23:23:11', 92, 68, 0, 10, 1, 'Live'),
(93, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-09-28 23:23:08', '2020-09-28 23:23:11', 93, 68, 0, 10, 1, 'Live'),
(94, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-09-28 23:23:08', '2020-09-28 23:23:11', 94, 68, 0, 10, 1, 'Live'),
(97, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 97, 70, 0, 10, 1, 'Live'),
(98, 30, 'Whisky (014)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 98, 70, 0, 10, 1, 'Live'),
(99, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 70, 0, 10, 1, 'Live'),
(100, 43, 'Chicken Chow Mein (027)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 70, 0, 10, 1, 'Live'),
(101, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 101, 70, 0, 10, 1, 'Live'),
(102, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 102, 70, 0, 10, 1, 'Live'),
(103, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 103, 71, 0, 10, 1, 'Live'),
(104, 30, 'Whisky (014)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:24:53', 104, 71, 0, 10, 1, 'Live'),
(105, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:24:53', 105, 71, 0, 10, 1, 'Live'),
(108, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 106, 72, 0, 10, 1, 'Live'),
(109, 22, 'Massaman Beef Curry (06)', 1, 0, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 107, 72, 0, 10, 1, 'Live'),
(110, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 110, 72, 0, 10, 1, 'Live');
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `tmp_qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(111, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 78, 59, 0, 10, 1, 'Live'),
(112, 45, 'Sahrma (020)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 79, 59, 0, 10, 1, 'Live'),
(113, 45, 'Sahrma (020)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 80, 59, 0, 10, 1, 'Live'),
(114, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 114, 59, 0, 10, 1, 'Live'),
(115, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 90, 67, 0, 10, 1, 'Live'),
(116, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 116, 73, 0, 1, 1, 'Live'),
(117, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 117, 73, 0, 1, 1, 'Live'),
(118, 30, 'Whisky (014)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"12.5\",\"item_vat_amount_for_unit_item\":\"25.00\",\"item_vat_amount_for_all_quantity\":\"25.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:24:56', 118, 73, 0, 1, 1, 'Live'),
(119, 43, 'Chicken Chow Mein (027)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 119, 73, 0, 1, 1, 'Live'),
(120, 20, 'Orange Chicken (04)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 120, 73, 0, 1, 1, 'Live'),
(121, 37, 'Fish And Chips (021)', 1, 1, 250.00, 250.00, 250.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 121, 73, 0, 1, 1, 'Live'),
(122, 20, 'Orange Chicken (04)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 122, 73, 0, 1, 1, 'Live'),
(123, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 123, 74, 0, 10, 1, 'Live'),
(124, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 95, 69, 0, 10, 1, 'Live'),
(125, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 96, 69, 0, 10, 1, 'Live'),
(126, 29, 'Mongolian Beef (013)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 126, 75, 0, 10, 1, 'Live'),
(127, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 127, 76, 0, 10, 1, 'Live'),
(128, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 128, 77, 0, 10, 1, 'Live'),
(129, 26, 'Pepsi 250ml (010)', 1, 1, 150.00, 150.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 129, 78, 0, 1, 1, 'Live'),
(130, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 130, 79, 0, 1, 1, 'Live'),
(131, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 131, 79, 0, 1, 1, 'Live'),
(132, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 132, 80, 0, 1, 1, 'Live'),
(133, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 133, 81, 0, 1, 1, 'Live'),
(134, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 134, 81, 0, 1, 1, 'Live'),
(135, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135, 82, 0, 1, 1, 'Live'),
(136, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 136, 83, 0, 1, 1, 'Live'),
(137, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 137, 84, 0, 1, 1, 'Live'),
(138, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 138, 85, 0, 1, 1, 'Live'),
(139, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 139, 86, 0, 1, 1, 'Live'),
(140, 21, 'Kimchi Pasta (05)', 3, 3, 900.00, 900.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 140, 87, 0, 10, 1, 'Live'),
(141, 25, 'Better Chocolate Chip Cookies (09)', 2, 2, 660.00, 660.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 141, 87, 0, 10, 1, 'Live'),
(142, 43, 'Chicken Chow Mein (027)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 142, 87, 0, 10, 1, 'Live'),
(143, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 143, 88, 0, 1, 1, 'Live'),
(144, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 144, 88, 0, 1, 1, 'Live'),
(145, 37, 'Fish And Chips (021)', 1, 1, 250.00, 250.00, 250.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 145, 88, 0, 1, 1, 'Live'),
(146, 32, 'Beet And Onion Pickle Recipe (016)', 1, 1, 250.00, 250.00, 250.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"6.25\",\"item_vat_amount_for_all_quantity\":\"6.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 146, 89, 0, 10, 1, 'Live'),
(147, 26, 'Pepsi 250ml (010)', 1, 1, 150.00, 150.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 147, 89, 0, 10, 1, 'Live'),
(148, 35, 'Tuna Sashimi Pizza (019)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, 89, 0, 10, 1, 'Live'),
(149, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:48', 149, 90, 0, 10, 1, 'Live'),
(150, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:48', 150, 90, 0, 10, 1, 'Live'),
(151, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 151, 90, 0, 10, 1, 'Live'),
(152, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 152, 90, 0, 10, 1, 'Live'),
(153, 20, 'Orange Chicken (04)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:49', 153, 90, 0, 10, 1, 'Live'),
(154, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:49', 154, 90, 0, 10, 1, 'Live'),
(155, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:42', 155, 91, 0, 10, 1, 'Live');
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `tmp_qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(156, 22, 'Massaman Beef Curry (06)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:42', 156, 91, 0, 10, 1, 'Live'),
(157, 31, 'Coca cola 400ml (015)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 157, 91, 0, 10, 1, 'Live'),
(158, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 158, 91, 0, 10, 1, 'Live'),
(159, 20, 'Orange Chicken (04)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:42', 159, 91, 0, 10, 1, 'Live'),
(160, 25, 'Better Chocolate Chip Cookies (09)', 1, 1, 330.00, 330.00, 330.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"8.25\",\"item_vat_amount_for_all_quantity\":\"8.25\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:42', 160, 91, 0, 10, 1, 'Live'),
(161, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2020-09-28 23:23:39', 161, 92, 0, 10, 1, 'Live'),
(162, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 162, 92, 0, 10, 1, 'Live'),
(163, 21, 'Kimchi Pasta (05)', 1, 1, 300.00, 300.00, 300.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"7.50\",\"item_vat_amount_for_all_quantity\":\"7.50\"}]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 163, 93, 0, 10, 1, 'Live'),
(164, 46, 'JhalFry (02)', 1, 1, 200.00, 200.00, 200.00, 0.00, '[{\"tax_field_id\":\"10\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\",\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"},{\"tax_field_id\":\"9\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"8\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"},{\"tax_field_id\":\"7\",\"tax_field_outlet_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"2.5\",\"item_vat_amount_for_unit_item\":\"5.00\",\"item_vat_amount_for_all_quantity\":\"5.00\"}]', '0', 'plain', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 164, 93, 0, 10, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details_modifiers`
--

CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint(20) NOT NULL,
  `modifier_id` int(11) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sales_details_modifiers`
--

INSERT INTO `tbl_sales_details_modifiers` (`id`, `modifier_id`, `modifier_price`, `food_menu_id`, `sales_id`, `order_status`, `sales_details_id`, `user_id`, `outlet_id`, `customer_id`) VALUES
(2, 8, 3.00, 21, 60, 0, 81, 1, 1, 1),
(3, 7, 3.70, 21, 60, 0, 81, 1, 1, 1),
(4, 8, 3.00, 21, 61, 0, 82, 1, 1, 1),
(5, 7, 3.70, 21, 61, 0, 82, 1, 1, 1),
(6, 8, 3.00, 45, 59, 0, 112, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details_tags`
--

CREATE TABLE `tbl_sales_details_tags` (
  `id` bigint(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_item_id` int(11) NOT NULL,
  `tag_price` float(10,2) NOT NULL,
  `food_menu_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sales_details_tags`
--

INSERT INTO `tbl_sales_details_tags` (`id`, `tag_id`, `tag_item_id`, `tag_price`, `food_menu_id`, `sales_id`, `order_status`, `sales_details_id`, `user_id`, `outlet_id`, `customer_id`) VALUES
(1, 1, 4, 40.00, 21, 60, 0, 81, 1, 1, 1),
(2, 2, 6, 2.00, 21, 60, 0, 81, 1, 1, 1),
(3, 2, 7, 4.00, 21, 60, 0, 81, 1, 1, 1),
(4, 1, 3, 30.00, 21, 61, 0, 82, 1, 1, 1),
(5, 2, 7, 4.00, 21, 61, 0, 82, 1, 1, 1),
(6, 2, 8, 6.00, 21, 61, 0, 82, 1, 1, 1),
(7, 2, 9, 8.00, 21, 61, 0, 82, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions`
--

CREATE TABLE `tbl_sale_consumptions` (
  `id` bigint(20) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions`
--

INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 0, 1, 1, 'Live'),
(2, 2, 0, 1, 1, 'Live'),
(4, 4, 0, 1, 1, 'Live'),
(6, 5, 0, 1, 1, 'Live'),
(8, 7, 0, 1, 1, 'Live'),
(9, 6, 0, 1, 1, 'Live'),
(10, 8, 0, 1, 1, 'Live'),
(11, 9, 0, 1, 1, 'Live'),
(12, 10, 0, 1, 1, 'Live'),
(13, 11, 0, 1, 1, 'Live'),
(14, 12, 0, 1, 1, 'Live'),
(15, 13, 0, 1, 1, 'Live'),
(16, 14, 0, 1, 1, 'Live'),
(17, 15, 0, 1, 1, 'Live'),
(18, 16, 0, 1, 1, 'Live'),
(19, 17, 0, 1, 1, 'Live'),
(50, 44, 0, 1, 1, 'Live'),
(53, 47, 0, 1, 1, 'Live'),
(56, 50, 0, 1, 1, 'Live'),
(57, 51, 0, 1, 1, 'Live'),
(58, 52, 0, 1, 1, 'Live'),
(59, 53, 0, 1, 1, 'Live'),
(60, 54, 0, 1, 1, 'Live'),
(62, 56, 0, 1, 1, 'Live'),
(64, 55, 0, 1, 1, 'Live'),
(65, 57, 0, 1, 1, 'Live'),
(66, 58, 0, 1, 1, 'Live'),
(68, 60, 0, 1, 1, 'Live'),
(69, 61, 0, 1, 1, 'Live'),
(70, 62, 0, 1, 1, 'Live'),
(71, 63, 0, 10, 1, 'Live'),
(72, 64, 0, 10, 1, 'Live'),
(73, 65, 0, 10, 1, 'Live'),
(74, 66, 0, 10, 1, 'Live'),
(76, 68, 0, 10, 1, 'Live'),
(78, 70, 0, 10, 1, 'Live'),
(79, 71, 0, 10, 1, 'Live'),
(81, 72, 0, 10, 1, 'Live'),
(82, 59, 0, 10, 1, 'Live'),
(83, 67, 0, 10, 1, 'Live'),
(84, 73, 0, 1, 1, 'Live'),
(85, 74, 0, 10, 1, 'Live'),
(86, 69, 0, 10, 1, 'Live'),
(87, 75, 0, 10, 1, 'Live'),
(88, 76, 0, 10, 1, 'Live'),
(89, 77, 0, 10, 1, 'Live'),
(90, 78, 0, 1, 1, 'Live'),
(91, 79, 0, 1, 1, 'Live'),
(92, 80, 0, 1, 1, 'Live'),
(93, 81, 0, 1, 1, 'Live'),
(94, 82, 0, 1, 1, 'Live'),
(95, 83, 0, 1, 1, 'Live'),
(96, 84, 0, 1, 1, 'Live'),
(97, 85, 0, 1, 1, 'Live'),
(98, 86, 0, 1, 1, 'Live'),
(99, 87, 0, 10, 1, 'Live'),
(100, 88, 0, 1, 1, 'Live'),
(101, 89, 0, 10, 1, 'Live'),
(102, 90, 0, 10, 1, 'Live'),
(103, 91, 0, 10, 1, 'Live'),
(104, 92, 0, 10, 1, 'Live'),
(105, 93, 0, 10, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` bigint(20) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(11) DEFAULT NULL,
  `sales_id` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions_of_menus`
--

INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 16, 300.00, 1, 1, 0, 21, 1, 1, 'Live'),
(2, 38, 85.00, 1, 1, 0, 21, 1, 1, 'Live'),
(3, 20, 12.00, 1, 1, 0, 21, 1, 1, 'Live'),
(4, 25, 6.00, 1, 1, 0, 21, 1, 1, 'Live'),
(5, 22, 22.00, 1, 1, 0, 21, 1, 1, 'Live'),
(6, 30, 6.00, 1, 1, 0, 21, 1, 1, 'Live'),
(7, 15, 5.00, 1, 1, 0, 21, 1, 1, 'Live'),
(8, 13, 12.00, 1, 1, 0, 21, 1, 1, 'Live'),
(9, 14, 140.00, 1, 1, 0, 21, 1, 1, 'Live'),
(10, 38, 20.00, 1, 1, 0, 22, 1, 1, 'Live'),
(11, 42, 6.00, 1, 1, 0, 22, 1, 1, 'Live'),
(12, 21, 450.00, 1, 1, 0, 22, 1, 1, 'Live'),
(13, 14, 100.00, 1, 1, 0, 22, 1, 1, 'Live'),
(14, 44, 6.00, 1, 1, 0, 22, 1, 1, 'Live'),
(15, 13, 100.00, 1, 1, 0, 22, 1, 1, 'Live'),
(16, 43, 12.00, 1, 1, 0, 22, 1, 1, 'Live'),
(17, 15, 50.00, 1, 1, 0, 22, 1, 1, 'Live'),
(18, 41, 6.00, 1, 1, 0, 22, 1, 1, 'Live'),
(19, 40, 35.00, 1, 1, 0, 22, 1, 1, 'Live'),
(20, 39, 76.00, 1, 1, 0, 22, 1, 1, 'Live'),
(21, 25, 12.00, 1, 1, 0, 22, 1, 1, 'Live'),
(22, 61, 22.00, 1, 1, 0, 25, 1, 1, 'Live'),
(23, 13, 50.00, 1, 1, 0, 25, 1, 1, 'Live'),
(24, 54, 21.00, 1, 1, 0, 25, 1, 1, 'Live'),
(25, 62, 100.00, 1, 1, 0, 25, 1, 1, 'Live'),
(26, 25, 12.00, 1, 1, 0, 25, 1, 1, 'Live'),
(27, 48, 23.00, 1, 1, 0, 25, 1, 1, 'Live'),
(28, 44, 24.00, 1, 1, 0, 25, 1, 1, 'Live'),
(29, 30, 11.00, 1, 1, 0, 25, 1, 1, 'Live'),
(30, 15, 34.00, 1, 1, 0, 25, 1, 1, 'Live'),
(31, 21, 200.00, 1, 1, 0, 25, 1, 1, 'Live'),
(32, 64, 2.00, 1, 1, 0, 25, 1, 1, 'Live'),
(33, 85, 6.00, 1, 1, 0, 30, 1, 1, 'Live'),
(34, 88, 4.00, 1, 1, 0, 30, 1, 1, 'Live'),
(35, 86, 12.00, 1, 1, 0, 30, 1, 1, 'Live'),
(36, 89, 1.00, 1, 1, 0, 30, 1, 1, 'Live'),
(37, 87, 40.00, 1, 1, 0, 30, 1, 1, 'Live'),
(38, 16, 225.00, 2, 2, 0, 31, 1, 1, 'Live'),
(39, 22, 23.00, 2, 2, 0, 31, 1, 1, 'Live'),
(40, 15, 5.00, 2, 2, 0, 31, 1, 1, 'Live'),
(41, 90, 22.00, 2, 2, 0, 31, 1, 1, 'Live'),
(42, 13, 19.00, 2, 2, 0, 31, 1, 1, 'Live'),
(43, 20, 11.00, 2, 2, 0, 31, 1, 1, 'Live'),
(44, 48, 75.00, 2, 2, 0, 31, 1, 1, 'Live'),
(45, 91, 6.00, 2, 2, 0, 31, 1, 1, 'Live'),
(46, 16, 300.00, 2, 2, 0, 21, 1, 1, 'Live'),
(47, 38, 85.00, 2, 2, 0, 21, 1, 1, 'Live'),
(48, 20, 12.00, 2, 2, 0, 21, 1, 1, 'Live'),
(49, 25, 6.00, 2, 2, 0, 21, 1, 1, 'Live'),
(50, 22, 22.00, 2, 2, 0, 21, 1, 1, 'Live'),
(51, 30, 6.00, 2, 2, 0, 21, 1, 1, 'Live'),
(52, 15, 5.00, 2, 2, 0, 21, 1, 1, 'Live'),
(53, 13, 12.00, 2, 2, 0, 21, 1, 1, 'Live'),
(54, 14, 140.00, 2, 2, 0, 21, 1, 1, 'Live'),
(55, 61, 22.00, 2, 2, 0, 25, 1, 1, 'Live'),
(56, 13, 50.00, 2, 2, 0, 25, 1, 1, 'Live'),
(57, 54, 21.00, 2, 2, 0, 25, 1, 1, 'Live'),
(58, 62, 100.00, 2, 2, 0, 25, 1, 1, 'Live'),
(59, 25, 12.00, 2, 2, 0, 25, 1, 1, 'Live'),
(60, 48, 23.00, 2, 2, 0, 25, 1, 1, 'Live'),
(61, 44, 24.00, 2, 2, 0, 25, 1, 1, 'Live'),
(62, 30, 11.00, 2, 2, 0, 25, 1, 1, 'Live'),
(63, 15, 34.00, 2, 2, 0, 25, 1, 1, 'Live'),
(64, 21, 200.00, 2, 2, 0, 25, 1, 1, 'Live'),
(65, 64, 2.00, 2, 2, 0, 25, 1, 1, 'Live'),
(98, 137, 12.00, 4, 4, 0, 43, 1, 1, 'Live'),
(99, 123, 400.00, 4, 4, 0, 43, 1, 1, 'Live'),
(100, 16, 0.20, 4, 4, 0, 43, 1, 1, 'Live'),
(101, 15, 23.00, 4, 4, 0, 43, 1, 1, 'Live'),
(102, 48, 50.00, 4, 4, 0, 43, 1, 1, 'Live'),
(103, 64, 2.00, 4, 4, 0, 43, 1, 1, 'Live'),
(104, 42, 11.00, 4, 4, 0, 43, 1, 1, 'Live'),
(105, 30, 6.00, 4, 4, 0, 43, 1, 1, 'Live'),
(106, 61, 11.00, 4, 4, 0, 43, 1, 1, 'Live'),
(107, 13, 50.00, 4, 4, 0, 43, 1, 1, 'Live'),
(108, 83, 11.00, 4, 4, 0, 43, 1, 1, 'Live'),
(109, 138, 10.00, 4, 4, 0, 43, 1, 1, 'Live'),
(110, 85, 6.00, 4, 4, 0, 30, 1, 1, 'Live'),
(111, 88, 4.00, 4, 4, 0, 30, 1, 1, 'Live'),
(112, 86, 12.00, 4, 4, 0, 30, 1, 1, 'Live'),
(113, 89, 1.00, 4, 4, 0, 30, 1, 1, 'Live'),
(114, 87, 40.00, 4, 4, 0, 30, 1, 1, 'Live'),
(115, 85, 48.00, 4, 4, 0, 30, 1, 1, 'Live'),
(116, 88, 32.00, 4, 4, 0, 30, 1, 1, 'Live'),
(117, 86, 96.00, 4, 4, 0, 30, 1, 1, 'Live'),
(118, 89, 8.00, 4, 4, 0, 30, 1, 1, 'Live'),
(119, 87, 320.00, 4, 4, 0, 30, 1, 1, 'Live'),
(140, 16, 300.00, 6, 5, 0, 21, 1, 1, 'Live'),
(141, 38, 85.00, 6, 5, 0, 21, 1, 1, 'Live'),
(142, 20, 12.00, 6, 5, 0, 21, 1, 1, 'Live'),
(143, 25, 6.00, 6, 5, 0, 21, 1, 1, 'Live'),
(144, 22, 22.00, 6, 5, 0, 21, 1, 1, 'Live'),
(145, 30, 6.00, 6, 5, 0, 21, 1, 1, 'Live'),
(146, 15, 5.00, 6, 5, 0, 21, 1, 1, 'Live'),
(147, 13, 12.00, 6, 5, 0, 21, 1, 1, 'Live'),
(148, 14, 140.00, 6, 5, 0, 21, 1, 1, 'Live'),
(149, 61, 22.00, 6, 5, 0, 25, 1, 1, 'Live'),
(150, 13, 50.00, 6, 5, 0, 25, 1, 1, 'Live'),
(151, 54, 21.00, 6, 5, 0, 25, 1, 1, 'Live'),
(152, 62, 100.00, 6, 5, 0, 25, 1, 1, 'Live'),
(153, 25, 12.00, 6, 5, 0, 25, 1, 1, 'Live'),
(154, 48, 23.00, 6, 5, 0, 25, 1, 1, 'Live'),
(155, 44, 24.00, 6, 5, 0, 25, 1, 1, 'Live'),
(156, 30, 11.00, 6, 5, 0, 25, 1, 1, 'Live'),
(157, 15, 34.00, 6, 5, 0, 25, 1, 1, 'Live'),
(158, 21, 200.00, 6, 5, 0, 25, 1, 1, 'Live'),
(159, 64, 2.00, 6, 5, 0, 25, 1, 1, 'Live'),
(185, 20, 100.00, 8, 7, 0, 41, 1, 1, 'Live'),
(186, 123, 500.00, 8, 7, 0, 41, 1, 1, 'Live'),
(187, 128, 250.00, 8, 7, 0, 41, 1, 1, 'Live'),
(188, 129, 50.00, 8, 7, 0, 41, 1, 1, 'Live'),
(189, 130, 12.00, 8, 7, 0, 41, 1, 1, 'Live'),
(190, 61, 15.00, 8, 7, 0, 41, 1, 1, 'Live'),
(191, 132, 10.00, 8, 7, 0, 41, 1, 1, 'Live'),
(192, 131, 4.00, 8, 7, 0, 41, 1, 1, 'Live'),
(193, 23, 3.00, 8, 7, 0, 19, 1, 1, 'Live'),
(194, 27, 40.00, 8, 7, 0, 19, 1, 1, 'Live'),
(195, 21, 185.00, 8, 7, 0, 19, 1, 1, 'Live'),
(196, 26, 325.00, 8, 7, 0, 19, 1, 1, 'Live'),
(197, 20, 1.00, 8, 7, 0, 19, 1, 1, 'Live'),
(198, 22, 22.00, 8, 7, 0, 19, 1, 1, 'Live'),
(199, 24, 100.00, 8, 7, 0, 19, 1, 1, 'Live'),
(200, 13, 0.05, 8, 7, 0, 19, 1, 1, 'Live'),
(201, 25, 40.00, 8, 7, 0, 19, 1, 1, 'Live'),
(202, 15, 20.00, 8, 7, 0, 19, 1, 1, 'Live'),
(203, 14, 20.00, 8, 7, 0, 19, 1, 1, 'Live'),
(204, 16, 300.00, 9, 6, 0, 21, 1, 1, 'Live'),
(205, 38, 85.00, 9, 6, 0, 21, 1, 1, 'Live'),
(206, 20, 12.00, 9, 6, 0, 21, 1, 1, 'Live'),
(207, 25, 6.00, 9, 6, 0, 21, 1, 1, 'Live'),
(208, 22, 22.00, 9, 6, 0, 21, 1, 1, 'Live'),
(209, 30, 6.00, 9, 6, 0, 21, 1, 1, 'Live'),
(210, 15, 5.00, 9, 6, 0, 21, 1, 1, 'Live'),
(211, 13, 12.00, 9, 6, 0, 21, 1, 1, 'Live'),
(212, 14, 140.00, 9, 6, 0, 21, 1, 1, 'Live'),
(213, 61, 22.00, 9, 6, 0, 25, 1, 1, 'Live'),
(214, 13, 50.00, 9, 6, 0, 25, 1, 1, 'Live'),
(215, 54, 21.00, 9, 6, 0, 25, 1, 1, 'Live'),
(216, 62, 100.00, 9, 6, 0, 25, 1, 1, 'Live'),
(217, 25, 12.00, 9, 6, 0, 25, 1, 1, 'Live'),
(218, 48, 23.00, 9, 6, 0, 25, 1, 1, 'Live'),
(219, 44, 24.00, 9, 6, 0, 25, 1, 1, 'Live'),
(220, 30, 11.00, 9, 6, 0, 25, 1, 1, 'Live'),
(221, 15, 34.00, 9, 6, 0, 25, 1, 1, 'Live'),
(222, 21, 200.00, 9, 6, 0, 25, 1, 1, 'Live'),
(223, 64, 2.00, 9, 6, 0, 25, 1, 1, 'Live'),
(224, 85, 6.00, 9, 6, 0, 30, 1, 1, 'Live'),
(225, 88, 4.00, 9, 6, 0, 30, 1, 1, 'Live'),
(226, 86, 12.00, 9, 6, 0, 30, 1, 1, 'Live'),
(227, 89, 1.00, 9, 6, 0, 30, 1, 1, 'Live'),
(228, 87, 40.00, 9, 6, 0, 30, 1, 1, 'Live'),
(229, 16, 225.00, 9, 6, 0, 31, 1, 1, 'Live'),
(230, 22, 23.00, 9, 6, 0, 31, 1, 1, 'Live'),
(231, 15, 5.00, 9, 6, 0, 31, 1, 1, 'Live'),
(232, 90, 22.00, 9, 6, 0, 31, 1, 1, 'Live'),
(233, 13, 19.00, 9, 6, 0, 31, 1, 1, 'Live'),
(234, 20, 11.00, 9, 6, 0, 31, 1, 1, 'Live'),
(235, 48, 75.00, 9, 6, 0, 31, 1, 1, 'Live'),
(236, 91, 6.00, 9, 6, 0, 31, 1, 1, 'Live'),
(237, 61, 22.00, 10, 8, 0, 25, 1, 1, 'Live'),
(238, 13, 50.00, 10, 8, 0, 25, 1, 1, 'Live'),
(239, 54, 21.00, 10, 8, 0, 25, 1, 1, 'Live'),
(240, 62, 100.00, 10, 8, 0, 25, 1, 1, 'Live'),
(241, 25, 12.00, 10, 8, 0, 25, 1, 1, 'Live'),
(242, 48, 23.00, 10, 8, 0, 25, 1, 1, 'Live'),
(243, 44, 24.00, 10, 8, 0, 25, 1, 1, 'Live'),
(244, 30, 11.00, 10, 8, 0, 25, 1, 1, 'Live'),
(245, 15, 34.00, 10, 8, 0, 25, 1, 1, 'Live'),
(246, 21, 200.00, 10, 8, 0, 25, 1, 1, 'Live'),
(247, 64, 2.00, 10, 8, 0, 25, 1, 1, 'Live'),
(248, 16, 300.00, 10, 8, 0, 21, 1, 1, 'Live'),
(249, 38, 85.00, 10, 8, 0, 21, 1, 1, 'Live'),
(250, 20, 12.00, 10, 8, 0, 21, 1, 1, 'Live'),
(251, 25, 6.00, 10, 8, 0, 21, 1, 1, 'Live'),
(252, 22, 22.00, 10, 8, 0, 21, 1, 1, 'Live'),
(253, 30, 6.00, 10, 8, 0, 21, 1, 1, 'Live'),
(254, 15, 5.00, 10, 8, 0, 21, 1, 1, 'Live'),
(255, 13, 12.00, 10, 8, 0, 21, 1, 1, 'Live'),
(256, 14, 140.00, 10, 8, 0, 21, 1, 1, 'Live'),
(257, 85, 6.00, 10, 8, 0, 30, 1, 1, 'Live'),
(258, 88, 4.00, 10, 8, 0, 30, 1, 1, 'Live'),
(259, 86, 12.00, 10, 8, 0, 30, 1, 1, 'Live'),
(260, 89, 1.00, 10, 8, 0, 30, 1, 1, 'Live'),
(261, 87, 40.00, 10, 8, 0, 30, 1, 1, 'Live'),
(262, 38, 20.00, 11, 9, 0, 22, 1, 1, 'Live'),
(263, 42, 6.00, 11, 9, 0, 22, 1, 1, 'Live'),
(264, 21, 450.00, 11, 9, 0, 22, 1, 1, 'Live'),
(265, 14, 100.00, 11, 9, 0, 22, 1, 1, 'Live'),
(266, 44, 6.00, 11, 9, 0, 22, 1, 1, 'Live'),
(267, 13, 100.00, 11, 9, 0, 22, 1, 1, 'Live'),
(268, 43, 12.00, 11, 9, 0, 22, 1, 1, 'Live'),
(269, 15, 50.00, 11, 9, 0, 22, 1, 1, 'Live'),
(270, 41, 6.00, 11, 9, 0, 22, 1, 1, 'Live'),
(271, 40, 35.00, 11, 9, 0, 22, 1, 1, 'Live'),
(272, 39, 76.00, 11, 9, 0, 22, 1, 1, 'Live'),
(273, 25, 12.00, 11, 9, 0, 22, 1, 1, 'Live'),
(274, 137, 12.00, 11, 9, 0, 43, 1, 1, 'Live'),
(275, 123, 400.00, 11, 9, 0, 43, 1, 1, 'Live'),
(276, 16, 0.20, 11, 9, 0, 43, 1, 1, 'Live'),
(277, 15, 23.00, 11, 9, 0, 43, 1, 1, 'Live'),
(278, 48, 50.00, 11, 9, 0, 43, 1, 1, 'Live'),
(279, 64, 2.00, 11, 9, 0, 43, 1, 1, 'Live'),
(280, 42, 11.00, 11, 9, 0, 43, 1, 1, 'Live'),
(281, 30, 6.00, 11, 9, 0, 43, 1, 1, 'Live'),
(282, 61, 11.00, 11, 9, 0, 43, 1, 1, 'Live'),
(283, 13, 50.00, 11, 9, 0, 43, 1, 1, 'Live'),
(284, 83, 11.00, 11, 9, 0, 43, 1, 1, 'Live'),
(285, 138, 10.00, 11, 9, 0, 43, 1, 1, 'Live'),
(286, 16, 225.00, 12, 10, 0, 31, 1, 1, 'Live'),
(287, 22, 23.00, 12, 10, 0, 31, 1, 1, 'Live'),
(288, 15, 5.00, 12, 10, 0, 31, 1, 1, 'Live'),
(289, 90, 22.00, 12, 10, 0, 31, 1, 1, 'Live'),
(290, 13, 19.00, 12, 10, 0, 31, 1, 1, 'Live'),
(291, 20, 11.00, 12, 10, 0, 31, 1, 1, 'Live'),
(292, 48, 75.00, 12, 10, 0, 31, 1, 1, 'Live'),
(293, 91, 6.00, 12, 10, 0, 31, 1, 1, 'Live'),
(294, 137, 12.00, 12, 10, 0, 43, 1, 1, 'Live'),
(295, 123, 400.00, 12, 10, 0, 43, 1, 1, 'Live'),
(296, 16, 0.20, 12, 10, 0, 43, 1, 1, 'Live'),
(297, 15, 23.00, 12, 10, 0, 43, 1, 1, 'Live'),
(298, 48, 50.00, 12, 10, 0, 43, 1, 1, 'Live'),
(299, 64, 2.00, 12, 10, 0, 43, 1, 1, 'Live'),
(300, 42, 11.00, 12, 10, 0, 43, 1, 1, 'Live'),
(301, 30, 6.00, 12, 10, 0, 43, 1, 1, 'Live'),
(302, 61, 11.00, 12, 10, 0, 43, 1, 1, 'Live'),
(303, 13, 50.00, 12, 10, 0, 43, 1, 1, 'Live'),
(304, 83, 11.00, 12, 10, 0, 43, 1, 1, 'Live'),
(305, 138, 10.00, 12, 10, 0, 43, 1, 1, 'Live'),
(306, 137, 12.00, 13, 11, 0, 43, 1, 1, 'Live'),
(307, 123, 400.00, 13, 11, 0, 43, 1, 1, 'Live'),
(308, 16, 0.20, 13, 11, 0, 43, 1, 1, 'Live'),
(309, 15, 23.00, 13, 11, 0, 43, 1, 1, 'Live'),
(310, 48, 50.00, 13, 11, 0, 43, 1, 1, 'Live'),
(311, 64, 2.00, 13, 11, 0, 43, 1, 1, 'Live'),
(312, 42, 11.00, 13, 11, 0, 43, 1, 1, 'Live'),
(313, 30, 6.00, 13, 11, 0, 43, 1, 1, 'Live'),
(314, 61, 11.00, 13, 11, 0, 43, 1, 1, 'Live'),
(315, 13, 50.00, 13, 11, 0, 43, 1, 1, 'Live'),
(316, 83, 11.00, 13, 11, 0, 43, 1, 1, 'Live'),
(317, 138, 10.00, 13, 11, 0, 43, 1, 1, 'Live'),
(318, 37, 200.00, 13, 11, 0, 20, 1, 1, 'Live'),
(319, 23, 2.00, 13, 11, 0, 20, 1, 1, 'Live'),
(320, 36, 100.00, 13, 11, 0, 20, 1, 1, 'Live'),
(321, 34, 300.00, 13, 11, 0, 20, 1, 1, 'Live'),
(322, 31, 6.00, 13, 11, 0, 20, 1, 1, 'Live'),
(323, 32, 72.00, 13, 11, 0, 20, 1, 1, 'Live'),
(324, 30, 5.00, 13, 11, 0, 20, 1, 1, 'Live'),
(325, 29, 20.00, 13, 11, 0, 20, 1, 1, 'Live'),
(326, 13, 50.00, 13, 11, 0, 20, 1, 1, 'Live'),
(327, 35, 8.00, 13, 11, 0, 20, 1, 1, 'Live'),
(328, 33, 5.00, 13, 11, 0, 20, 1, 1, 'Live'),
(329, 20, 12.00, 13, 11, 0, 20, 1, 1, 'Live'),
(330, 16, 225.00, 14, 12, 0, 31, 1, 1, 'Live'),
(331, 22, 23.00, 14, 12, 0, 31, 1, 1, 'Live'),
(332, 15, 5.00, 14, 12, 0, 31, 1, 1, 'Live'),
(333, 90, 22.00, 14, 12, 0, 31, 1, 1, 'Live'),
(334, 13, 19.00, 14, 12, 0, 31, 1, 1, 'Live'),
(335, 20, 11.00, 14, 12, 0, 31, 1, 1, 'Live'),
(336, 48, 75.00, 14, 12, 0, 31, 1, 1, 'Live'),
(337, 91, 6.00, 14, 12, 0, 31, 1, 1, 'Live'),
(338, 38, 20.00, 14, 12, 0, 22, 1, 1, 'Live'),
(339, 42, 6.00, 14, 12, 0, 22, 1, 1, 'Live'),
(340, 21, 450.00, 14, 12, 0, 22, 1, 1, 'Live'),
(341, 14, 100.00, 14, 12, 0, 22, 1, 1, 'Live'),
(342, 44, 6.00, 14, 12, 0, 22, 1, 1, 'Live'),
(343, 13, 100.00, 14, 12, 0, 22, 1, 1, 'Live'),
(344, 43, 12.00, 14, 12, 0, 22, 1, 1, 'Live'),
(345, 15, 50.00, 14, 12, 0, 22, 1, 1, 'Live'),
(346, 41, 6.00, 14, 12, 0, 22, 1, 1, 'Live'),
(347, 40, 35.00, 14, 12, 0, 22, 1, 1, 'Live'),
(348, 39, 76.00, 14, 12, 0, 22, 1, 1, 'Live'),
(349, 25, 12.00, 14, 12, 0, 22, 1, 1, 'Live'),
(350, 16, 300.00, 15, 13, 0, 21, 1, 1, 'Live'),
(351, 38, 85.00, 15, 13, 0, 21, 1, 1, 'Live'),
(352, 20, 12.00, 15, 13, 0, 21, 1, 1, 'Live'),
(353, 25, 6.00, 15, 13, 0, 21, 1, 1, 'Live'),
(354, 22, 22.00, 15, 13, 0, 21, 1, 1, 'Live'),
(355, 30, 6.00, 15, 13, 0, 21, 1, 1, 'Live'),
(356, 15, 5.00, 15, 13, 0, 21, 1, 1, 'Live'),
(357, 13, 12.00, 15, 13, 0, 21, 1, 1, 'Live'),
(358, 14, 140.00, 15, 13, 0, 21, 1, 1, 'Live'),
(359, 85, 6.00, 15, 13, 0, 30, 1, 1, 'Live'),
(360, 88, 4.00, 15, 13, 0, 30, 1, 1, 'Live'),
(361, 86, 12.00, 15, 13, 0, 30, 1, 1, 'Live'),
(362, 89, 1.00, 15, 13, 0, 30, 1, 1, 'Live'),
(363, 87, 40.00, 15, 13, 0, 30, 1, 1, 'Live'),
(364, 20, 100.00, 16, 14, 0, 41, 1, 1, 'Live'),
(365, 123, 500.00, 16, 14, 0, 41, 1, 1, 'Live'),
(366, 128, 250.00, 16, 14, 0, 41, 1, 1, 'Live'),
(367, 129, 50.00, 16, 14, 0, 41, 1, 1, 'Live'),
(368, 130, 12.00, 16, 14, 0, 41, 1, 1, 'Live'),
(369, 61, 15.00, 16, 14, 0, 41, 1, 1, 'Live'),
(370, 132, 10.00, 16, 14, 0, 41, 1, 1, 'Live'),
(371, 131, 4.00, 16, 14, 0, 41, 1, 1, 'Live'),
(372, 37, 200.00, 16, 14, 0, 20, 1, 1, 'Live'),
(373, 23, 2.00, 16, 14, 0, 20, 1, 1, 'Live'),
(374, 36, 100.00, 16, 14, 0, 20, 1, 1, 'Live'),
(375, 34, 300.00, 16, 14, 0, 20, 1, 1, 'Live'),
(376, 31, 6.00, 16, 14, 0, 20, 1, 1, 'Live'),
(377, 32, 72.00, 16, 14, 0, 20, 1, 1, 'Live'),
(378, 30, 5.00, 16, 14, 0, 20, 1, 1, 'Live'),
(379, 29, 20.00, 16, 14, 0, 20, 1, 1, 'Live'),
(380, 13, 50.00, 16, 14, 0, 20, 1, 1, 'Live'),
(381, 35, 8.00, 16, 14, 0, 20, 1, 1, 'Live'),
(382, 33, 5.00, 16, 14, 0, 20, 1, 1, 'Live'),
(383, 20, 12.00, 16, 14, 0, 20, 1, 1, 'Live'),
(384, 16, 300.00, 16, 14, 0, 21, 1, 1, 'Live'),
(385, 38, 85.00, 16, 14, 0, 21, 1, 1, 'Live'),
(386, 20, 12.00, 16, 14, 0, 21, 1, 1, 'Live'),
(387, 25, 6.00, 16, 14, 0, 21, 1, 1, 'Live'),
(388, 22, 22.00, 16, 14, 0, 21, 1, 1, 'Live'),
(389, 30, 6.00, 16, 14, 0, 21, 1, 1, 'Live'),
(390, 15, 5.00, 16, 14, 0, 21, 1, 1, 'Live'),
(391, 13, 12.00, 16, 14, 0, 21, 1, 1, 'Live'),
(392, 14, 140.00, 16, 14, 0, 21, 1, 1, 'Live'),
(393, 85, 6.00, 16, 14, 0, 30, 1, 1, 'Live'),
(394, 88, 4.00, 16, 14, 0, 30, 1, 1, 'Live'),
(395, 86, 12.00, 16, 14, 0, 30, 1, 1, 'Live'),
(396, 89, 1.00, 16, 14, 0, 30, 1, 1, 'Live'),
(397, 87, 40.00, 16, 14, 0, 30, 1, 1, 'Live'),
(398, 61, 22.00, 17, 15, 0, 25, 1, 1, 'Live'),
(399, 13, 50.00, 17, 15, 0, 25, 1, 1, 'Live'),
(400, 54, 21.00, 17, 15, 0, 25, 1, 1, 'Live'),
(401, 62, 100.00, 17, 15, 0, 25, 1, 1, 'Live'),
(402, 25, 12.00, 17, 15, 0, 25, 1, 1, 'Live'),
(403, 48, 23.00, 17, 15, 0, 25, 1, 1, 'Live'),
(404, 44, 24.00, 17, 15, 0, 25, 1, 1, 'Live'),
(405, 30, 11.00, 17, 15, 0, 25, 1, 1, 'Live'),
(406, 15, 34.00, 17, 15, 0, 25, 1, 1, 'Live'),
(407, 21, 200.00, 17, 15, 0, 25, 1, 1, 'Live'),
(408, 64, 2.00, 17, 15, 0, 25, 1, 1, 'Live'),
(409, 16, 300.00, 17, 15, 0, 21, 1, 1, 'Live'),
(410, 38, 85.00, 17, 15, 0, 21, 1, 1, 'Live'),
(411, 20, 12.00, 17, 15, 0, 21, 1, 1, 'Live'),
(412, 25, 6.00, 17, 15, 0, 21, 1, 1, 'Live'),
(413, 22, 22.00, 17, 15, 0, 21, 1, 1, 'Live'),
(414, 30, 6.00, 17, 15, 0, 21, 1, 1, 'Live'),
(415, 15, 5.00, 17, 15, 0, 21, 1, 1, 'Live'),
(416, 13, 12.00, 17, 15, 0, 21, 1, 1, 'Live'),
(417, 14, 140.00, 17, 15, 0, 21, 1, 1, 'Live'),
(418, 16, 225.00, 18, 16, 0, 31, 1, 1, 'Live'),
(419, 22, 23.00, 18, 16, 0, 31, 1, 1, 'Live'),
(420, 15, 5.00, 18, 16, 0, 31, 1, 1, 'Live'),
(421, 90, 22.00, 18, 16, 0, 31, 1, 1, 'Live'),
(422, 13, 19.00, 18, 16, 0, 31, 1, 1, 'Live'),
(423, 20, 11.00, 18, 16, 0, 31, 1, 1, 'Live'),
(424, 48, 75.00, 18, 16, 0, 31, 1, 1, 'Live'),
(425, 91, 6.00, 18, 16, 0, 31, 1, 1, 'Live'),
(426, 38, 20.00, 18, 16, 0, 22, 1, 1, 'Live'),
(427, 42, 6.00, 18, 16, 0, 22, 1, 1, 'Live'),
(428, 21, 450.00, 18, 16, 0, 22, 1, 1, 'Live'),
(429, 14, 100.00, 18, 16, 0, 22, 1, 1, 'Live'),
(430, 44, 6.00, 18, 16, 0, 22, 1, 1, 'Live'),
(431, 13, 100.00, 18, 16, 0, 22, 1, 1, 'Live'),
(432, 43, 12.00, 18, 16, 0, 22, 1, 1, 'Live'),
(433, 15, 50.00, 18, 16, 0, 22, 1, 1, 'Live'),
(434, 41, 6.00, 18, 16, 0, 22, 1, 1, 'Live'),
(435, 40, 35.00, 18, 16, 0, 22, 1, 1, 'Live'),
(436, 39, 76.00, 18, 16, 0, 22, 1, 1, 'Live'),
(437, 25, 12.00, 18, 16, 0, 22, 1, 1, 'Live'),
(438, 38, 20.00, 19, 17, 0, 22, 1, 1, 'Live'),
(439, 42, 6.00, 19, 17, 0, 22, 1, 1, 'Live'),
(440, 21, 450.00, 19, 17, 0, 22, 1, 1, 'Live'),
(441, 14, 100.00, 19, 17, 0, 22, 1, 1, 'Live'),
(442, 44, 6.00, 19, 17, 0, 22, 1, 1, 'Live'),
(443, 13, 100.00, 19, 17, 0, 22, 1, 1, 'Live'),
(444, 43, 12.00, 19, 17, 0, 22, 1, 1, 'Live'),
(445, 15, 50.00, 19, 17, 0, 22, 1, 1, 'Live'),
(446, 41, 6.00, 19, 17, 0, 22, 1, 1, 'Live'),
(447, 40, 35.00, 19, 17, 0, 22, 1, 1, 'Live'),
(448, 39, 76.00, 19, 17, 0, 22, 1, 1, 'Live'),
(449, 25, 12.00, 19, 17, 0, 22, 1, 1, 'Live'),
(450, 137, 12.00, 19, 17, 0, 43, 1, 1, 'Live'),
(451, 123, 400.00, 19, 17, 0, 43, 1, 1, 'Live'),
(452, 16, 0.20, 19, 17, 0, 43, 1, 1, 'Live'),
(453, 15, 23.00, 19, 17, 0, 43, 1, 1, 'Live'),
(454, 48, 50.00, 19, 17, 0, 43, 1, 1, 'Live'),
(455, 64, 2.00, 19, 17, 0, 43, 1, 1, 'Live'),
(456, 42, 11.00, 19, 17, 0, 43, 1, 1, 'Live'),
(457, 30, 6.00, 19, 17, 0, 43, 1, 1, 'Live'),
(458, 61, 11.00, 19, 17, 0, 43, 1, 1, 'Live'),
(459, 13, 50.00, 19, 17, 0, 43, 1, 1, 'Live'),
(460, 83, 11.00, 19, 17, 0, 43, 1, 1, 'Live'),
(461, 138, 10.00, 19, 17, 0, 43, 1, 1, 'Live'),
(462, 20, 100.00, 19, 17, 0, 41, 1, 1, 'Live'),
(463, 123, 500.00, 19, 17, 0, 41, 1, 1, 'Live'),
(464, 128, 250.00, 19, 17, 0, 41, 1, 1, 'Live'),
(465, 129, 50.00, 19, 17, 0, 41, 1, 1, 'Live'),
(466, 130, 12.00, 19, 17, 0, 41, 1, 1, 'Live'),
(467, 61, 15.00, 19, 17, 0, 41, 1, 1, 'Live'),
(468, 132, 10.00, 19, 17, 0, 41, 1, 1, 'Live'),
(469, 131, 4.00, 19, 17, 0, 41, 1, 1, 'Live'),
(479, 16, 300.00, 50, 44, 0, 21, 1, 1, 'Live'),
(480, 38, 85.00, 50, 44, 0, 21, 1, 1, 'Live'),
(481, 20, 12.00, 50, 44, 0, 21, 1, 1, 'Live'),
(482, 25, 6.00, 50, 44, 0, 21, 1, 1, 'Live'),
(483, 22, 22.00, 50, 44, 0, 21, 1, 1, 'Live'),
(484, 30, 6.00, 50, 44, 0, 21, 1, 1, 'Live'),
(485, 15, 5.00, 50, 44, 0, 21, 1, 1, 'Live'),
(486, 13, 12.00, 50, 44, 0, 21, 1, 1, 'Live'),
(487, 14, 140.00, 50, 44, 0, 21, 1, 1, 'Live'),
(506, 16, 300.00, 53, 47, 0, 21, 1, 1, 'Live'),
(507, 38, 85.00, 53, 47, 0, 21, 1, 1, 'Live'),
(508, 20, 12.00, 53, 47, 0, 21, 1, 1, 'Live'),
(509, 25, 6.00, 53, 47, 0, 21, 1, 1, 'Live'),
(510, 22, 22.00, 53, 47, 0, 21, 1, 1, 'Live'),
(511, 30, 6.00, 53, 47, 0, 21, 1, 1, 'Live'),
(512, 15, 5.00, 53, 47, 0, 21, 1, 1, 'Live'),
(513, 13, 12.00, 53, 47, 0, 21, 1, 1, 'Live'),
(514, 14, 140.00, 53, 47, 0, 21, 1, 1, 'Live'),
(515, 85, 6.00, 53, 47, 0, 30, 1, 1, 'Live'),
(516, 88, 4.00, 53, 47, 0, 30, 1, 1, 'Live'),
(517, 86, 12.00, 53, 47, 0, 30, 1, 1, 'Live'),
(518, 89, 1.00, 53, 47, 0, 30, 1, 1, 'Live'),
(519, 87, 40.00, 53, 47, 0, 30, 1, 1, 'Live'),
(520, 83, 25.00, 53, 47, 0, 29, 1, 1, 'Live'),
(521, 64, 2.00, 53, 47, 0, 29, 1, 1, 'Live'),
(522, 45, 250.00, 53, 47, 0, 29, 1, 1, 'Live'),
(523, 32, 12.00, 53, 47, 0, 29, 1, 1, 'Live'),
(524, 30, 5.00, 53, 47, 0, 29, 1, 1, 'Live'),
(525, 23, 120.00, 53, 47, 0, 29, 1, 1, 'Live'),
(526, 84, 40.00, 53, 47, 0, 29, 1, 1, 'Live'),
(545, 16, 300.00, 56, 50, 0, 21, 1, 1, 'Live'),
(546, 38, 85.00, 56, 50, 0, 21, 1, 1, 'Live'),
(547, 20, 12.00, 56, 50, 0, 21, 1, 1, 'Live'),
(548, 25, 6.00, 56, 50, 0, 21, 1, 1, 'Live'),
(549, 22, 22.00, 56, 50, 0, 21, 1, 1, 'Live'),
(550, 30, 6.00, 56, 50, 0, 21, 1, 1, 'Live'),
(551, 15, 5.00, 56, 50, 0, 21, 1, 1, 'Live'),
(552, 13, 12.00, 56, 50, 0, 21, 1, 1, 'Live'),
(553, 14, 140.00, 56, 50, 0, 21, 1, 1, 'Live'),
(554, 16, 300.00, 57, 51, 0, 21, 1, 1, 'Live'),
(555, 38, 85.00, 57, 51, 0, 21, 1, 1, 'Live'),
(556, 20, 12.00, 57, 51, 0, 21, 1, 1, 'Live'),
(557, 25, 6.00, 57, 51, 0, 21, 1, 1, 'Live'),
(558, 22, 22.00, 57, 51, 0, 21, 1, 1, 'Live'),
(559, 30, 6.00, 57, 51, 0, 21, 1, 1, 'Live'),
(560, 15, 5.00, 57, 51, 0, 21, 1, 1, 'Live'),
(561, 13, 12.00, 57, 51, 0, 21, 1, 1, 'Live'),
(562, 14, 140.00, 57, 51, 0, 21, 1, 1, 'Live'),
(563, 16, 300.00, 57, 51, 0, 21, 1, 1, 'Live'),
(564, 38, 85.00, 57, 51, 0, 21, 1, 1, 'Live'),
(565, 20, 12.00, 57, 51, 0, 21, 1, 1, 'Live'),
(566, 25, 6.00, 57, 51, 0, 21, 1, 1, 'Live'),
(567, 22, 22.00, 57, 51, 0, 21, 1, 1, 'Live'),
(568, 30, 6.00, 57, 51, 0, 21, 1, 1, 'Live'),
(569, 15, 5.00, 57, 51, 0, 21, 1, 1, 'Live'),
(570, 13, 12.00, 57, 51, 0, 21, 1, 1, 'Live'),
(571, 14, 140.00, 57, 51, 0, 21, 1, 1, 'Live'),
(572, 16, 300.00, 58, 52, 0, 21, 1, 1, 'Live'),
(573, 38, 85.00, 58, 52, 0, 21, 1, 1, 'Live'),
(574, 20, 12.00, 58, 52, 0, 21, 1, 1, 'Live'),
(575, 25, 6.00, 58, 52, 0, 21, 1, 1, 'Live'),
(576, 22, 22.00, 58, 52, 0, 21, 1, 1, 'Live'),
(577, 30, 6.00, 58, 52, 0, 21, 1, 1, 'Live'),
(578, 15, 5.00, 58, 52, 0, 21, 1, 1, 'Live'),
(579, 13, 12.00, 58, 52, 0, 21, 1, 1, 'Live'),
(580, 14, 140.00, 58, 52, 0, 21, 1, 1, 'Live'),
(581, 16, 225.00, 58, 52, 0, 31, 1, 1, 'Live'),
(582, 22, 23.00, 58, 52, 0, 31, 1, 1, 'Live'),
(583, 15, 5.00, 58, 52, 0, 31, 1, 1, 'Live'),
(584, 90, 22.00, 58, 52, 0, 31, 1, 1, 'Live'),
(585, 13, 19.00, 58, 52, 0, 31, 1, 1, 'Live'),
(586, 20, 11.00, 58, 52, 0, 31, 1, 1, 'Live'),
(587, 48, 75.00, 58, 52, 0, 31, 1, 1, 'Live'),
(588, 91, 6.00, 58, 52, 0, 31, 1, 1, 'Live'),
(589, 16, 300.00, 59, 53, 0, 21, 1, 1, 'Live'),
(590, 38, 85.00, 59, 53, 0, 21, 1, 1, 'Live'),
(591, 20, 12.00, 59, 53, 0, 21, 1, 1, 'Live'),
(592, 25, 6.00, 59, 53, 0, 21, 1, 1, 'Live'),
(593, 22, 22.00, 59, 53, 0, 21, 1, 1, 'Live'),
(594, 30, 6.00, 59, 53, 0, 21, 1, 1, 'Live'),
(595, 15, 5.00, 59, 53, 0, 21, 1, 1, 'Live'),
(596, 13, 12.00, 59, 53, 0, 21, 1, 1, 'Live'),
(597, 14, 140.00, 59, 53, 0, 21, 1, 1, 'Live'),
(598, 16, 600.00, 60, 54, 0, 21, 1, 1, 'Live'),
(599, 38, 170.00, 60, 54, 0, 21, 1, 1, 'Live'),
(600, 20, 24.00, 60, 54, 0, 21, 1, 1, 'Live'),
(601, 25, 12.00, 60, 54, 0, 21, 1, 1, 'Live'),
(602, 22, 44.00, 60, 54, 0, 21, 1, 1, 'Live'),
(603, 30, 12.00, 60, 54, 0, 21, 1, 1, 'Live'),
(604, 15, 10.00, 60, 54, 0, 21, 1, 1, 'Live'),
(605, 13, 24.00, 60, 54, 0, 21, 1, 1, 'Live'),
(606, 14, 280.00, 60, 54, 0, 21, 1, 1, 'Live'),
(616, 16, 300.00, 62, 56, 0, 21, 1, 1, 'Live'),
(617, 38, 85.00, 62, 56, 0, 21, 1, 1, 'Live'),
(618, 20, 12.00, 62, 56, 0, 21, 1, 1, 'Live'),
(619, 25, 6.00, 62, 56, 0, 21, 1, 1, 'Live'),
(620, 22, 22.00, 62, 56, 0, 21, 1, 1, 'Live'),
(621, 30, 6.00, 62, 56, 0, 21, 1, 1, 'Live'),
(622, 15, 5.00, 62, 56, 0, 21, 1, 1, 'Live'),
(623, 13, 12.00, 62, 56, 0, 21, 1, 1, 'Live'),
(624, 14, 140.00, 62, 56, 0, 21, 1, 1, 'Live'),
(643, 16, 300.00, 64, 55, 0, 21, 1, 1, 'Live'),
(644, 38, 85.00, 64, 55, 0, 21, 1, 1, 'Live'),
(645, 20, 12.00, 64, 55, 0, 21, 1, 1, 'Live'),
(646, 25, 6.00, 64, 55, 0, 21, 1, 1, 'Live'),
(647, 22, 22.00, 64, 55, 0, 21, 1, 1, 'Live'),
(648, 30, 6.00, 64, 55, 0, 21, 1, 1, 'Live'),
(649, 15, 5.00, 64, 55, 0, 21, 1, 1, 'Live'),
(650, 13, 12.00, 64, 55, 0, 21, 1, 1, 'Live'),
(651, 14, 140.00, 64, 55, 0, 21, 1, 1, 'Live'),
(652, 24, 25.00, 64, 55, 0, 32, 1, 1, 'Live'),
(653, 92, 25.00, 64, 55, 0, 32, 1, 1, 'Live'),
(654, 31, 50.00, 64, 55, 0, 32, 1, 1, 'Live'),
(655, 93, 70.00, 64, 55, 0, 32, 1, 1, 'Live'),
(656, 94, 22.00, 64, 55, 0, 32, 1, 1, 'Live'),
(657, 95, 68.00, 64, 55, 0, 32, 1, 1, 'Live'),
(658, 72, 8.00, 64, 55, 0, 32, 1, 1, 'Live'),
(659, 30, 5.00, 64, 55, 0, 32, 1, 1, 'Live'),
(660, 96, 120.00, 64, 55, 0, 32, 1, 1, 'Live'),
(661, 111, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(662, 118, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(663, 50, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(664, 111, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(665, 118, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(666, 50, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(667, 111, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(668, 118, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(669, 50, 5.00, 65, 57, 0, 46, 1, 1, 'Live'),
(670, 83, 25.00, 65, 57, 0, 29, 1, 1, 'Live'),
(671, 64, 2.00, 65, 57, 0, 29, 1, 1, 'Live'),
(672, 45, 250.00, 65, 57, 0, 29, 1, 1, 'Live'),
(673, 32, 12.00, 65, 57, 0, 29, 1, 1, 'Live'),
(674, 30, 5.00, 65, 57, 0, 29, 1, 1, 'Live'),
(675, 23, 120.00, 65, 57, 0, 29, 1, 1, 'Live'),
(676, 84, 40.00, 65, 57, 0, 29, 1, 1, 'Live'),
(677, 16, 300.00, 66, 58, 0, 21, 1, 1, 'Live'),
(678, 38, 85.00, 66, 58, 0, 21, 1, 1, 'Live'),
(679, 20, 12.00, 66, 58, 0, 21, 1, 1, 'Live'),
(680, 25, 6.00, 66, 58, 0, 21, 1, 1, 'Live'),
(681, 22, 22.00, 66, 58, 0, 21, 1, 1, 'Live'),
(682, 30, 6.00, 66, 58, 0, 21, 1, 1, 'Live'),
(683, 15, 5.00, 66, 58, 0, 21, 1, 1, 'Live'),
(684, 13, 12.00, 66, 58, 0, 21, 1, 1, 'Live'),
(685, 14, 140.00, 66, 58, 0, 21, 1, 1, 'Live'),
(699, 16, 300.00, 68, 60, 0, 21, 1, 1, 'Live'),
(700, 38, 85.00, 68, 60, 0, 21, 1, 1, 'Live'),
(701, 20, 12.00, 68, 60, 0, 21, 1, 1, 'Live'),
(702, 25, 6.00, 68, 60, 0, 21, 1, 1, 'Live'),
(703, 22, 22.00, 68, 60, 0, 21, 1, 1, 'Live'),
(704, 30, 6.00, 68, 60, 0, 21, 1, 1, 'Live'),
(705, 15, 5.00, 68, 60, 0, 21, 1, 1, 'Live'),
(706, 13, 12.00, 68, 60, 0, 21, 1, 1, 'Live'),
(707, 14, 140.00, 68, 60, 0, 21, 1, 1, 'Live'),
(708, 16, 300.00, 69, 61, 0, 21, 1, 1, 'Live'),
(709, 38, 85.00, 69, 61, 0, 21, 1, 1, 'Live'),
(710, 20, 12.00, 69, 61, 0, 21, 1, 1, 'Live'),
(711, 25, 6.00, 69, 61, 0, 21, 1, 1, 'Live'),
(712, 22, 22.00, 69, 61, 0, 21, 1, 1, 'Live'),
(713, 30, 6.00, 69, 61, 0, 21, 1, 1, 'Live'),
(714, 15, 5.00, 69, 61, 0, 21, 1, 1, 'Live'),
(715, 13, 12.00, 69, 61, 0, 21, 1, 1, 'Live'),
(716, 14, 140.00, 69, 61, 0, 21, 1, 1, 'Live'),
(717, 16, 300.00, 70, 62, 0, 21, 1, 1, 'Live'),
(718, 38, 85.00, 70, 62, 0, 21, 1, 1, 'Live'),
(719, 20, 12.00, 70, 62, 0, 21, 1, 1, 'Live'),
(720, 25, 6.00, 70, 62, 0, 21, 1, 1, 'Live'),
(721, 22, 22.00, 70, 62, 0, 21, 1, 1, 'Live'),
(722, 30, 6.00, 70, 62, 0, 21, 1, 1, 'Live'),
(723, 15, 5.00, 70, 62, 0, 21, 1, 1, 'Live'),
(724, 13, 12.00, 70, 62, 0, 21, 1, 1, 'Live'),
(725, 14, 140.00, 70, 62, 0, 21, 1, 1, 'Live'),
(726, 16, 300.00, 71, 63, 0, 21, 1, 1, 'Live'),
(727, 38, 85.00, 71, 63, 0, 21, 1, 1, 'Live'),
(728, 20, 12.00, 71, 63, 0, 21, 1, 1, 'Live'),
(729, 25, 6.00, 71, 63, 0, 21, 1, 1, 'Live'),
(730, 22, 22.00, 71, 63, 0, 21, 1, 1, 'Live'),
(731, 30, 6.00, 71, 63, 0, 21, 1, 1, 'Live'),
(732, 15, 5.00, 71, 63, 0, 21, 1, 1, 'Live'),
(733, 13, 12.00, 71, 63, 0, 21, 1, 1, 'Live'),
(734, 14, 140.00, 71, 63, 0, 21, 1, 1, 'Live'),
(735, 16, 300.00, 71, 63, 0, 21, 1, 1, 'Live'),
(736, 38, 85.00, 71, 63, 0, 21, 1, 1, 'Live'),
(737, 20, 12.00, 71, 63, 0, 21, 1, 1, 'Live'),
(738, 25, 6.00, 71, 63, 0, 21, 1, 1, 'Live'),
(739, 22, 22.00, 71, 63, 0, 21, 1, 1, 'Live'),
(740, 30, 6.00, 71, 63, 0, 21, 1, 1, 'Live'),
(741, 15, 5.00, 71, 63, 0, 21, 1, 1, 'Live'),
(742, 13, 12.00, 71, 63, 0, 21, 1, 1, 'Live'),
(743, 14, 140.00, 71, 63, 0, 21, 1, 1, 'Live'),
(744, 38, 20.00, 72, 64, 0, 22, 1, 1, 'Live'),
(745, 42, 6.00, 72, 64, 0, 22, 1, 1, 'Live'),
(746, 21, 450.00, 72, 64, 0, 22, 1, 1, 'Live'),
(747, 14, 100.00, 72, 64, 0, 22, 1, 1, 'Live'),
(748, 44, 6.00, 72, 64, 0, 22, 1, 1, 'Live'),
(749, 13, 100.00, 72, 64, 0, 22, 1, 1, 'Live'),
(750, 43, 12.00, 72, 64, 0, 22, 1, 1, 'Live'),
(751, 15, 50.00, 72, 64, 0, 22, 1, 1, 'Live'),
(752, 41, 6.00, 72, 64, 0, 22, 1, 1, 'Live'),
(753, 40, 35.00, 72, 64, 0, 22, 1, 1, 'Live'),
(754, 39, 76.00, 72, 64, 0, 22, 1, 1, 'Live'),
(755, 25, 12.00, 72, 64, 0, 22, 1, 1, 'Live'),
(756, 16, 300.00, 73, 65, 0, 21, 1, 1, 'Live'),
(757, 38, 85.00, 73, 65, 0, 21, 1, 1, 'Live'),
(758, 20, 12.00, 73, 65, 0, 21, 1, 1, 'Live'),
(759, 25, 6.00, 73, 65, 0, 21, 1, 1, 'Live'),
(760, 22, 22.00, 73, 65, 0, 21, 1, 1, 'Live'),
(761, 30, 6.00, 73, 65, 0, 21, 1, 1, 'Live'),
(762, 15, 5.00, 73, 65, 0, 21, 1, 1, 'Live'),
(763, 13, 12.00, 73, 65, 0, 21, 1, 1, 'Live'),
(764, 14, 140.00, 73, 65, 0, 21, 1, 1, 'Live'),
(765, 85, 6.00, 74, 66, 0, 30, 1, 1, 'Live'),
(766, 88, 4.00, 74, 66, 0, 30, 1, 1, 'Live'),
(767, 86, 12.00, 74, 66, 0, 30, 1, 1, 'Live'),
(768, 89, 1.00, 74, 66, 0, 30, 1, 1, 'Live'),
(769, 87, 40.00, 74, 66, 0, 30, 1, 1, 'Live'),
(770, 38, 20.00, 74, 66, 0, 22, 1, 1, 'Live'),
(771, 42, 6.00, 74, 66, 0, 22, 1, 1, 'Live'),
(772, 21, 450.00, 74, 66, 0, 22, 1, 1, 'Live'),
(773, 14, 100.00, 74, 66, 0, 22, 1, 1, 'Live'),
(774, 44, 6.00, 74, 66, 0, 22, 1, 1, 'Live'),
(775, 13, 100.00, 74, 66, 0, 22, 1, 1, 'Live'),
(776, 43, 12.00, 74, 66, 0, 22, 1, 1, 'Live'),
(777, 15, 50.00, 74, 66, 0, 22, 1, 1, 'Live'),
(778, 41, 6.00, 74, 66, 0, 22, 1, 1, 'Live'),
(779, 40, 35.00, 74, 66, 0, 22, 1, 1, 'Live'),
(780, 39, 76.00, 74, 66, 0, 22, 1, 1, 'Live'),
(781, 25, 12.00, 74, 66, 0, 22, 1, 1, 'Live'),
(790, 16, 300.00, 76, 68, 0, 21, 1, 1, 'Live'),
(791, 38, 85.00, 76, 68, 0, 21, 1, 1, 'Live'),
(792, 20, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(793, 25, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(794, 22, 22.00, 76, 68, 0, 21, 1, 1, 'Live'),
(795, 30, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(796, 15, 5.00, 76, 68, 0, 21, 1, 1, 'Live'),
(797, 13, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(798, 14, 140.00, 76, 68, 0, 21, 1, 1, 'Live'),
(799, 16, 300.00, 76, 68, 0, 21, 1, 1, 'Live'),
(800, 38, 85.00, 76, 68, 0, 21, 1, 1, 'Live'),
(801, 20, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(802, 25, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(803, 22, 22.00, 76, 68, 0, 21, 1, 1, 'Live'),
(804, 30, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(805, 15, 5.00, 76, 68, 0, 21, 1, 1, 'Live'),
(806, 13, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(807, 14, 140.00, 76, 68, 0, 21, 1, 1, 'Live'),
(808, 16, 300.00, 76, 68, 0, 21, 1, 1, 'Live'),
(809, 38, 85.00, 76, 68, 0, 21, 1, 1, 'Live'),
(810, 20, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(811, 25, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(812, 22, 22.00, 76, 68, 0, 21, 1, 1, 'Live'),
(813, 30, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(814, 15, 5.00, 76, 68, 0, 21, 1, 1, 'Live'),
(815, 13, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(816, 14, 140.00, 76, 68, 0, 21, 1, 1, 'Live'),
(817, 16, 300.00, 76, 68, 0, 21, 1, 1, 'Live'),
(818, 38, 85.00, 76, 68, 0, 21, 1, 1, 'Live'),
(819, 20, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(820, 25, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(821, 22, 22.00, 76, 68, 0, 21, 1, 1, 'Live'),
(822, 30, 6.00, 76, 68, 0, 21, 1, 1, 'Live'),
(823, 15, 5.00, 76, 68, 0, 21, 1, 1, 'Live'),
(824, 13, 12.00, 76, 68, 0, 21, 1, 1, 'Live'),
(825, 14, 140.00, 76, 68, 0, 21, 1, 1, 'Live'),
(843, 16, 300.00, 78, 70, 0, 21, 1, 1, 'Live'),
(844, 38, 85.00, 78, 70, 0, 21, 1, 1, 'Live'),
(845, 20, 12.00, 78, 70, 0, 21, 1, 1, 'Live'),
(846, 25, 6.00, 78, 70, 0, 21, 1, 1, 'Live'),
(847, 22, 22.00, 78, 70, 0, 21, 1, 1, 'Live'),
(848, 30, 6.00, 78, 70, 0, 21, 1, 1, 'Live'),
(849, 15, 5.00, 78, 70, 0, 21, 1, 1, 'Live'),
(850, 13, 12.00, 78, 70, 0, 21, 1, 1, 'Live'),
(851, 14, 140.00, 78, 70, 0, 21, 1, 1, 'Live'),
(852, 85, 6.00, 78, 70, 0, 30, 1, 1, 'Live'),
(853, 88, 4.00, 78, 70, 0, 30, 1, 1, 'Live'),
(854, 86, 12.00, 78, 70, 0, 30, 1, 1, 'Live'),
(855, 89, 1.00, 78, 70, 0, 30, 1, 1, 'Live'),
(856, 87, 40.00, 78, 70, 0, 30, 1, 1, 'Live'),
(857, 38, 20.00, 78, 70, 0, 22, 1, 1, 'Live'),
(858, 42, 6.00, 78, 70, 0, 22, 1, 1, 'Live'),
(859, 21, 450.00, 78, 70, 0, 22, 1, 1, 'Live'),
(860, 14, 100.00, 78, 70, 0, 22, 1, 1, 'Live'),
(861, 44, 6.00, 78, 70, 0, 22, 1, 1, 'Live'),
(862, 13, 100.00, 78, 70, 0, 22, 1, 1, 'Live'),
(863, 43, 12.00, 78, 70, 0, 22, 1, 1, 'Live'),
(864, 15, 50.00, 78, 70, 0, 22, 1, 1, 'Live'),
(865, 41, 6.00, 78, 70, 0, 22, 1, 1, 'Live'),
(866, 40, 35.00, 78, 70, 0, 22, 1, 1, 'Live'),
(867, 39, 76.00, 78, 70, 0, 22, 1, 1, 'Live'),
(868, 25, 12.00, 78, 70, 0, 22, 1, 1, 'Live'),
(869, 137, 12.00, 78, 70, 0, 43, 1, 1, 'Live'),
(870, 123, 400.00, 78, 70, 0, 43, 1, 1, 'Live'),
(871, 16, 0.20, 78, 70, 0, 43, 1, 1, 'Live'),
(872, 15, 23.00, 78, 70, 0, 43, 1, 1, 'Live'),
(873, 48, 50.00, 78, 70, 0, 43, 1, 1, 'Live'),
(874, 64, 2.00, 78, 70, 0, 43, 1, 1, 'Live'),
(875, 42, 11.00, 78, 70, 0, 43, 1, 1, 'Live'),
(876, 30, 6.00, 78, 70, 0, 43, 1, 1, 'Live'),
(877, 61, 11.00, 78, 70, 0, 43, 1, 1, 'Live'),
(878, 13, 50.00, 78, 70, 0, 43, 1, 1, 'Live'),
(879, 83, 11.00, 78, 70, 0, 43, 1, 1, 'Live'),
(880, 138, 10.00, 78, 70, 0, 43, 1, 1, 'Live'),
(881, 61, 22.00, 78, 70, 0, 25, 1, 1, 'Live'),
(882, 13, 50.00, 78, 70, 0, 25, 1, 1, 'Live'),
(883, 54, 21.00, 78, 70, 0, 25, 1, 1, 'Live'),
(884, 62, 100.00, 78, 70, 0, 25, 1, 1, 'Live'),
(885, 25, 12.00, 78, 70, 0, 25, 1, 1, 'Live'),
(886, 48, 23.00, 78, 70, 0, 25, 1, 1, 'Live'),
(887, 44, 24.00, 78, 70, 0, 25, 1, 1, 'Live'),
(888, 30, 11.00, 78, 70, 0, 25, 1, 1, 'Live'),
(889, 15, 34.00, 78, 70, 0, 25, 1, 1, 'Live'),
(890, 21, 200.00, 78, 70, 0, 25, 1, 1, 'Live'),
(891, 64, 2.00, 78, 70, 0, 25, 1, 1, 'Live'),
(892, 16, 225.00, 78, 70, 0, 31, 1, 1, 'Live'),
(893, 22, 23.00, 78, 70, 0, 31, 1, 1, 'Live'),
(894, 15, 5.00, 78, 70, 0, 31, 1, 1, 'Live'),
(895, 90, 22.00, 78, 70, 0, 31, 1, 1, 'Live'),
(896, 13, 19.00, 78, 70, 0, 31, 1, 1, 'Live'),
(897, 20, 11.00, 78, 70, 0, 31, 1, 1, 'Live'),
(898, 48, 75.00, 78, 70, 0, 31, 1, 1, 'Live'),
(899, 91, 6.00, 78, 70, 0, 31, 1, 1, 'Live'),
(900, 16, 300.00, 79, 71, 0, 21, 1, 1, 'Live'),
(901, 38, 85.00, 79, 71, 0, 21, 1, 1, 'Live'),
(902, 20, 12.00, 79, 71, 0, 21, 1, 1, 'Live'),
(903, 25, 6.00, 79, 71, 0, 21, 1, 1, 'Live'),
(904, 22, 22.00, 79, 71, 0, 21, 1, 1, 'Live'),
(905, 30, 6.00, 79, 71, 0, 21, 1, 1, 'Live'),
(906, 15, 5.00, 79, 71, 0, 21, 1, 1, 'Live'),
(907, 13, 12.00, 79, 71, 0, 21, 1, 1, 'Live'),
(908, 14, 140.00, 79, 71, 0, 21, 1, 1, 'Live'),
(909, 85, 6.00, 79, 71, 0, 30, 1, 1, 'Live'),
(910, 88, 4.00, 79, 71, 0, 30, 1, 1, 'Live'),
(911, 86, 12.00, 79, 71, 0, 30, 1, 1, 'Live'),
(912, 89, 1.00, 79, 71, 0, 30, 1, 1, 'Live'),
(913, 87, 40.00, 79, 71, 0, 30, 1, 1, 'Live'),
(914, 16, 225.00, 79, 71, 0, 31, 1, 1, 'Live'),
(915, 22, 23.00, 79, 71, 0, 31, 1, 1, 'Live'),
(916, 15, 5.00, 79, 71, 0, 31, 1, 1, 'Live'),
(917, 90, 22.00, 79, 71, 0, 31, 1, 1, 'Live'),
(918, 13, 19.00, 79, 71, 0, 31, 1, 1, 'Live'),
(919, 20, 11.00, 79, 71, 0, 31, 1, 1, 'Live'),
(920, 48, 75.00, 79, 71, 0, 31, 1, 1, 'Live'),
(921, 91, 6.00, 79, 71, 0, 31, 1, 1, 'Live'),
(946, 38, 20.00, 81, 72, 0, 22, 1, 1, 'Live'),
(947, 42, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(948, 21, 450.00, 81, 72, 0, 22, 1, 1, 'Live'),
(949, 14, 100.00, 81, 72, 0, 22, 1, 1, 'Live'),
(950, 44, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(951, 13, 100.00, 81, 72, 0, 22, 1, 1, 'Live'),
(952, 43, 12.00, 81, 72, 0, 22, 1, 1, 'Live'),
(953, 15, 50.00, 81, 72, 0, 22, 1, 1, 'Live'),
(954, 41, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(955, 40, 35.00, 81, 72, 0, 22, 1, 1, 'Live'),
(956, 39, 76.00, 81, 72, 0, 22, 1, 1, 'Live'),
(957, 25, 12.00, 81, 72, 0, 22, 1, 1, 'Live'),
(958, 38, 20.00, 81, 72, 0, 22, 1, 1, 'Live'),
(959, 42, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(960, 21, 450.00, 81, 72, 0, 22, 1, 1, 'Live'),
(961, 14, 100.00, 81, 72, 0, 22, 1, 1, 'Live'),
(962, 44, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(963, 13, 100.00, 81, 72, 0, 22, 1, 1, 'Live'),
(964, 43, 12.00, 81, 72, 0, 22, 1, 1, 'Live'),
(965, 15, 50.00, 81, 72, 0, 22, 1, 1, 'Live'),
(966, 41, 6.00, 81, 72, 0, 22, 1, 1, 'Live'),
(967, 40, 35.00, 81, 72, 0, 22, 1, 1, 'Live'),
(968, 39, 76.00, 81, 72, 0, 22, 1, 1, 'Live'),
(969, 25, 12.00, 81, 72, 0, 22, 1, 1, 'Live'),
(970, 16, 300.00, 81, 72, 0, 21, 1, 1, 'Live'),
(971, 38, 85.00, 81, 72, 0, 21, 1, 1, 'Live'),
(972, 20, 12.00, 81, 72, 0, 21, 1, 1, 'Live'),
(973, 25, 6.00, 81, 72, 0, 21, 1, 1, 'Live'),
(974, 22, 22.00, 81, 72, 0, 21, 1, 1, 'Live'),
(975, 30, 6.00, 81, 72, 0, 21, 1, 1, 'Live'),
(976, 15, 5.00, 81, 72, 0, 21, 1, 1, 'Live'),
(977, 13, 12.00, 81, 72, 0, 21, 1, 1, 'Live'),
(978, 14, 140.00, 81, 72, 0, 21, 1, 1, 'Live'),
(979, 16, 300.00, 82, 59, 0, 21, 1, 1, 'Live'),
(980, 38, 85.00, 82, 59, 0, 21, 1, 1, 'Live'),
(981, 20, 12.00, 82, 59, 0, 21, 1, 1, 'Live'),
(982, 25, 6.00, 82, 59, 0, 21, 1, 1, 'Live'),
(983, 22, 22.00, 82, 59, 0, 21, 1, 1, 'Live'),
(984, 30, 6.00, 82, 59, 0, 21, 1, 1, 'Live'),
(985, 15, 5.00, 82, 59, 0, 21, 1, 1, 'Live'),
(986, 13, 12.00, 82, 59, 0, 21, 1, 1, 'Live'),
(987, 14, 140.00, 82, 59, 0, 21, 1, 1, 'Live'),
(988, 146, 15.00, 82, 59, 0, 45, 1, 1, 'Live'),
(989, 111, 20.00, 82, 59, 0, 45, 1, 1, 'Live'),
(990, 146, 15.00, 82, 59, 0, 45, 1, 1, 'Live'),
(991, 111, 20.00, 82, 59, 0, 45, 1, 1, 'Live'),
(992, 38, 20.00, 82, 59, 0, 22, 1, 1, 'Live'),
(993, 42, 6.00, 82, 59, 0, 22, 1, 1, 'Live'),
(994, 21, 450.00, 82, 59, 0, 22, 1, 1, 'Live'),
(995, 14, 100.00, 82, 59, 0, 22, 1, 1, 'Live'),
(996, 44, 6.00, 82, 59, 0, 22, 1, 1, 'Live'),
(997, 13, 100.00, 82, 59, 0, 22, 1, 1, 'Live'),
(998, 43, 12.00, 82, 59, 0, 22, 1, 1, 'Live'),
(999, 15, 50.00, 82, 59, 0, 22, 1, 1, 'Live'),
(1000, 41, 6.00, 82, 59, 0, 22, 1, 1, 'Live'),
(1001, 40, 35.00, 82, 59, 0, 22, 1, 1, 'Live'),
(1002, 39, 76.00, 82, 59, 0, 22, 1, 1, 'Live'),
(1003, 25, 12.00, 82, 59, 0, 22, 1, 1, 'Live'),
(1004, 16, 225.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1005, 22, 23.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1006, 15, 5.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1007, 90, 22.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1008, 13, 19.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1009, 20, 11.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1010, 48, 75.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1011, 91, 6.00, 83, 67, 0, 31, 1, 1, 'Live'),
(1012, 16, 300.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1013, 38, 85.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1014, 20, 12.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1015, 25, 6.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1016, 22, 22.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1017, 30, 6.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1018, 15, 5.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1019, 13, 12.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1020, 14, 140.00, 84, 73, 0, 21, 1, 1, 'Live'),
(1021, 38, 20.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1022, 42, 6.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1023, 21, 450.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1024, 14, 100.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1025, 44, 6.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1026, 13, 100.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1027, 43, 12.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1028, 15, 50.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1029, 41, 6.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1030, 40, 35.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1031, 39, 76.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1032, 25, 12.00, 84, 73, 0, 22, 1, 1, 'Live'),
(1033, 85, 6.00, 84, 73, 0, 30, 1, 1, 'Live'),
(1034, 88, 4.00, 84, 73, 0, 30, 1, 1, 'Live'),
(1035, 86, 12.00, 84, 73, 0, 30, 1, 1, 'Live'),
(1036, 89, 1.00, 84, 73, 0, 30, 1, 1, 'Live'),
(1037, 87, 40.00, 84, 73, 0, 30, 1, 1, 'Live'),
(1038, 137, 12.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1039, 123, 400.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1040, 16, 0.20, 84, 73, 0, 43, 1, 1, 'Live'),
(1041, 15, 23.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1042, 48, 50.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1043, 64, 2.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1044, 42, 11.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1045, 30, 6.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1046, 61, 11.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1047, 13, 50.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1048, 83, 11.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1049, 138, 10.00, 84, 73, 0, 43, 1, 1, 'Live'),
(1050, 37, 200.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1051, 23, 2.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1052, 36, 100.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1053, 34, 300.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1054, 31, 6.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1055, 32, 72.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1056, 30, 5.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1057, 29, 20.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1058, 13, 50.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1059, 35, 8.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1060, 33, 5.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1061, 20, 12.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1062, 110, 4.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1063, 111, 300.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1064, 76, 33.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1065, 32, 12.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1066, 112, 20.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1067, 113, 11.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1068, 30, 23.00, 84, 73, 0, 37, 1, 1, 'Live'),
(1069, 37, 200.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1070, 23, 2.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1071, 36, 100.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1072, 34, 300.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1073, 31, 6.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1074, 32, 72.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1075, 30, 5.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1076, 29, 20.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1077, 13, 50.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1078, 35, 8.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1079, 33, 5.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1080, 20, 12.00, 84, 73, 0, 20, 1, 1, 'Live'),
(1081, 16, 225.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1082, 22, 23.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1083, 15, 5.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1084, 90, 22.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1085, 13, 19.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1086, 20, 11.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1087, 48, 75.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1088, 91, 6.00, 85, 74, 0, 31, 1, 1, 'Live'),
(1089, 16, 300.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1090, 38, 85.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1091, 20, 12.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1092, 25, 6.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1093, 22, 22.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1094, 30, 6.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1095, 15, 5.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1096, 13, 12.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1097, 14, 140.00, 86, 69, 0, 21, 1, 1, 'Live'),
(1098, 16, 225.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1099, 22, 23.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1100, 15, 5.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1101, 90, 22.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1102, 13, 19.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1103, 20, 11.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1104, 48, 75.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1105, 91, 6.00, 86, 69, 0, 31, 1, 1, 'Live'),
(1106, 83, 25.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1107, 64, 2.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1108, 45, 250.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1109, 32, 12.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1110, 30, 5.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1111, 23, 120.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1112, 84, 40.00, 87, 75, 0, 29, 1, 1, 'Live'),
(1113, 16, 300.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1114, 38, 85.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1115, 20, 12.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1116, 25, 6.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1117, 22, 22.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1118, 30, 6.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1119, 15, 5.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1120, 13, 12.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1121, 14, 140.00, 88, 76, 0, 21, 1, 1, 'Live'),
(1122, 61, 22.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1123, 13, 50.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1124, 54, 21.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1125, 62, 100.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1126, 25, 12.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1127, 48, 23.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1128, 44, 24.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1129, 30, 11.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1130, 15, 34.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1131, 21, 200.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1132, 64, 2.00, 89, 77, 0, 25, 1, 1, 'Live'),
(1133, 66, 70.00, 90, 78, 0, 26, 1, 1, 'Live'),
(1134, 65, 4.00, 90, 78, 0, 26, 1, 1, 'Live'),
(1135, 67, 7.00, 90, 78, 0, 26, 1, 1, 'Live'),
(1136, 68, 25.00, 90, 78, 0, 26, 1, 1, 'Live'),
(1137, 38, 20.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1138, 42, 6.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1139, 21, 450.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1140, 14, 100.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1141, 44, 6.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1142, 13, 100.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1143, 43, 12.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1144, 15, 50.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1145, 41, 6.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1146, 40, 35.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1147, 39, 76.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1148, 25, 12.00, 91, 79, 0, 22, 1, 1, 'Live'),
(1149, 16, 300.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1150, 38, 85.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1151, 20, 12.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1152, 25, 6.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1153, 22, 22.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1154, 30, 6.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1155, 15, 5.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1156, 13, 12.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1157, 14, 140.00, 91, 79, 0, 21, 1, 1, 'Live'),
(1158, 111, 5.00, 92, 80, 0, 46, 1, 1, 'Live'),
(1159, 118, 5.00, 92, 80, 0, 46, 1, 1, 'Live'),
(1160, 50, 5.00, 92, 80, 0, 46, 1, 1, 'Live'),
(1161, 16, 300.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1162, 38, 85.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1163, 20, 12.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1164, 25, 6.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1165, 22, 22.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1166, 30, 6.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1167, 15, 5.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1168, 13, 12.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1169, 14, 140.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1170, 16, 300.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1171, 38, 85.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1172, 20, 12.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1173, 25, 6.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1174, 22, 22.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1175, 30, 6.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1176, 15, 5.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1177, 13, 12.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1178, 14, 140.00, 93, 81, 0, 21, 1, 1, 'Live'),
(1179, 16, 300.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1180, 38, 85.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1181, 20, 12.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1182, 25, 6.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1183, 22, 22.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1184, 30, 6.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1185, 15, 5.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1186, 13, 12.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1187, 14, 140.00, 94, 82, 0, 21, 1, 1, 'Live'),
(1188, 16, 300.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1189, 38, 85.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1190, 20, 12.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1191, 25, 6.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1192, 22, 22.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1193, 30, 6.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1194, 15, 5.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1195, 13, 12.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1196, 14, 140.00, 95, 83, 0, 21, 1, 1, 'Live'),
(1197, 16, 300.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1198, 38, 85.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1199, 20, 12.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1200, 25, 6.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1201, 22, 22.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1202, 30, 6.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1203, 15, 5.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1204, 13, 12.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1205, 14, 140.00, 96, 84, 0, 21, 1, 1, 'Live'),
(1206, 16, 300.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1207, 38, 85.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1208, 20, 12.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1209, 25, 6.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1210, 22, 22.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1211, 30, 6.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1212, 15, 5.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1213, 13, 12.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1214, 14, 140.00, 97, 85, 0, 21, 1, 1, 'Live'),
(1215, 16, 300.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1216, 38, 85.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1217, 20, 12.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1218, 25, 6.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1219, 22, 22.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1220, 30, 6.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1221, 15, 5.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1222, 13, 12.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1223, 14, 140.00, 98, 86, 0, 21, 1, 1, 'Live'),
(1224, 16, 900.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1225, 38, 255.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1226, 20, 36.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1227, 25, 18.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1228, 22, 66.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1229, 30, 18.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1230, 15, 15.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1231, 13, 36.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1232, 14, 420.00, 99, 87, 0, 21, 1, 1, 'Live'),
(1233, 61, 44.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1234, 13, 100.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1235, 54, 42.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1236, 62, 200.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1237, 25, 24.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1238, 48, 46.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1239, 44, 48.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1240, 30, 22.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1241, 15, 68.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1242, 21, 400.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1243, 64, 4.00, 99, 87, 0, 25, 1, 1, 'Live'),
(1244, 137, 12.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1245, 123, 400.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1246, 16, 0.20, 99, 87, 0, 43, 1, 1, 'Live'),
(1247, 15, 23.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1248, 48, 50.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1249, 64, 2.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1250, 42, 11.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1251, 30, 6.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1252, 61, 11.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1253, 13, 50.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1254, 83, 11.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1255, 138, 10.00, 99, 87, 0, 43, 1, 1, 'Live'),
(1256, 61, 22.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1257, 13, 50.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1258, 54, 21.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1259, 62, 100.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1260, 25, 12.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1261, 48, 23.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1262, 44, 24.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1263, 30, 11.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1264, 15, 34.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1265, 21, 200.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1266, 64, 2.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1267, 61, 22.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1268, 13, 50.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1269, 54, 21.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1270, 62, 100.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1271, 25, 12.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1272, 48, 23.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1273, 44, 24.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1274, 30, 11.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1275, 15, 34.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1276, 21, 200.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1277, 64, 2.00, 100, 88, 0, 25, 1, 1, 'Live'),
(1278, 110, 4.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1279, 111, 300.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1280, 76, 33.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1281, 32, 12.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1282, 112, 20.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1283, 113, 11.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1284, 30, 23.00, 100, 88, 0, 37, 1, 1, 'Live'),
(1285, 24, 25.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1286, 92, 25.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1287, 31, 50.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1288, 93, 70.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1289, 94, 22.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1290, 95, 68.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1291, 72, 8.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1292, 30, 5.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1293, 96, 120.00, 101, 89, 0, 32, 1, 1, 'Live'),
(1294, 66, 70.00, 101, 89, 0, 26, 1, 1, 'Live'),
(1295, 65, 4.00, 101, 89, 0, 26, 1, 1, 'Live'),
(1296, 67, 7.00, 101, 89, 0, 26, 1, 1, 'Live'),
(1297, 68, 25.00, 101, 89, 0, 26, 1, 1, 'Live'),
(1298, 21, 800.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1299, 13, 70.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1300, 48, 50.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1301, 29, 70.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1302, 105, 100.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1303, 67, 6.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1304, 83, 20.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1305, 94, 25.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1306, 106, 25.00, 101, 89, 0, 35, 1, 1, 'Live'),
(1307, 16, 300.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1308, 38, 85.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1309, 20, 12.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1310, 25, 6.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1311, 22, 22.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1312, 30, 6.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1313, 15, 5.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1314, 13, 12.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1315, 14, 140.00, 102, 90, 0, 21, 1, 1, 'Live'),
(1316, 38, 20.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1317, 42, 6.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1318, 21, 450.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1319, 14, 100.00, 102, 90, 0, 22, 1, 1, 'Live');
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1320, 44, 6.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1321, 13, 100.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1322, 43, 12.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1323, 15, 50.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1324, 41, 6.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1325, 40, 35.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1326, 39, 76.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1327, 25, 12.00, 102, 90, 0, 22, 1, 1, 'Live'),
(1328, 16, 225.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1329, 22, 23.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1330, 15, 5.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1331, 90, 22.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1332, 13, 19.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1333, 20, 11.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1334, 48, 75.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1335, 91, 6.00, 102, 90, 0, 31, 1, 1, 'Live'),
(1336, 111, 5.00, 102, 90, 0, 46, 1, 1, 'Live'),
(1337, 118, 5.00, 102, 90, 0, 46, 1, 1, 'Live'),
(1338, 50, 5.00, 102, 90, 0, 46, 1, 1, 'Live'),
(1339, 37, 200.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1340, 23, 2.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1341, 36, 100.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1342, 34, 300.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1343, 31, 6.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1344, 32, 72.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1345, 30, 5.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1346, 29, 20.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1347, 13, 50.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1348, 35, 8.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1349, 33, 5.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1350, 20, 12.00, 102, 90, 0, 20, 1, 1, 'Live'),
(1351, 61, 22.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1352, 13, 50.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1353, 54, 21.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1354, 62, 100.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1355, 25, 12.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1356, 48, 23.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1357, 44, 24.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1358, 30, 11.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1359, 15, 34.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1360, 21, 200.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1361, 64, 2.00, 102, 90, 0, 25, 1, 1, 'Live'),
(1362, 16, 300.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1363, 38, 85.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1364, 20, 12.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1365, 25, 6.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1366, 22, 22.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1367, 30, 6.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1368, 15, 5.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1369, 13, 12.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1370, 14, 140.00, 103, 91, 0, 21, 1, 1, 'Live'),
(1371, 38, 20.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1372, 42, 6.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1373, 21, 450.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1374, 14, 100.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1375, 44, 6.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1376, 13, 100.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1377, 43, 12.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1378, 15, 50.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1379, 41, 6.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1380, 40, 35.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1381, 39, 76.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1382, 25, 12.00, 103, 91, 0, 22, 1, 1, 'Live'),
(1383, 16, 225.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1384, 22, 23.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1385, 15, 5.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1386, 90, 22.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1387, 13, 19.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1388, 20, 11.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1389, 48, 75.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1390, 91, 6.00, 103, 91, 0, 31, 1, 1, 'Live'),
(1391, 111, 5.00, 103, 91, 0, 46, 1, 1, 'Live'),
(1392, 118, 5.00, 103, 91, 0, 46, 1, 1, 'Live'),
(1393, 50, 5.00, 103, 91, 0, 46, 1, 1, 'Live'),
(1394, 37, 200.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1395, 23, 2.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1396, 36, 100.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1397, 34, 300.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1398, 31, 6.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1399, 32, 72.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1400, 30, 5.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1401, 29, 20.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1402, 13, 50.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1403, 35, 8.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1404, 33, 5.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1405, 20, 12.00, 103, 91, 0, 20, 1, 1, 'Live'),
(1406, 61, 22.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1407, 13, 50.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1408, 54, 21.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1409, 62, 100.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1410, 25, 12.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1411, 48, 23.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1412, 44, 24.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1413, 30, 11.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1414, 15, 34.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1415, 21, 200.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1416, 64, 2.00, 103, 91, 0, 25, 1, 1, 'Live'),
(1417, 16, 300.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1418, 38, 85.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1419, 20, 12.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1420, 25, 6.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1421, 22, 22.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1422, 30, 6.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1423, 15, 5.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1424, 13, 12.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1425, 14, 140.00, 104, 92, 0, 21, 1, 1, 'Live'),
(1426, 111, 5.00, 104, 92, 0, 46, 1, 1, 'Live'),
(1427, 118, 5.00, 104, 92, 0, 46, 1, 1, 'Live'),
(1428, 50, 5.00, 104, 92, 0, 46, 1, 1, 'Live'),
(1429, 16, 300.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1430, 38, 85.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1431, 20, 12.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1432, 25, 6.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1433, 22, 22.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1434, 30, 6.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1435, 15, 5.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1436, 13, 12.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1437, 14, 140.00, 105, 93, 0, 21, 1, 1, 'Live'),
(1438, 111, 5.00, 105, 93, 0, 46, 1, 1, 'Live'),
(1439, 118, 5.00, 105, 93, 0, 46, 1, 1, 'Live'),
(1440, 50, 5.00, 105, 93, 0, 46, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint(20) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(11) DEFAULT NULL,
  `sales_id` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

INSERT INTO `tbl_sale_consumptions_of_modifiers_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(3, 50, 56.00, 68, 60, 0, 21, 1, 1, 'Live'),
(4, 95, 25.00, 68, 60, 0, 21, 1, 1, 'Live'),
(5, 109, 50.00, 68, 60, 0, 21, 1, 1, 'Live'),
(6, 115, 30.00, 68, 60, 0, 21, 1, 1, 'Live'),
(7, 50, 56.00, 69, 61, 0, 21, 1, 1, 'Live'),
(8, 95, 25.00, 69, 61, 0, 21, 1, 1, 'Live'),
(9, 109, 50.00, 69, 61, 0, 21, 1, 1, 'Live'),
(10, 115, 30.00, 69, 61, 0, 21, 1, 1, 'Live'),
(11, 50, 56.00, 82, 59, 0, 45, 10, 1, 'Live'),
(12, 95, 25.00, 82, 59, 0, 45, 10, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('91e8347d97f58b6f6a684d0cd356ae7360d2d2d3', '173.254.200.139', 1601344974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334313339333b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('4c1d2e5b945e20f692a9a74e9e13b355b87c6779', '173.254.200.139', 1601348780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334383738303b6c6f67696e5f747970657c733a333a2270696e223b),
('62c243cc7cd81a69c94e9a7f5e543759792f19f0', '103.223.8.64', 1601348989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334383938393b6c6f67696e5f747970657c733a333a2270696e223b),
('efdeb18934849cbcc2be2bdd94afdae286051d1f', '103.7.63.148', 1601349073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393030303b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('a090cd50d91e57db6a315ba4fff01d27cfb89031', '203.134.213.35', 1601349002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393030323b6c6f67696e5f747970657c733a333a2270696e223b),
('6f89d07e380c7b73bfd1f863504f2fcaf11976f3', '88.200.137.117', 1601349164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393030343b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('3ae3f5c80eb40b49077046af1a101fcf915322e2', '18.212.197.82', 1601349005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393030353b6c6f67696e5f747970657c733a333a2270696e223b),
('953440687a6c801b04cb2c8153077a92ec8b9fff', '149.154.161.6', 1601349005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393030353b6c6f67696e5f747970657c733a333a2270696e223b),
('5c6cc0d0c4799b3b23ea088c2c050844ef457270', '188.43.136.32', 1601349372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393032303b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('7fd8d042542684a44f6b5e1eff3369964017d6e7', '37.111.129.149', 1601349231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393036333b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('38d36f2f806b0cc3185a2db61cf315e46d76a66e', '123.231.109.207', 1601351654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393130333b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('08ff435ac135464c4340397c1b6ab54a7f748531', '188.43.136.32', 1601351651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393135303b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('a8af36b62ee03e1c1cedd06dcf1ba4718c5bc6c4', '66.249.73.5', 1601349246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393234363b6c6f67696e5f747970657c733a333a2270696e223b),
('1aac00ea18e53568825af98275ab36a0dafbb4ec', '116.74.63.168', 1601351652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393236313b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('2d81e456d62ac80aac0c569a1bd2e211af7e5905', '195.201.245.31', 1601349331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393333313b6c6f67696e5f747970657c733a333a2270696e223b),
('0c2bfd18d26d0ff64028523fb70336a125bb351b', '195.201.245.31', 1601349332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393333323b6c6f67696e5f747970657c733a333a2270696e223b),
('1bce411646784cf5b0231bbafacc336d72faec75', '88.99.64.214', 1601349332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393333323b6c6f67696e5f747970657c733a333a2270696e223b),
('ad52eabd9def3c80c1c2811aa44d8dc48d83e15e', '88.99.64.214', 1601349333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393333333b6c6f67696e5f747970657c733a333a2270696e223b),
('395446fbd199468a1f6adbc2e93765842cb9061f', '88.198.16.182', 1601349342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393334323b6c6f67696e5f747970657c733a333a2270696e223b),
('8c848086469010f5364ff7f93d444ccb492602a3', '88.198.16.182', 1601349343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393334333b6c6f67696e5f747970657c733a333a2270696e223b),
('b8514bd22696b756c4ec92052af1de2f67a90a63', '195.201.245.126', 1601349359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393335393b6c6f67696e5f747970657c733a333a2270696e223b),
('060b59b78dfc409f269661898901e27c83077b24', '195.201.245.126', 1601349360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393336303b6c6f67696e5f747970657c733a333a2270696e223b),
('1bae7117d5a7b6dac3ab53d88f0546ed0fa81c6f', '122.173.233.55', 1601350661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393337333b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('b0445685983759cf4a70b2541fb24f9a6ba0c1e7', '37.111.129.149', 1601349749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393432353b6c616e67756167657c733a373a22656e676c697368223b70696e5f636f64657c733a343a2239393939223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b),
('b9ce2bab63f208852278ce4be99c0d693e6bdea5', '202.7.172.137', 1601349437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393433353b6c6f67696e5f747970657c733a333a2270696e223b),
('cc494aededa7aa26d27d6d641cc1abca38e08349', '203.171.242.4', 1601349439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393433363b6c6f67696e5f747970657c733a333a2270696e223b),
('32a6002da1dfe1430d153dba91b9b5aeebf197c7', '5.9.83.200', 1601349447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393434373b6c6f67696e5f747970657c733a333a2270696e223b),
('7bca54500126cff7e7319ef9811f10b6e8daccf9', '5.9.83.200', 1601349448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393434383b6c6f67696e5f747970657c733a333a2270696e223b),
('19637f8c156fe7aca439e5e5e04a272b8a310415', '66.249.73.9', 1601349458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393435383b6c6f67696e5f747970657c733a353a22656d61696c223b),
('4b93331bbaf6e315c29d2dad5ba02230b35e6ec0', '138.201.205.93', 1601349492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393439323b6c6f67696e5f747970657c733a333a2270696e223b),
('90610a5509da5786acbbf80ad3d6d0571de60bfe', '138.201.205.93', 1601349493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393439333b6c6f67696e5f747970657c733a333a2270696e223b),
('aaaebe55cba32debb4fb68e19e6bc8c91d2039ed', '195.201.245.32', 1601349500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393530303b6c6f67696e5f747970657c733a333a2270696e223b),
('89d013bfc2087ed3cb5230c5fab24f0b49f08350', '195.201.245.32', 1601349501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393530313b6c6f67696e5f747970657c733a333a2270696e223b),
('bd87edd4ce6fefb6e71b55485d397e9dbb356cb2', '88.99.148.111', 1601349544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393534343b6c6f67696e5f747970657c733a333a2270696e223b),
('c374ce75680cd18cfb1a64fc61e3e8e4f84b2b10', '88.99.148.111', 1601349545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393534353b6c6f67696e5f747970657c733a333a2270696e223b),
('fd5760a743f2dcd5d7fca766546858701454cad2', '88.99.148.110', 1601349546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393534363b6c6f67696e5f747970657c733a333a2270696e223b),
('d20efc9782cee24216ef861b861c88a2b0ea6bd7', '88.99.148.110', 1601349547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393534373b6c6f67696e5f747970657c733a333a2270696e223b),
('7692068eedd352c0f384a115096101b082d8a393', '157.34.1.26', 1601349779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393536353b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('94afc5f9b307f5ecd2054905b6fadc4564d476e0', '88.99.144.157', 1601349576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393537363b6c6f67696e5f747970657c733a333a2270696e223b),
('9c0c33ee43c851c76022a95e32d05fa30cde75fe', '88.99.144.157', 1601349577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393537373b6c6f67696e5f747970657c733a333a2270696e223b),
('861c4fce531f89301ff5e3f58736d747e2c5f732', '94.130.167.125', 1601349577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393537373b6c6f67696e5f747970657c733a333a2270696e223b),
('39b46d653f1443fa8004bfca4dd3b6409030b25e', '88.99.144.143', 1601349599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393539393b6c6f67696e5f747970657c733a333a2270696e223b),
('e825cafec032ed4a370cff20e887935e9a9826f4', '88.99.144.143', 1601349600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393630303b6c6f67696e5f747970657c733a333a2270696e223b),
('b08da449014d01317a8f2b5d4065b0e6bd47f2a6', '88.99.144.159', 1601349616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393631363b6c6f67696e5f747970657c733a333a2270696e223b),
('d4ce7412b9ed4b9f2d0fa7717c6e318dd00035dc', '88.99.144.159', 1601349616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393631363b6c6f67696e5f747970657c733a333a2270696e223b),
('98c12af589be71275c8fcaeda224801a37056355', '88.198.16.187', 1601349637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393633373b6c6f67696e5f747970657c733a333a2270696e223b),
('a74fc3fd5e686087f52e4e55d5ca01992e4c5b2f', '88.198.16.187', 1601349638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393633383b6c6f67696e5f747970657c733a333a2270696e223b),
('90b2dba08960744ec6da48f44dc0a2bdee7e5c30', '66.249.73.7', 1601349645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393634353b6c6f67696e5f747970657c733a333a2270696e223b),
('50b25f63e2bd7b992892cedf1c735ffd72f2fd01', '144.76.94.109', 1601349671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393637313b6c6f67696e5f747970657c733a333a2270696e223b),
('ef8001aa19281c99e7ffb29e89b0d2e58ba7b6f8', '144.76.94.109', 1601349672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393637323b6c6f67696e5f747970657c733a333a2270696e223b),
('0611fe7736d3ccb12c450f01a8221c99a4aa5b12', '37.111.129.149', 1601350051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393735313b6c616e67756167657c733a373a22656e676c697368223b70696e5f636f64657c733a343a2239393939223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('b9b35a4ea4b98169ccb2ff38ab95eab9b54f7b5b', '138.201.31.160', 1601349760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393736303b6c6f67696e5f747970657c733a333a2270696e223b),
('01b41a61d27951b9b5355c1a215d210df90652f9', '138.201.31.160', 1601349761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393736313b6c6f67696e5f747970657c733a333a2270696e223b),
('cdf589dbe1dc1ec2f057cec5250d0bfd2e03e808', '88.198.15.244', 1601349784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393738343b6c6f67696e5f747970657c733a333a2270696e223b),
('db5624639874c17297f9ed9fb6df3d18207f2266', '88.198.15.244', 1601349785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393738353b6c6f67696e5f747970657c733a333a2270696e223b),
('ae5d23509487b985f32fd67a8df054c57a6691be', '138.201.223.94', 1601349854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393835343b6c6f67696e5f747970657c733a333a2270696e223b),
('f81e8c7ed37c8cd3e9560562d1f21e81422c017b', '138.201.223.94', 1601349855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393835353b6c6f67696e5f747970657c733a333a2270696e223b),
('9c72cce9d5b91f73a543b063b75127babd4996eb', '88.198.44.37', 1601349864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393836343b6c6f67696e5f747970657c733a333a2270696e223b),
('18b76c25d8a771ea05b488c2ebadf123eb6ac4cd', '54.198.55.229', 1601349864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393836343b6c6f67696e5f747970657c733a333a2270696e223b),
('8368e265be5e92ba1bcf325a63e6744e8f980e2a', '88.198.44.37', 1601349864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393836343b6c6f67696e5f747970657c733a333a2270696e223b),
('9516ac4f9190207421f0d8a4d18ed7a4ca2fe62e', '144.76.94.115', 1601349936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393933363b6c6f67696e5f747970657c733a333a2270696e223b),
('e2639cfa41fd947fad47ed43c81a97032ed2eedc', '144.76.94.115', 1601349937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313334393933373b6c6f67696e5f747970657c733a333a2270696e223b),
('4ee6b686b200f3e8d614ca92875139515174fc4c', '73.210.244.123', 1601350087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303036323b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('d0b073fe7436e8721ea5791cf315b0f7c55cc377', '64.15.115.77', 1601350064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303036343b6c6f67696e5f747970657c733a333a2270696e223b),
('b67ec914ce64b72bbe2599882c0d1abcec472adc', '217.116.48.228', 1601350066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303036363b6c6f67696e5f747970657c733a333a2270696e223b),
('5063ec04e91415e7bd442835171de2f8901fb0bc', '37.111.129.149', 1601350383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303039313b6c616e67756167657c733a363a22617261626963223b70696e5f636f64657c733a343a2239393939223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b),
('e8cdc16b08188a251f69ec189099bc5505368641', '157.37.71.179', 1601350368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303333313b6c6f67696e5f747970657c733a333a2270696e223b),
('8630cba4829ecdccb8e14571f26f2c7ce9879700', '37.111.129.149', 1601350473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303430313b6c616e67756167657c733a373a22656e676c697368223b70696e5f636f64657c733a343a2239393939223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b6c6f67696e5f747970657c733a333a2270696e223b),
('35f69230259013eeea87574b4ee3fc078ff21d88', '150.107.188.119', 1601351031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335303938353b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('1802e0c2d4aad191df98671c461e01e91aaa6c32', '122.168.72.47', 1601351436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335313336303b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b),
('aead10fe3d687a501c7866aea3d4493b4f28a2a1', '188.43.136.32', 1601351651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335313635313b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('dd23c800af8bf66a40bd2a48d2430dce4b1076b7', '188.43.136.32', 1601351652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335313635323b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b),
('fc396563dbe8b90d6856918bb8245eba4275d81c', '188.43.136.32', 1601351652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313335313635323b6c6f67696e5f747970657c733a333a2270696e223b757365725f69647c733a323a223130223b6c616e67756167657c733a373a22656e676c697368223b66756c6c5f6e616d657c733a31353a224d69636861656c204d69636861656c223b70686f6e657c733a31323a22303137353433343536373833223b70696e5f636f64657c733a343a2239393939223b656d61696c5f616464726573737c733a31373a226d65406d69636861656c6c69752e6e6574223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b6f75746c65745f69647c733a313a2231223b63757272656e63797c733a313a2224223b74696d655f7a6f6e657c733a31363a22416d65726963612f4e65775f596f726b223b646174655f666f726d61747c733a353a226d2f642f59223b6d656e755f6163636573737c613a343a7b693a303b733a333a22426172223b693a313b733a373a224b69746368656e223b693a323b733a383a225075726368617365223b693a333b733a343a2253616c65223b7d7461785f69735f6773747c733a333a22596573223b6773745f73746174655f636f64657c733a323a223039223b6f75746c65745f6e616d657c733a31323a2254657861732042697374726f223b616464726573737c733a33373a2234323120452e20436f6d6d657263652053616e20416e746f6e696f2c205458203738323035223b6f75746c65745f70686f6e657c733a31343a222832313029203232342d31333133223b636f6c6c6563745f7461787c733a333a22596573223b7461785f726567697374726174696f6e5f6e6f7c733a31323a22303933373834373238333733223b696e766f6963655f7072696e747c733a333a22596573223b696e766f6963655f666f6f7465727c733a32363a225468616e6b20796f7520666f72207669736974696e6720757321223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a32363a226765745f6e65775f6e6f74696669636174696f6e735f616a6178223b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `site_name` varchar(300) DEFAULT NULL,
  `footer` varchar(300) DEFAULT NULL,
  `system_logo` text DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `wc_cosumer_key` varchar(64) NOT NULL,
  `wc_cosumer_secret` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `date_format`, `time_zone`, `currency`, `site_name`, `footer`, `system_logo`, `company_id`, `del_status`, `wc_cosumer_key`, `wc_cosumer_secret`) VALUES
(4, 'm/d/Y', 'America/New_York', '$', 'PlugNPlayPos', 'PlugNPlayPos', 'f9be117e3a538149256e1ed6a198edeb.png', 1, 'Live', 'ck_96225acafb3f24ad79db1d09be119ea823e70af3', 'cs_9da7b20d9be59c6d07a5ead053f98c9e03d6aa27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `id` int(11) NOT NULL,
  `email_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`id`, `email_address`, `password`, `company_id`, `del_status`) VALUES
(1, 'info@multidimensionsystems.com', '123456', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(9, 'Dealers Ingredients Inc ', 'John Davis', '202-555-0122', 'zawaloja@freemailnow.net', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(10, 'CK Ingredients', 'Demarcus  Hagan', '202-555-0109', 'LawrenceMJohnson@armyspy.com', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(13, 'Ingredients Plus Distribution Inc.', 'John Covington', '202-555-0190', 'JamesVWhite@rhyta.com', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(16, 'HT Griffin Food Ingredients', 'Michael Burns', '202-555-0100', 'RobertJAcevedo@jourrapide.com', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(17, 'Calico Food Ingredients Ltd', 'Nathan McCord', '202-555-0139', 'pontificious@finans-edenitsa.ru', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(18, 'Fineberry Foods Inc. - Dried Fruits and bakery Ing', 'Robert Salas', '202-555-0136', 'RobertESalas@rhyta.com', '3132 Forest Drive, Washington, VA 20005', '', 1, 1, 'Live'),
(19, 'Quadra Ingredients', 'Daniel V. Roman', '8983083749333', '', '', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payments`
--

CREATE TABLE `tbl_supplier_payments` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier_payments`
--

INSERT INTO `tbl_supplier_payments` (`id`, `date`, `supplier_id`, `amount`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '2018-11-13', 9, 100.00, 'none', 1, 1, 'Live'),
(2, '2018-11-16', 9, 780.00, '', 1, 2, 'Live'),
(3, '2018-11-16', 9, 30.00, '', 1, 2, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tables`
--

CREATE TABLE `tbl_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tables`
--

INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES
(2, 'Table 01', '6', 'Corner Side', '', 1, 1, 1, 'Live'),
(3, 'Table 02', '6', 'Front Side', '', 1, 1, 1, 'Live'),
(4, 'Table 3', '4', 'Middle', '', 1, 2, 1, 'Live'),
(5, 'Table 3', 'fjd', 'Middle', '', 1, 2, 1, 'Live'),
(6, 'Table 3', '1.2', 'Middle', '', 1, 2, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_kot`
--

CREATE TABLE `tbl_temp_kot` (
  `id` int(11) NOT NULL,
  `temp_kot_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_temp_kot`
--

INSERT INTO `tbl_temp_kot` (`id`, `temp_kot_info`) VALUES
(3, '{\"order_number\":\"B 000004\",\"order_date\":\"2018-12-10 14:25:19\",\"customer_name\":\"Habibur Rahman\",\"table_name\":\"\",\"items\":[{\"kot_item_name\":\"Fish Tacos (02)\", \"kot_item_qty\":\"2\",\"modifiers\":\"\"},{\"kot_item_name\":\"DeshiMas (12)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"}]}'),
(4, '{\"order_number\":\"B 000004\",\"order_date\":\"2018-12-10 14:25:19\",\"customer_name\":\"Habibur Rahman\",\"table_name\":\"\",\"items\":[{\"kot_item_name\":\"Fish Tacos (02)\", \"kot_item_qty\":\"3\",\"modifiers\":\"\"},{\"kot_item_name\":\"DeshiMas (12)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"}]}'),
(6, '{\"order_number\":\"A 000007\",\"order_date\":\"2018-12-11 19:07:31\",\"customer_name\":\"Aru\",\"table_name\":\"Table 02\",\"items\":[{\"kot_item_name\":\"Black Pepper Beef (03)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"},{\"kot_item_name\":\"Better Chocolate Chip Cookies (09)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"}]}'),
(7, '{\"order_number\":\"A 000007\",\"order_date\":\"2018-12-11 19:07:31\",\"customer_name\":\"Aru\",\"table_name\":\"Table 02\",\"items\":[{\"kot_item_name\":\"Black Pepper Beef (03)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"},{\"kot_item_name\":\"Better Chocolate Chip Cookies (09)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"}]}'),
(12, '{\"order_number\":\"A 000006\",\"order_date\":\"2018-12-10 17:37:16\",\"customer_name\":\"Walk-in Customer\",\"table_name\":\"Table 01\",\"items\":[{\"kot_item_name\":\"Lamb With Green Chili Masala (015)\", \"kot_item_qty\":\"1\",\"modifiers\":\"\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_zone`
--

CREATE TABLE `tbl_time_zone` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_time_zone`
--

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES
(1, 'AD', 'Europe/Andorra', 'Live'),
(2, 'AE', 'Asia/Dubai', 'Live'),
(3, 'AF', 'Asia/Kabul', 'Live'),
(4, 'AG', 'America/Antigua', 'Live'),
(5, 'AI', 'America/Anguilla', 'Live'),
(6, 'AL', 'Europe/Tirane', 'Live'),
(7, 'AM', 'Asia/Yerevan', 'Live'),
(8, 'AO', 'Africa/Luanda', 'Live'),
(9, 'AQ', 'Antarctica/McMurdo', 'Live'),
(10, 'AQ', 'Antarctica/Casey', 'Live'),
(11, 'AQ', 'Antarctica/Davis', 'Live'),
(12, 'AQ', 'Antarctica/DumontDUrville', 'Live'),
(13, 'AQ', 'Antarctica/Mawson', 'Live'),
(14, 'AQ', 'Antarctica/Palmer', 'Live'),
(15, 'AQ', 'Antarctica/Rothera', 'Live'),
(16, 'AQ', 'Antarctica/Syowa', 'Live'),
(17, 'AQ', 'Antarctica/Troll', 'Live'),
(18, 'AQ', 'Antarctica/Vostok', 'Live'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 'Live'),
(20, 'AR', 'America/Argentina/Cordoba', 'Live'),
(21, 'AR', 'America/Argentina/Salta', 'Live'),
(22, 'AR', 'America/Argentina/Jujuy', 'Live'),
(23, 'AR', 'America/Argentina/Tucuman', 'Live'),
(24, 'AR', 'America/Argentina/Catamarca', 'Live'),
(25, 'AR', 'America/Argentina/La_Rioja', 'Live'),
(26, 'AR', 'America/Argentina/San_Juan', 'Live'),
(27, 'AR', 'America/Argentina/Mendoza', 'Live'),
(28, 'AR', 'America/Argentina/San_Luis', 'Live'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 'Live'),
(30, 'AR', 'America/Argentina/Ushuaia', 'Live'),
(31, 'AS', 'Pacific/Pago_Pago', 'Live'),
(32, 'AT', 'Europe/Vienna', 'Live'),
(33, 'AU', 'Australia/Lord_Howe', 'Live'),
(34, 'AU', 'Antarctica/Macquarie', 'Live'),
(35, 'AU', 'Australia/Hobart', 'Live'),
(36, 'AU', 'Australia/Currie', 'Live'),
(37, 'AU', 'Australia/Melbourne', 'Live'),
(38, 'AU', 'Australia/Sydney', 'Live'),
(39, 'AU', 'Australia/Broken_Hill', 'Live'),
(40, 'AU', 'Australia/Brisbane', 'Live'),
(41, 'AU', 'Australia/Lindeman', 'Live'),
(42, 'AU', 'Australia/Adelaide', 'Live'),
(43, 'AU', 'Australia/Darwin', 'Live'),
(44, 'AU', 'Australia/Perth', 'Live'),
(45, 'AU', 'Australia/Eucla', 'Live'),
(46, 'AW', 'America/Aruba', 'Live'),
(47, 'AX', 'Europe/Mariehamn', 'Live'),
(48, 'AZ', 'Asia/Baku', 'Live'),
(49, 'BA', 'Europe/Sarajevo', 'Live'),
(50, 'BB', 'America/Barbados', 'Live'),
(51, 'BD', 'Asia/Dhaka', 'Live'),
(52, 'BE', 'Europe/Brussels', 'Live'),
(53, 'BF', 'Africa/Ouagadougou', 'Live'),
(54, 'BG', 'Europe/Sofia', 'Live'),
(55, 'BH', 'Asia/Bahrain', 'Live'),
(56, 'BI', 'Africa/Bujumbura', 'Live'),
(57, 'BJ', 'Africa/Porto-Novo', 'Live'),
(58, 'BL', 'America/St_Barthelemy', 'Live'),
(59, 'BM', 'Atlantic/Bermuda', 'Live'),
(60, 'BN', 'Asia/Brunei', 'Live'),
(61, 'BO', 'America/La_Paz', 'Live'),
(62, 'BQ', 'America/Kralendijk', 'Live'),
(63, 'BR', 'America/Noronha', 'Live'),
(64, 'BR', 'America/Belem', 'Live'),
(65, 'BR', 'America/Fortaleza', 'Live'),
(66, 'BR', 'America/Recife', 'Live'),
(67, 'BR', 'America/Araguaina', 'Live'),
(68, 'BR', 'America/Maceio', 'Live'),
(69, 'BR', 'America/Bahia', 'Live'),
(70, 'BR', 'America/Sao_Paulo', 'Live'),
(71, 'BR', 'America/Campo_Grande', 'Live'),
(72, 'BR', 'America/Cuiaba', 'Live'),
(73, 'BR', 'America/Santarem', 'Live'),
(74, 'BR', 'America/Porto_Velho', 'Live'),
(75, 'BR', 'America/Boa_Vista', 'Live'),
(76, 'BR', 'America/Manaus', 'Live'),
(77, 'BR', 'America/Eirunepe', 'Live'),
(78, 'BR', 'America/Rio_Branco', 'Live'),
(79, 'BS', 'America/Nassau', 'Live'),
(80, 'BT', 'Asia/Thimphu', 'Live'),
(81, 'BW', 'Africa/Gaborone', 'Live'),
(82, 'BY', 'Europe/Minsk', 'Live'),
(83, 'BZ', 'America/Belize', 'Live'),
(84, 'CA', 'America/St_Johns', 'Live'),
(85, 'CA', 'America/Halifax', 'Live'),
(86, 'CA', 'America/Glace_Bay', 'Live'),
(87, 'CA', 'America/Moncton', 'Live'),
(88, 'CA', 'America/Goose_Bay', 'Live'),
(89, 'CA', 'America/Blanc-Sablon', 'Live'),
(90, 'CA', 'America/Toronto', 'Live'),
(91, 'CA', 'America/Nipigon', 'Live'),
(92, 'CA', 'America/Thunder_Bay', 'Live'),
(93, 'CA', 'America/Iqaluit', 'Live'),
(94, 'CA', 'America/Pangnirtung', 'Live'),
(95, 'CA', 'America/Atikokan', 'Live'),
(96, 'CA', 'America/Winnipeg', 'Live'),
(97, 'CA', 'America/Rainy_River', 'Live'),
(98, 'CA', 'America/Resolute', 'Live'),
(99, 'CA', 'America/Rankin_Inlet', 'Live'),
(100, 'CA', 'America/Regina', 'Live'),
(101, 'CA', 'America/Swift_Current', 'Live'),
(102, 'CA', 'America/Edmonton', 'Live'),
(103, 'CA', 'America/Cambridge_Bay', 'Live'),
(104, 'CA', 'America/Yellowknife', 'Live'),
(105, 'CA', 'America/Inuvik', 'Live'),
(106, 'CA', 'America/Creston', 'Live'),
(107, 'CA', 'America/Dawson_Creek', 'Live'),
(108, 'CA', 'America/Fort_Nelson', 'Live'),
(109, 'CA', 'America/Vancouver', 'Live'),
(110, 'CA', 'America/Whitehorse', 'Live'),
(111, 'CA', 'America/Dawson', 'Live'),
(112, 'CC', 'Indian/Cocos', 'Live'),
(113, 'CD', 'Africa/Kinshasa', 'Live'),
(114, 'CD', 'Africa/Lubumbashi', 'Live'),
(115, 'CF', 'Africa/Bangui', 'Live'),
(116, 'CG', 'Africa/Brazzaville', 'Live'),
(117, 'CH', 'Europe/Zurich', 'Live'),
(118, 'CI', 'Africa/Abidjan', 'Live'),
(119, 'CK', 'Pacific/Rarotonga', 'Live'),
(120, 'CL', 'America/Santiago', 'Live'),
(121, 'CL', 'America/Punta_Arenas', 'Live'),
(122, 'CL', 'Pacific/Easter', 'Live'),
(123, 'CM', 'Africa/Douala', 'Live'),
(124, 'CN', 'Asia/Shanghai', 'Live'),
(125, 'CN', 'Asia/Urumqi', 'Live'),
(126, 'CO', 'America/Bogota', 'Live'),
(127, 'CR', 'America/Costa_Rica', 'Live'),
(128, 'CU', 'America/Havana', 'Live'),
(129, 'CV', 'Atlantic/Cape_Verde', 'Live'),
(130, 'CW', 'America/Curacao', 'Live'),
(131, 'CX', 'Indian/Christmas', 'Live'),
(132, 'CY', 'Asia/Nicosia', 'Live'),
(133, 'CY', 'Asia/Famagusta', 'Live'),
(134, 'CZ', 'Europe/Prague', 'Live'),
(135, 'DE', 'Europe/Berlin', 'Live'),
(136, 'DE', 'Europe/Busingen', 'Live'),
(137, 'DJ', 'Africa/Djibouti', 'Live'),
(138, 'DK', 'Europe/Copenhagen', 'Live'),
(139, 'DM', 'America/Dominica', 'Live'),
(140, 'DO', 'America/Santo_Domingo', 'Live'),
(141, 'DZ', 'Africa/Algiers', 'Live'),
(142, 'EC', 'America/Guayaquil', 'Live'),
(143, 'EC', 'Pacific/Galapagos', 'Live'),
(144, 'EE', 'Europe/Tallinn', 'Live'),
(145, 'EG', 'Africa/Cairo', 'Live'),
(146, 'EH', 'Africa/El_Aaiun', 'Live'),
(147, 'ER', 'Africa/Asmara', 'Live'),
(148, 'ES', 'Europe/Madrid', 'Live'),
(149, 'ES', 'Africa/Ceuta', 'Live'),
(150, 'ES', 'Atlantic/Canary', 'Live'),
(151, 'ET', 'Africa/Addis_Ababa', 'Live'),
(152, 'FI', 'Europe/Helsinki', 'Live'),
(153, 'FJ', 'Pacific/Fiji', 'Live'),
(154, 'FK', 'Atlantic/Stanley', 'Live'),
(155, 'FM', 'Pacific/Chuuk', 'Live'),
(156, 'FM', 'Pacific/Pohnpei', 'Live'),
(157, 'FM', 'Pacific/Kosrae', 'Live'),
(158, 'FO', 'Atlantic/Faroe', 'Live'),
(159, 'FR', 'Europe/Paris', 'Live'),
(160, 'GA', 'Africa/Libreville', 'Live'),
(161, 'GB', 'Europe/London', 'Live'),
(162, 'GD', 'America/Grenada', 'Live'),
(163, 'GE', 'Asia/Tbilisi', 'Live'),
(164, 'GF', 'America/Cayenne', 'Live'),
(165, 'GG', 'Europe/Guernsey', 'Live'),
(166, 'GH', 'Africa/Accra', 'Live'),
(167, 'GI', 'Europe/Gibraltar', 'Live'),
(168, 'GL', 'America/Godthab', 'Live'),
(169, 'GL', 'America/Danmarkshavn', 'Live'),
(170, 'GL', 'America/Scoresbysund', 'Live'),
(171, 'GL', 'America/Thule', 'Live'),
(172, 'GM', 'Africa/Banjul', 'Live'),
(173, 'GN', 'Africa/Conakry', 'Live'),
(174, 'GP', 'America/Guadeloupe', 'Live'),
(175, 'GQ', 'Africa/Malabo', 'Live'),
(176, 'GR', 'Europe/Athens', 'Live'),
(177, 'GS', 'Atlantic/South_Georgia', 'Live'),
(178, 'GT', 'America/Guatemala', 'Live'),
(179, 'GU', 'Pacific/Guam', 'Live'),
(180, 'GW', 'Africa/Bissau', 'Live'),
(181, 'GY', 'America/Guyana', 'Live'),
(182, 'HK', 'Asia/Hong_Kong', 'Live'),
(183, 'HN', 'America/Tegucigalpa', 'Live'),
(184, 'HR', 'Europe/Zagreb', 'Live'),
(185, 'HT', 'America/Port-au-Prince', 'Live'),
(186, 'HU', 'Europe/Budapest', 'Live'),
(187, 'ID', 'Asia/Jakarta', 'Live'),
(188, 'ID', 'Asia/Pontianak', 'Live'),
(189, 'ID', 'Asia/Makassar', 'Live'),
(190, 'ID', 'Asia/Jayapura', 'Live'),
(191, 'IE', 'Europe/Dublin', 'Live'),
(192, 'IL', 'Asia/Jerusalem', 'Live'),
(193, 'IM', 'Europe/Isle_of_Man', 'Live'),
(194, 'IN', 'Asia/Kolkata', 'Live'),
(195, 'IO', 'Indian/Chagos', 'Live'),
(196, 'IQ', 'Asia/Baghdad', 'Live'),
(197, 'IR', 'Asia/Tehran', 'Live'),
(198, 'IS', 'Atlantic/Reykjavik', 'Live'),
(199, 'IT', 'Europe/Rome', 'Live'),
(200, 'JE', 'Europe/Jersey', 'Live'),
(201, 'JM', 'America/Jamaica', 'Live'),
(202, 'JO', 'Asia/Amman', 'Live'),
(203, 'JP', 'Asia/Tokyo', 'Live'),
(204, 'KE', 'Africa/Nairobi', 'Live'),
(205, 'KG', 'Asia/Bishkek', 'Live'),
(206, 'KH', 'Asia/Phnom_Penh', 'Live'),
(207, 'KI', 'Pacific/Tarawa', 'Live'),
(208, 'KI', 'Pacific/Enderbury', 'Live'),
(209, 'KI', 'Pacific/Kiritimati', 'Live'),
(210, 'KM', 'Indian/Comoro', 'Live'),
(211, 'KN', 'America/St_Kitts', 'Live'),
(212, 'KP', 'Asia/Pyongyang', 'Live'),
(213, 'KR', 'Asia/Seoul', 'Live'),
(214, 'KW', 'Asia/Kuwait', 'Live'),
(215, 'KY', 'America/Cayman', 'Live'),
(216, 'KZ', 'Asia/Almaty', 'Live'),
(217, 'KZ', 'Asia/Qyzylorda', 'Live'),
(218, 'KZ', 'Asia/Aqtobe', 'Live'),
(219, 'KZ', 'Asia/Aqtau', 'Live'),
(220, 'KZ', 'Asia/Atyrau', 'Live'),
(221, 'KZ', 'Asia/Oral', 'Live'),
(222, 'LA', 'Asia/Vientiane', 'Live'),
(223, 'LB', 'Asia/Beirut', 'Live'),
(224, 'LC', 'America/St_Lucia', 'Live'),
(225, 'LI', 'Europe/Vaduz', 'Live'),
(226, 'LK', 'Asia/Colombo', 'Live'),
(227, 'LR', 'Africa/Monrovia', 'Live'),
(228, 'LS', 'Africa/Maseru', 'Live'),
(229, 'LT', 'Europe/Vilnius', 'Live'),
(230, 'LU', 'Europe/Luxembourg', 'Live'),
(231, 'LV', 'Europe/Riga', 'Live'),
(232, 'LY', 'Africa/Tripoli', 'Live'),
(233, 'MA', 'Africa/Casablanca', 'Live'),
(234, 'MC', 'Europe/Monaco', 'Live'),
(235, 'MD', 'Europe/Chisinau', 'Live'),
(236, 'ME', 'Europe/Podgorica', 'Live'),
(237, 'MF', 'America/Marigot', 'Live'),
(238, 'MG', 'Indian/Antananarivo', 'Live'),
(239, 'MH', 'Pacific/Majuro', 'Live'),
(240, 'MH', 'Pacific/Kwajalein', 'Live'),
(241, 'MK', 'Europe/Skopje', 'Live'),
(242, 'ML', 'Africa/Bamako', 'Live'),
(243, 'MM', 'Asia/Yangon', 'Live'),
(244, 'MN', 'Asia/Ulaanbaatar', 'Live'),
(245, 'MN', 'Asia/Hovd', 'Live'),
(246, 'MN', 'Asia/Choibalsan', 'Live'),
(247, 'MO', 'Asia/Macau', 'Live'),
(248, 'MP', 'Pacific/Saipan', 'Live'),
(249, 'MQ', 'America/Martinique', 'Live'),
(250, 'MR', 'Africa/Nouakchott', 'Live'),
(251, 'MS', 'America/Montserrat', 'Live'),
(252, 'MT', 'Europe/Malta', 'Live'),
(253, 'MU', 'Indian/Mauritius', 'Live'),
(254, 'MV', 'Indian/Maldives', 'Live'),
(255, 'MW', 'Africa/Blantyre', 'Live'),
(256, 'MX', 'America/Mexico_City', 'Live'),
(257, 'MX', 'America/Cancun', 'Live'),
(258, 'MX', 'America/Merida', 'Live'),
(259, 'MX', 'America/Monterrey', 'Live'),
(260, 'MX', 'America/Matamoros', 'Live'),
(261, 'MX', 'America/Mazatlan', 'Live'),
(262, 'MX', 'America/Chihuahua', 'Live'),
(263, 'MX', 'America/Ojinaga', 'Live'),
(264, 'MX', 'America/Hermosillo', 'Live'),
(265, 'MX', 'America/Tijuana', 'Live'),
(266, 'MX', 'America/Bahia_Banderas', 'Live'),
(267, 'MY', 'Asia/Kuala_Lumpur', 'Live'),
(268, 'MY', 'Asia/Kuching', 'Live'),
(269, 'MZ', 'Africa/Maputo', 'Live'),
(270, 'NA', 'Africa/Windhoek', 'Live'),
(271, 'NC', 'Pacific/Noumea', 'Live'),
(272, 'NE', 'Africa/Niamey', 'Live'),
(273, 'NF', 'Pacific/Norfolk', 'Live'),
(274, 'NG', 'Africa/Lagos', 'Live'),
(275, 'NI', 'America/Managua', 'Live'),
(276, 'NL', 'Europe/Amsterdam', 'Live'),
(277, 'NO', 'Europe/Oslo', 'Live'),
(278, 'NP', 'Asia/Kathmandu', 'Live'),
(279, 'NR', 'Pacific/Nauru', 'Live'),
(280, 'NU', 'Pacific/Niue', 'Live'),
(281, 'NZ', 'Pacific/Auckland', 'Live'),
(282, 'NZ', 'Pacific/Chatham', 'Live'),
(283, 'OM', 'Asia/Muscat', 'Live'),
(284, 'PA', 'America/Panama', 'Live'),
(285, 'PE', 'America/Lima', 'Live'),
(286, 'PF', 'Pacific/Tahiti', 'Live'),
(287, 'PF', 'Pacific/Marquesas', 'Live'),
(288, 'PF', 'Pacific/Gambier', 'Live'),
(289, 'PG', 'Pacific/Port_Moresby', 'Live'),
(290, 'PG', 'Pacific/Bougainville', 'Live'),
(291, 'PH', 'Asia/Manila', 'Live'),
(292, 'PK', 'Asia/Karachi', 'Live'),
(293, 'PL', 'Europe/Warsaw', 'Live'),
(294, 'PM', 'America/Miquelon', 'Live'),
(295, 'PN', 'Pacific/Pitcairn', 'Live'),
(296, 'PR', 'America/Puerto_Rico', 'Live'),
(297, 'PS', 'Asia/Gaza', 'Live'),
(298, 'PS', 'Asia/Hebron', 'Live'),
(299, 'PT', 'Europe/Lisbon', 'Live'),
(300, 'PT', 'Atlantic/Madeira', 'Live'),
(301, 'PT', 'Atlantic/Azores', 'Live'),
(302, 'PW', 'Pacific/Palau', 'Live'),
(303, 'PY', 'America/Asuncion', 'Live'),
(304, 'QA', 'Asia/Qatar', 'Live'),
(305, 'RE', 'Indian/Reunion', 'Live'),
(306, 'RO', 'Europe/Bucharest', 'Live'),
(307, 'RS', 'Europe/Belgrade', 'Live'),
(308, 'RU', 'Europe/Kaliningrad', 'Live'),
(309, 'RU', 'Europe/Moscow', 'Live'),
(310, 'RU', 'Europe/Simferopol', 'Live'),
(311, 'RU', 'Europe/Volgograd', 'Live'),
(312, 'RU', 'Europe/Kirov', 'Live'),
(313, 'RU', 'Europe/Astrakhan', 'Live'),
(314, 'RU', 'Europe/Saratov', 'Live'),
(315, 'RU', 'Europe/Ulyanovsk', 'Live'),
(316, 'RU', 'Europe/Samara', 'Live'),
(317, 'RU', 'Asia/Yekaterinburg', 'Live'),
(318, 'RU', 'Asia/Omsk', 'Live'),
(319, 'RU', 'Asia/Novosibirsk', 'Live'),
(320, 'RU', 'Asia/Barnaul', 'Live'),
(321, 'RU', 'Asia/Tomsk', 'Live'),
(322, 'RU', 'Asia/Novokuznetsk', 'Live'),
(323, 'RU', 'Asia/Krasnoyarsk', 'Live'),
(324, 'RU', 'Asia/Irkutsk', 'Live'),
(325, 'RU', 'Asia/Chita', 'Live'),
(326, 'RU', 'Asia/Yakutsk', 'Live'),
(327, 'RU', 'Asia/Khandyga', 'Live'),
(328, 'RU', 'Asia/Vladivostok', 'Live'),
(329, 'RU', 'Asia/Ust-Nera', 'Live'),
(330, 'RU', 'Asia/Magadan', 'Live'),
(331, 'RU', 'Asia/Sakhalin', 'Live'),
(332, 'RU', 'Asia/Srednekolymsk', 'Live'),
(333, 'RU', 'Asia/Kamchatka', 'Live'),
(334, 'RU', 'Asia/Anadyr', 'Live'),
(335, 'RW', 'Africa/Kigali', 'Live'),
(336, 'SA', 'Asia/Riyadh', 'Live'),
(337, 'SB', 'Pacific/Guadalcanal', 'Live'),
(338, 'SC', 'Indian/Mahe', 'Live'),
(339, 'SD', 'Africa/Khartoum', 'Live'),
(340, 'SE', 'Europe/Stockholm', 'Live'),
(341, 'SG', 'Asia/Singapore', 'Live'),
(342, 'SH', 'Atlantic/St_Helena', 'Live'),
(343, 'SI', 'Europe/Ljubljana', 'Live'),
(344, 'SJ', 'Arctic/Longyearbyen', 'Live'),
(345, 'SK', 'Europe/Bratislava', 'Live'),
(346, 'SL', 'Africa/Freetown', 'Live'),
(347, 'SM', 'Europe/San_Marino', 'Live'),
(348, 'SN', 'Africa/Dakar', 'Live'),
(349, 'SO', 'Africa/Mogadishu', 'Live'),
(350, 'SR', 'America/Paramaribo', 'Live'),
(351, 'SS', 'Africa/Juba', 'Live'),
(352, 'ST', 'Africa/Sao_Tome', 'Live'),
(353, 'SV', 'America/El_Salvador', 'Live'),
(354, 'SX', 'America/Lower_Princes', 'Live'),
(355, 'SY', 'Asia/Damascus', 'Live'),
(356, 'SZ', 'Africa/Mbabane', 'Live'),
(357, 'TC', 'America/Grand_Turk', 'Live'),
(358, 'TD', 'Africa/Ndjamena', 'Live'),
(359, 'TF', 'Indian/Kerguelen', 'Live'),
(360, 'TG', 'Africa/Lome', 'Live'),
(361, 'TH', 'Asia/Bangkok', 'Live'),
(362, 'TJ', 'Asia/Dushanbe', 'Live'),
(363, 'TK', 'Pacific/Fakaofo', 'Live'),
(364, 'TL', 'Asia/Dili', 'Live'),
(365, 'TM', 'Asia/Ashgabat', 'Live'),
(366, 'TN', 'Africa/Tunis', 'Live'),
(367, 'TO', 'Pacific/Tongatapu', 'Live'),
(368, 'TR', 'Europe/Istanbul', 'Live'),
(369, 'TT', 'America/Port_of_Spain', 'Live'),
(370, 'TV', 'Pacific/Funafuti', 'Live'),
(371, 'TW', 'Asia/Taipei', 'Live'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 'Live'),
(373, 'UA', 'Europe/Kiev', 'Live'),
(374, 'UA', 'Europe/Uzhgorod', 'Live'),
(375, 'UA', 'Europe/Zaporozhye', 'Live'),
(376, 'UG', 'Africa/Kampala', 'Live'),
(377, 'UM', 'Pacific/Midway', 'Live'),
(378, 'UM', 'Pacific/Wake', 'Live'),
(379, 'US', 'America/New_York', 'Live'),
(380, 'US', 'America/Detroit', 'Live'),
(381, 'US', 'America/Kentucky/Louisville', 'Live'),
(382, 'US', 'America/Kentucky/Monticello', 'Live'),
(383, 'US', 'America/Indiana/Indianapolis', 'Live'),
(384, 'US', 'America/Indiana/Vincennes', 'Live'),
(385, 'US', 'America/Indiana/Winamac', 'Live'),
(386, 'US', 'America/Indiana/Marengo', 'Live'),
(387, 'US', 'America/Indiana/Petersburg', 'Live'),
(388, 'US', 'America/Indiana/Vevay', 'Live'),
(389, 'US', 'America/Chicago', 'Live'),
(390, 'US', 'America/Indiana/Tell_City', 'Live'),
(391, 'US', 'America/Indiana/Knox', 'Live'),
(392, 'US', 'America/Menominee', 'Live'),
(393, 'US', 'America/North_Dakota/Center', 'Live'),
(394, 'US', 'America/North_Dakota/New_Salem', 'Live'),
(395, 'US', 'America/North_Dakota/Beulah', 'Live'),
(396, 'US', 'America/Denver', 'Live'),
(397, 'US', 'America/Boise', 'Live'),
(398, 'US', 'America/Phoenix', 'Live'),
(399, 'US', 'America/Los_Angeles', 'Live'),
(400, 'US', 'America/Anchorage', 'Live'),
(401, 'US', 'America/Juneau', 'Live'),
(402, 'US', 'America/Sitka', 'Live'),
(403, 'US', 'America/Metlakatla', 'Live'),
(404, 'US', 'America/Yakutat', 'Live'),
(405, 'US', 'America/Nome', 'Live'),
(406, 'US', 'America/Adak', 'Live'),
(407, 'US', 'Pacific/Honolulu', 'Live'),
(408, 'UY', 'America/Montevideo', 'Live'),
(409, 'UZ', 'Asia/Samarkand', 'Live'),
(410, 'UZ', 'Asia/Tashkent', 'Live'),
(411, 'VA', 'Europe/Vatican', 'Live'),
(412, 'VC', 'America/St_Vincent', 'Live'),
(413, 'VE', 'America/Caracas', 'Live'),
(414, 'VG', 'America/Tortola', 'Live'),
(415, 'VI', 'America/St_Thomas', 'Live'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 'Live'),
(417, 'VU', 'Pacific/Efate', 'Live'),
(418, 'WF', 'Pacific/Wallis', 'Live'),
(419, 'WS', 'Pacific/Apia', 'Live'),
(420, 'YE', 'Asia/Aden', 'Live'),
(421, 'YT', 'Indian/Mayotte', 'Live'),
(422, 'ZA', 'Africa/Johannesburg', 'Live'),
(423, 'ZM', 'Africa/Lusaka', 'Live'),
(424, 'ZW', 'Africa/Harare', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES
(1, 'Kg', 'Kilo Gram', 1, 'Live'),
(2, 'L', 'Liter', 1, 'Live'),
(3, 'Pcs', 'Piece', 1, 'Live'),
(4, 'g', 'gram', 1, 'Live'),
(5, 'ml', 'Mili Liter', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pin_code` varchar(4) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `will_login` varchar(20) NOT NULL DEFAULT 'No',
  `role` varchar(25) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `pin_code`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES
(1, 'Demo Admin', '01812391633', '0000', 'admin@doorsoft.xyz', '123456', NULL, 'Yes', 'Admin', 1, 1, '2018-02-17 07:28:32', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(2, 'Monir', '01785774645', '', 'monir@gmail.com', '123456', NULL, 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(3, 'RASHED', '01825201709', '1234', 'rashedul15-6564@diu.edu.bd', '737499', 'Waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(4, 'Nazmul', '01713827749', '', 'prnt.multisys@gmail.com', '333333', 'Waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(5, 'Rafi', '01825201707', '', 'rashedislam659@gmail.com', '402965', 'Manager', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(6, 'Ayat', '01539849384', '', 'ayat@yahoo.com', 'ayat123', NULL, 'Yes', 'Kitchen User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(7, 'Rafi', '01754345678', '', 'rafi@gmail.com', '1234567', 'Accountant', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(8, 'Dany', '34234234345', '5555', 'janis@yahoo.com', '123456', 'Superintendent', 'Yes', 'POS User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(9, 'Helen', '13236981', '8888', 'helen@example.com', '567890', 'User', 'Yes', '', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(10, 'Michael Michael', '017543456783', '9999', 'me@michaelliu.net', '123456', 'Waiters', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu_access`
--

CREATE TABLE `tbl_user_menu_access` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_menu_access`
--

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 9, 1),
(12, 11, 1),
(46, 13, 1),
(103, 14, 1),
(104, 15, 1),
(118, 16, 1),
(133, 5, 1),
(134, 10, 1),
(135, 12, 1),
(140, 17, 1),
(141, 18, 1),
(142, 19, 1),
(160, 17, 4),
(161, 18, 4),
(162, 19, 4),
(164, 19, 3),
(165, 17, 10),
(166, 18, 10),
(167, 2, 10),
(168, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vats`
--

CREATE TABLE `tbl_vats` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `user_id` float(10,2) NOT NULL DEFAULT 1.00,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(6) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vats`
--

INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'General VAT', 15.00, 0.00, 1, 'Live'),
(2, 'Sales Tax', 15.00, 1.00, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastes`
--

CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `food_menu_id` int(11) DEFAULT NULL,
  `food_menu_waste_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wastes`
--

INSERT INTO `tbl_wastes` (`id`, `reference_no`, `date`, `total_loss`, `note`, `employee_id`, `user_id`, `outlet_id`, `del_status`, `food_menu_id`, `food_menu_waste_qty`) VALUES
(1, '000001', '2018-11-18', 200.00, '', NULL, 1, 2, 'Live', NULL, 0),
(2, '000001', '2018-11-26', 200.00, '', NULL, 1, 1, 'Live', NULL, 0),
(3, '000001', '2018-12-04', 250.00, '', NULL, 1, 4, 'Deleted', NULL, 0),
(4, '000002', '2018-12-04', 1000.00, '', NULL, 1, 4, 'Deleted', 0, 0),
(5, '000001', '2018-12-12', 50.00, '', NULL, 1, 5, 'Live', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waste_ingredients`
--

CREATE TABLE `tbl_waste_ingredients` (
  `id` int(11) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_waste_ingredients`
--

INSERT INTO `tbl_waste_ingredients` (`id`, `ingredient_id`, `waste_amount`, `last_purchase_price`, `loss_amount`, `waste_id`, `outlet_id`, `del_status`) VALUES
(1, 209, 1.00, 200.00, 200.00, 1, 2, 'Live'),
(2, 209, 1.00, 200.00, 200.00, 2, 1, 'Live'),
(3, 111, 5.00, 50.00, 250.00, 3, 4, 'Deleted'),
(6, 111, 10.00, 50.00, 500.00, 4, 4, 'Deleted'),
(7, 50, 10.00, 50.00, 500.00, 4, 4, 'Deleted'),
(8, 111, 1.00, 50.00, 50.00, 5, 5, 'Live');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_tags`
--
ALTER TABLE `tbl_food_menus_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_menus_tags_mid` (`food_menu_id`),
  ADD KEY `FK_menus_tags_tid` (`tag_id`);

--
-- Indexes for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_tags`
--
ALTER TABLE `tbl_food_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_tags_items`
--
ALTER TABLE `tbl_food_tags_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Tags_Items` (`tag_id`);

--
-- Indexes for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details_tags`
--
ALTER TABLE `tbl_holds_details_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ipp_methods`
--
ALTER TABLE `tbl_ipp_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_match_products`
--
ALTER TABLE `tbl_match_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details_tags`
--
ALTER TABLE `tbl_sales_details_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_food_menus_tags`
--
ALTER TABLE `tbl_food_menus_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_food_tags`
--
ALTER TABLE `tbl_food_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_food_tags_items`
--
ALTER TABLE `tbl_food_tags_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_holds_details_tags`
--
ALTER TABLE `tbl_holds_details_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_ipp_methods`
--
ALTER TABLE `tbl_ipp_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_match_products`
--
ALTER TABLE `tbl_match_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sales_details_tags`
--
ALTER TABLE `tbl_sales_details_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1441;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_food_menus_tags`
--
ALTER TABLE `tbl_food_menus_tags`
  ADD CONSTRAINT `FK_menus_tags_mid` FOREIGN KEY (`food_menu_id`) REFERENCES `tbl_food_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_menus_tags_tid` FOREIGN KEY (`tag_id`) REFERENCES `tbl_food_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_food_tags_items`
--
ALTER TABLE `tbl_food_tags_items`
  ADD CONSTRAINT `FK_Tags_Items` FOREIGN KEY (`tag_id`) REFERENCES `tbl_food_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
