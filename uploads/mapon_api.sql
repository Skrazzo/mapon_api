-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2023 at 07:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mapon_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `doc_name` text NOT NULL,
  `doc_path` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezonecity`
--

CREATE TABLE `timezonecity` (
  `time_zone` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `std_abbr` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `dst_abbr` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `std_offset` float NOT NULL DEFAULT 0,
  `dst_offset` float NOT NULL DEFAULT 0,
  `std_full` varchar(128) NOT NULL,
  `dst_full` varchar(128) NOT NULL,
  `place_name` varchar(128) NOT NULL,
  `place_id` varchar(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `region_code` varchar(12) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `region_name` varchar(64) NOT NULL,
  `country_code` varchar(2) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `country_name` varchar(128) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timezonecity`
--

INSERT INTO `timezonecity` (`time_zone`, `std_abbr`, `dst_abbr`, `std_offset`, `dst_offset`, `std_full`, `dst_full`, `place_name`, `place_id`, `region_code`, `region_name`, `country_code`, `country_name`, `latitude`, `longitude`) VALUES
('Africa/Abidjan', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Abidjan', 'ChIJIZGVEVPqwQ8RpiGS4dwN5z8', '', '', 'CI', 'Côte d\'Ivoire', 5.3599517, -4.0082563),
('Africa/Accra', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Accra', 'ChIJc6e3soSQ3w8R0y0OZdhO0b4', '', '', 'GH', 'Ghana', 5.6037168, -0.1869644),
('Africa/Addis_Ababa', 'EAT', '', 3, 3, 'East Africa Time', '', 'Addis Ababa', 'ChIJLUCr9c6FSxYRSU2iN7C2Z4Q', '', '', 'ET', 'Ethiopia', 8.9806034, 38.7577605),
('Africa/Algiers', 'CET', '', 1, 1, 'Central European Time', '', 'Algiers', 'ChIJn2Xqd2myjxIRSW-jOC0QMUI', '', '', 'DZ', 'Algeria', 36.753768, 3.0587561),
('Africa/Asmara', 'EAT', '', 3, 3, 'East Africa Time', '', 'Asmara', 'ChIJqTPJtDvybRYRxfVjryezwbg', '', '', 'ER', 'Eritrea', 15.3228767, 38.9250517),
('Africa/Bamako', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Bamako', 'ChIJkQpFJxLNUQ4RFWBQUuFAPJ4', '', '', 'ML', 'Mali', 12.6392316, -8.0028892),
('Africa/Bangui', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Bangui', 'ChIJA6pX7RzvuBARGVX-9l1svQk', '', '', 'CF', 'Central African Republic', 4.3946735, 18.5581899),
('Africa/Banjul', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Banjul', 'ChIJBzivZSmcwg4RUiyu-1EX46E', '', '', 'GM', 'Gambia', 13.4548761, -16.5790323),
('Africa/Bissau', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Bissau', 'ChIJC1Q2MN7a5g4RhUjTg4gMYHw', '', '', 'GW', 'Guinea-Bissau', 11.8816553, -15.6177942),
('Africa/Blantyre', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Blantyre', 'ChIJXwDAyxNF2BgR5hHY5NpYYyM', '', '', 'MW', 'Malawi', -15.7666707, 35.0167866),
('Africa/Brazzaville', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Brazzaville', 'ChIJO7gbRKwyahoRQ-R9vrrqPas', '', '', 'CG', 'Republic of the Congo', -4.2633597, 15.2428853),
('Africa/Bujumbura', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Bujumbura', 'ChIJozWgKA-DwRkRw6RQe7mp6w8', '', '', 'BI', 'Burundi', -3.361378, 29.3598782),
('Africa/Cairo', 'EET', '', 2, 2, 'Eastern European Time', '', 'Cairo', 'ChIJ674hC6Y_WBQRujtC6Jay33k', '', '', 'EG', 'Egypt', 30.0444196, 31.2357116),
('Africa/Casablanca', 'CET', '', 1, 1, 'Central European Time', '', 'Casablanca', 'ChIJOxGqeEfNpw0R0w8xT9jBBgs', '', '', 'MA', 'Morocco', 33.5731104, -7.5898434),
('Africa/Ceuta', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Ceuta', 'ChIJ76wp6eejDA0RQMahjP1jBAQ', '', '', 'ES', 'Spain', 35.8893874, -5.3213455),
('Africa/Conakry', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Conakry', 'ChIJKeGIoyrRHA8R1EHTaRXeZoo', '', '', 'GN', 'Guinea', 9.6411855, -13.5784012),
('Africa/Dakar', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Dakar', 'ChIJcbvFs_VywQ4RH7JdLdkXfLE', '', '', 'SN', 'Senegal', 14.7645042, -17.3660286),
('Africa/Dar_es_Salaam', 'EAT', '', 3, 3, 'East Africa Time', '', 'Dar es Salaam', 'ChIJ8dabFq5LXBgR3aGGoCZrD5Q', '', '', 'TZ', 'Tanzania', -6.792354, 39.2083284),
('Africa/Djibouti', 'EAT', '', 3, 3, 'East Africa Time', '', 'Djibouti', 'ChIJsx453s8AIxYRrCEofTqaKqE', '', '', 'DJ', 'Djibouti', 11.5720765, 43.1456475),
('Africa/Douala', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Douala', 'ChIJbf7h4osSYRARi8SBR0Sh2pI', '', '', 'CM', 'Cameroon', 4.0510564, 9.7678687),
('Africa/El_Aaiun', 'CET', '', 1, 1, 'Central European Time', '', 'El-Aaiún', 'ChIJyXmwFsZyNwwRX85fVSsN6ps', '', '', 'EH', 'Western Sahara', 27.1252867, -13.1625005),
('Africa/Freetown', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Freetown', 'ChIJMwbms1bCBA8RHjwBr8jIt5c', '', '', 'SL', 'Sierra Leone', 8.4656765, -13.2317225),
('Africa/Gaborone', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Gaborone', 'ChIJv6nuLDxbux4RoRGul5N2oUk', '', '', 'BW', 'Botswana', -24.6282079, 25.9231471),
('Africa/Harare', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Harare', 'ChIJNdvdG-6kMRkRL08T5Zs7FKU', '', '', 'ZW', 'Zimbabwe', -17.8251657, 31.03351),
('Africa/Johannesburg', 'SAST', '', 2, 2, 'South Africa Standard Time', '', 'Johannesburg', 'ChIJUWpA8GgMlR4RQUDTsdnJiiM', '', '', 'ZA', 'South Africa', -26.2041028, 28.0473051),
('Africa/Juba', 'EAT', '', 3, 3, 'East Africa Time', '', 'Juba', 'ChIJ-bXzvEqAEhcRM8RGYyg5mNg', '', '', 'SS', 'South Sudan', 4.859363, 31.57125),
('Africa/Kampala', 'EAT', '', 3, 3, 'East Africa Time', '', 'Kampala', 'ChIJm7N0nQ-8fRcR7G9r2T2QOEU', '', '', 'UG', 'Uganda', 0.3475964, 32.5825197),
('Africa/Khartoum', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Khartoum', 'ChIJv8o3mN6PjhYRQNtnft5VHxk', '', '', 'SD', 'Sudan', 15.5006544, 32.5598994),
('Africa/Kigali', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Kigali', 'ChIJl-fYjiWk3BkRyAsdQaU2K_M', '', '', 'RW', 'Rwanda', -1.9705786, 30.1044288),
('Africa/Kinshasa', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Kinshasa', 'ChIJi2oG_jAxahoRjTdSH05-ixY', '', '', 'CD', 'Democratic Republic of the Congo', -4.4419311, 15.2662931),
('Africa/Lagos', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Lagos', 'ChIJwYCC5iqLOxARy9nDZ6OHntw', '', '', 'NG', 'Nigeria', 6.5243793, 3.3792057),
('Africa/Libreville', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Libreville', 'ChIJ7fM4VIo7fxARwivSfPLiwns', '', '', 'GA', 'Gabon', 0.4161976, 9.4672676),
('Africa/Lome', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Lome', 'ChIJGVQYE8HhIxARHUGvLEK1JDI', '', '', 'TG', 'Togo', 6.1724969, 1.2313618),
('Africa/Luanda', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Luanda', 'ChIJfSyN3FzxURoRklrMXlwcDIU', '', '', 'AO', 'Angola', -8.8399876, 13.2894368),
('Africa/Lubumbashi', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Lubumbashi', 'ChIJ2ct0SKM-chkRL1uAT6f1xqE', '', '', 'CD', 'Democratic Republic of the Congo', -11.6876026, 27.5026174),
('Africa/Lusaka', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Lusaka', 'ChIJSaq8PH3zQBkR6xMgRsGT0NA', '', '', 'ZM', 'Zambia', -15.3875259, 28.3228165),
('Africa/Malabo', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Malabo', 'ChIJHyxxSOSeZhARDN-xZtaegJc', '', '', 'GQ', 'Equatorial Guinea', 3.7504118, 8.7371039),
('Africa/Maputo', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Maputo', 'ChIJVdpmtiOX5h4RQrRrmld_SUI', '', '', 'MZ', 'Mozambique', -25.891968, 32.6051351),
('Africa/Maseru', 'SAST', '', 2, 2, 'South Africa Standard Time', '', 'Maseru', 'ChIJczbLRjE1jB4RwCiMvILPAAQ', '', '', 'LS', 'Lesotho', -29.3632188, 27.5143603),
('Africa/Mbabane', 'SAST', '', 2, 2, 'South Africa Standard Time', '', 'Mbabane', 'ChIJBw8yR-HO6B4Rn93hevKYv3o', '', '', 'SZ', 'Swaziland', -26.3054482, 31.1366715),
('Africa/Mogadishu', 'EAT', '', 3, 3, 'East Africa Time', '', 'Mogadishu', 'ChIJU2vOVVlCWD0R2VnMUqrqILs', '', '', 'SO', 'Somalia', 2.0469343, 45.3181623),
('Africa/Monrovia', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Monrovia', 'ChIJwfyp1AP4CQ8Rr5SWBtdNbFs', '', '', 'LR', 'Liberia', 6.2907432, -10.7605239),
('Africa/Nairobi', 'EAT', '', 3, 3, 'East Africa Time', '', 'Nairobi', 'ChIJp0lN2HIRLxgRTJKXslQCz_c', '', '', 'KE', 'Kenya', -1.2920659, 36.8219462),
('Africa/Ndjamena', 'WAT', '', 1, 1, 'Western Africa Time', '', 'N\'Djamena', 'ChIJT_f8GM1jGRERO6rSdizpo7g', '', '', 'TD', 'Chad', 12.1348457, 15.0557415),
('Africa/Niamey', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Niamey', 'ChIJZfzdwGx10BERTrd32q9LzoE', '', '', 'NE', 'Niger', 13.5115963, 2.1253854),
('Africa/Nouakchott', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Nouakchott', 'ChIJvensFmxSlg4R-eHBU70FACc', '', '', 'MR', 'Mauritania', 18.0735299, -15.9582372),
('Africa/Ouagadougou', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Ouagadougou', 'ChIJzUSqzuyVLg4Rizt0nHlnn3k', '', '', 'BF', 'Burkina Faso', 12.3714277, -1.5196603),
('Africa/Porto-Novo', 'WAT', '', 1, 1, 'Western Africa Time', '', 'Porto-Novo', 'ChIJn0veCvFZOxARVlpR2g3nZOE', '', '', 'BJ', 'Benin', 6.4968574, 2.6288523),
('Africa/Sao_Tome', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'São Tomé and Príncipe', 'ChIJidiaC_nscBAR6jB2VQwjUWI', '', '', 'ST', 'São Tomé and Príncipe', 0.18636, 6.613081),
('Africa/Tripoli', 'EET', '', 2, 2, 'Eastern European Time', '', 'Tripoli', 'ChIJ2UMcwcSSqBMRhuxce5TYmY0', '', '', 'LY', 'Libya', 32.8872094, 13.1913383),
('Africa/Tunis', 'CET', '', 1, 1, 'Central European Time', '', 'Tunis', 'ChIJQ_V-Xn8z_RIRdQJKcU6ScdY', '', '', 'TN', 'Tunisia', 36.8064948, 10.1815316),
('Africa/Windhoek', 'CAT', '', 2, 2, 'Central Africa Time', '', 'Windhoek', 'ChIJ7QEMs1wbCxwRO11EzEBJuOQ', '', '', 'NA', 'Namibia', -22.5608807, 17.0657549),
('America/Adak', 'HST', 'HDT', -10, -9, 'Hawaii–Aleutian Standard Time', 'Hawaii–Aleutian Daylight Time', 'Adak', 'ChIJyziWEO_NkVcRNQyneFMrM_M', 'AK', 'Alaska', 'US', 'United States', 51.88, -176.6580556),
('America/Anchorage', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Anchorage', 'ChIJQT-zBHaRyFYR42iEp1q6fSU', 'AK', 'Alaska', 'US', 'United States', 61.2180556, -150.2862832),
('America/Anguilla', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Anguilla', 'ChIJ5QHvjnRjDowRgdTghNNqnTs', '', '', 'AI', 'Anguilla', 18.220554, -63.068615),
('America/Antigua', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Antigua and Barbuda', 'ChIJwdG4bbluDYwRlHmL4Yg3aic', '', '', 'AG', 'Antigua and Barbuda', 17.060816, -61.796428),
('America/Araguaina', 'BRT', '', -3, -3, 'Brazil Time', '', 'Araguaína', 'ChIJ-0-MXd4N2ZIR_MRN5hXoMEo', 'TO', 'State of Tocantins', 'BR', 'Brazil', -7.1927733, -48.20483),
('America/Argentina/Buenos_Aires', 'ART', '', -3, -3, 'Argentina Time', '', 'Buenos Aires', 'ChIJvQz5TjvKvJURh47oiC6Bs6A', '', 'Buenos Aires', 'AR', 'Argentina', -34.6036844, -58.3815591),
('America/Argentina/Catamarca', 'ART', '', -3, -3, 'Argentina Time', '', 'Catamarca', 'ChIJzZ8PHb8oJJQRGoYJFkvdHn4', '', 'Catamarca', 'AR', 'Argentina', -28.469581, -65.7795441),
('America/Argentina/Cordoba', 'ART', '', -3, -3, 'Argentina Time', '', 'Córdoba', 'ChIJaVuPR1-YMpQRkrBmU5pPorA', '', 'Cordoba', 'AR', 'Argentina', -31.4200833, -64.1887761),
('America/Argentina/Jujuy', 'ART', '', -3, -3, 'Argentina Time', '', 'San Salvador de Jujuy', 'ChIJhwBc5_ahBJQReU7OMLKRXoE', '', 'Jujuy', 'AR', 'Argentina', -24.1843397, -65.302177),
('America/Argentina/La_Rioja', 'ART', '', -3, -3, 'Argentina Time', '', 'La Rioja', 'ChIJ5feWM4fZJ5QRysdyiTScHD4', '', 'La Rioja', 'AR', 'Argentina', -29.4134538, -66.8564579),
('America/Argentina/Mendoza', 'ART', '', -3, -3, 'Argentina Time', '', 'Mendoza', 'ChIJv3lRxD4JfpYROvoO0vZ4WiA', '', 'Mendoza', 'AR', 'Argentina', -32.8894587, -68.8458386),
('America/Argentina/Rio_Gallegos', 'ART', '', -3, -3, 'Argentina Time', '', 'Río Gallegos', 'ChIJ5WYcslL5tr0RAnFkR_JBfKs', '', 'Santa Cruz', 'AR', 'Argentina', -51.6230485, -69.2168291),
('America/Argentina/Salta', 'ART', '', -3, -3, 'Argentina Time', '', 'Salta', 'ChIJ-bdRUaPDG5QRBvKH1SyZzaU', '', 'Salta', 'AR', 'Argentina', -24.7821269, -65.4231976),
('America/Argentina/San_Juan', 'ART', '', -3, -3, 'Argentina Time', '', 'San Juan', 'ChIJl9Q8oylAgZYRs_w8I6Cj878', '', 'San Juan', 'AR', 'Argentina', -31.5351074, -68.5385941),
('America/Argentina/San_Luis', 'ART', '', -3, -3, 'Argentina Time', '', 'San Luis', 'ChIJzaZsGVQ51JURg8ye1LTjwn8', '', 'San Luis', 'AR', 'Argentina', -33.3017267, -66.3377522),
('America/Argentina/Tucuman', 'ART', '', -3, -3, 'Argentina Time', '', 'San Miguel de Tucumán', 'ChIJA2nF1pI3IpQRJ2XFtZJbjfg', '', 'Tucumán', 'AR', 'Argentina', -26.8082848, -65.2175903),
('America/Argentina/Ushuaia', 'ART', '', -3, -3, 'Argentina Time', '', 'Ushuaia', 'ChIJvwnRurUiTLwR_OtDuj1HmFQ', '', 'Tierra del Fuego', 'AR', 'Argentina', -54.8019121, -68.3029511),
('America/Aruba', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Oranjestad', 'ChIJN4q-Qds4hY4Ro2I-jCDbM00', '', '', 'AW', 'Aruba', 12.5092044, -70.0086306),
('America/Asuncion', 'PYT', 'PYST', -4, -3, 'Paraguay Time', 'Paraguay Summer Time', 'Asunción', 'ChIJ9dtpbgeoXZQRyTYZv0Z666w', '', '', 'PY', 'Paraguay', -25.2637399, -57.575926),
('America/Atikokan', 'EST', '', -5, -5, 'Eastern Standard Time', '', 'Atikokan', 'ChIJi6Hs-OX2o1IRRtqeZn8J1cA', 'ON', 'Ontario', 'CA', 'Canada', 48.7597531, -91.6181716),
('America/Bahia', 'BRT', '', -3, -3, 'Brazil Time', '', 'Salvador', 'ChIJs6U8onwDFgcRmGYiLJHHnxs', 'BA', 'State of Bahia', 'BR', 'Brazil', -12.9722184, -38.5014136),
('America/Bahia_Banderas', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Puerto Vallarta', 'ChIJf8hjUGNFIYQRdFK_hZm_z3k', 'JA', 'Jalisco', 'MX', 'Mexico', 20.653407, -105.2253316),
('America/Barbados', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Bridgetown', 'ChIJPflM-sL2Q4wRaXCGlWrmwX0', '', 'Saint Michael', 'BB', 'Barbados', 13.0968511, -59.6144819),
('America/Belem', 'BRT', '', -3, -3, 'Brazil Time', '', 'Belém', 'ChIJX26Y9WlmpJIRzImxai3bNuM', 'PA', 'State of Pará', 'BR', 'Brazil', -1.4557794, -48.4901968),
('America/Belize', 'CST', '', -6, -6, 'Central Standard Time', '', 'Belize City', 'ChIJz3czSEtYXI8RIv8SkG7c2-E', '', '', 'BZ', 'Belize', 17.5045661, -88.1962133),
('America/Blanc-Sablon', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Blanc-Sablon', 'ChIJlUDQIumqgUsRlfMTNc2YhwI', 'QC', 'Quebec', 'CA', 'Canada', 51.4264451, -57.1313148),
('America/Boa_Vista', 'AMT', '', -4, -4, 'Amazon Time', '', 'Boa Vista', 'ChIJ26Sqy8oFk40RRV_XqcdlLrc', 'RR', 'State of Roraima', 'BR', 'Brazil', 2.8235098, -60.6758331),
('America/Bogota', 'COT', '', -5, -5, 'Colombia Time', '', 'Bogotá', 'ChIJKcumLf2bP44RFDmjIFVjnSM', '', 'Bogota', 'CO', 'Colombia', 4.7109886, -74.072092),
('America/Boise', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Boise', 'ChIJnbRH6XLxrlQRm51nNpuYW5o', 'ID', 'Idaho', 'US', 'United States', 43.6187102, -116.2146068),
('America/Cambridge_Bay', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Cambridge Bay', 'ChIJN50cHLYGjVER_5jAOofCfVQ', 'NU', 'Nunavut', 'CA', 'Canada', 69.1168641, -105.0596814),
('America/Campo_Grande', 'AMT', 'AMST', -4, -3, 'Amazon Summer Time', '', 'Campo Grande', 'ChIJJ58ra3LmhpQRwdKEvJ5GqPU', 'MS', 'State of Mato Grosso do Sul', 'BR', 'Brazil', -20.4697105, -54.6201211),
('America/Cancun', 'EST', '', -5, -5, 'Eastern Standard Time', '', 'Cancún', 'ChIJ21P2rgUrTI8Ris1fYjy3Ms4', 'QR', 'Quintana Roo', 'MX', 'Mexico', 21.161908, -86.8515279),
('America/Caracas', 'VET', '', -4, -4, 'Venezuela Standard Time', '', 'Caracas', 'ChIJB0iCza1YKowRg4SZCq4u3ZM', '', 'Capital District', 'VE', 'Venezuela', 10.4805937, -66.9036063),
('America/Cayenne', 'GFT', '', -3, -3, 'French Guiana Time', '', 'Cayenne', 'ChIJnbdK2zo9Eo0RKLaviyl-VnM', '', '', 'GF', 'French Guiana', 4.92242, -52.3134531),
('America/Cayman', 'EST', '', -5, -5, 'Eastern Standard Time', '', 'Cayman Islands', 'ChIJKaq4Lz6GJY8RXnFwh9PERXA', '', '', 'KY', 'Cayman Islands', 19.3133, -81.2546),
('America/Chicago', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Chicago', 'ChIJ7cv00DwsDogRAMDACa2m4K8', 'IL', 'Illinois', 'US', 'United States', 41.8781136, -87.6297982),
('America/Chihuahua', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Chihuahua City', 'ChIJM0BIXZ1E6oYRex3dBqen8bc', 'CI', 'Chihuahua', 'MX', 'Mexico', 28.6329957, -106.0691004),
('America/Costa_Rica', 'CST', '', -6, -6, 'Central Standard Time', '', 'San José', 'ChIJxRUNxULjoI8RgrgRn2pqdOY', '', 'San José Province', 'CR', 'Costa Rica', 9.9280694, -84.0907246),
('America/Creston', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Creston', 'ChIJjaASpuFiY1MRxocXVm-rB3U', 'BC', 'British Columbia', 'CA', 'Canada', 49.0955401, -116.5135079),
('America/Cuiaba', 'AMT', 'AMST', -4, -3, 'Amazon Summer Time', '', 'Cuiabá', 'ChIJxU_YcGalnZMRDlEOkAhOUE4', 'MT', 'State of Mato Grosso', 'BR', 'Brazil', -15.6014109, -56.0978917),
('America/Curacao', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Willemstad', 'ChIJVy-mDF-ChI4R701VMbSSSR8', '', '', 'CW', 'Curaçao', 12.1224221, -68.8824233),
('America/Dawson', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Dawson', 'ChIJt7X11MvjSFER_R-tXLl6jUo', 'YT', 'Yukon Territory', 'CA', 'Canada', 64.0600696, -139.4320347),
('America/Dawson_Creek', 'MST', '', -7, -7, 'Mountain Standard Time', '', 'Dawson Creek', 'ChIJuYcHfjaZkVMRMDF7KhU1AQU', 'BC', 'British Columbia', 'CA', 'Canada', 55.7596274, -120.2376623),
('America/Denver', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Denver', 'ChIJzxcfI6qAa4cR1jaKJ_j0jhE', 'CO', 'Colorado', 'US', 'United States', 39.7392358, -104.990251),
('America/Detroit', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Detroit', 'ChIJdR3LEAHKJIgR0sS5NU6Gdlc', 'MI', 'Michigan', 'US', 'United States', 42.331427, -83.0457538),
('America/Dominica', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Roseau', 'ChIJi-_ydpHVFIwRc7Ors5wyL1o', '', 'Saint George Parish', 'DM', 'Dominica', 15.3091676, -61.3793554),
('America/Edmonton', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Edmonton', 'ChIJI__egEUioFMRXRX2SgygH0E', 'AB', 'Alberta', 'CA', 'Canada', 53.544389, -113.4909267),
('America/Eirunepe', 'ACT', '', -5, -5, 'Acre Time', '', 'Eirunepé', 'ChIJwaUQiUNNjpEROyjJajE1KXQ', 'AM', 'State of Amazonas', 'BR', 'Brazil', -6.8416993, -70.2408325),
('America/El_Salvador', 'CST', '', -6, -6, 'Central Standard Time', '', 'San Salvador', 'ChIJXXcRtGcwY48Rllz7k4iXdR8', '', 'San Salvador Department', 'SV', 'El Salvador', 13.6929403, -89.2181911),
('America/Fortaleza', 'BRT', '', -3, -3, 'Brazil Time', '', 'Fortaleza', 'ChIJP3hMRj9MxwcRyjdrDArGYUY', 'CE', 'State of Ceará', 'BR', 'Brazil', -3.7319029, -38.5267393),
('America/Fort_Nelson', 'MST', '', -7, -7, 'Mountain Standard Time', '', 'Fort Nelson', 'ChIJ_YagDZGt7lMRcABevVhCLl8', 'BC', 'British Columbia', 'CA', 'Canada', 58.8050174, -122.697236),
('America/Glace_Bay', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Glace Bay', 'ChIJt2_q3snhZ0sRaNZPIXYopAk', 'NC', 'Nova Scotia', 'CA', 'Canada', 46.1969191, -59.9570044),
('America/Godthab', 'WGT', 'WGST', -3, -2, 'West Greenland Time', 'West Greenland Summer Time', 'Nuuk', 'ChIJJSezGs4Nok4RBiNpTfsl5D0', '', '', 'GL', 'Greenland', 64.1814099, -51.694138),
('America/Goose_Bay', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Goose Bay', 'ChIJ5Z1mlIZ6e0wRIK8_HPIMMeA', 'NL', 'Newfoundland and Labrador', 'CA', 'Canada', 53.3016826, -60.3260842),
('America/Grand_Turk', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Grand Turk', 'ChIJhfVNCVTUso4RT2TEeMPZA8s', '', 'Turks Islands', 'TC', 'Turks and Caicos Islands', 21.4674584, -71.1389101),
('America/Grenada', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'St George\'s', 'ChIJmYUAaXghOIwRKlw7DZBdMgI', '', '', 'GD', 'Grenada', 12.0560975, -61.7487996),
('America/Guadeloupe', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Basse-Terre', 'ChIJtV0H1dyfFIwRyBIShWxtwWg', '', '', 'GP', 'Guadeloupe', 16.0341215, -61.6947193),
('America/Guatemala', 'CST', '', -6, -6, 'Central Standard Time', '', 'Guatemala City', 'ChIJRTNcZYChiYURJXuGW4HHcko', '', 'Guatemala Department', 'GT', 'Guatemala', 14.6349149, -90.5068824),
('America/Guayaquil', 'ECT', '', -5, -5, 'Ecuador Time', '', 'Guayaquil', 'ChIJX4BV6MsTLZARc6T89JKkFYA', '', '', 'EC', 'Ecuador', -2.1709979, -79.9223592),
('America/Guyana', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Georgetown', 'ChIJs8LYYK_vr40RfesAC0SkwnI', '', 'Demerara-Mahaica', 'GY', 'Guyana', 6.8012793, -58.1551255),
('America/Halifax', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Halifax', 'ChIJxesm0LsTRUsRW2dKWg1nkM0', 'NS', 'Nova Scotia', 'CA', 'Canada', 44.6487635, -63.5752387),
('America/Havana', 'CST', 'CDT', -5, -4, 'Cuba Standard Time', 'Cuba Daylight Time', 'Havana', 'ChIJ4QD2vUx3zYgRYA13Gn5NKU4', '', '', 'CU', 'Cuba', 23.1135925, -82.3665956),
('America/Hermosillo', 'MST', '', -7, -7, 'Mountain Standard Time', '', 'Hermosillo', 'ChIJ5a7femiEzoYR-X-I6ZVTPbM', 'SO', 'Sonora', 'MX', 'Mexico', 29.0729673, -110.9559192),
('America/Indiana/Indianapolis', 'EST', 'EDT', -5, 0, 'Eastern Standard Time', 'Eastern Daylight Time', 'Indianapolis', 'ChIJA2p5p_9Qa4gRfOq5QPadjtY', 'IN', 'Indiana', 'US', 'United States', 39.768403, -86.158068),
('America/Indiana/Knox', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Knox', 'ChIJ169K0d9gEYgRpg8yGM05FN0', 'IN', 'Indiana', 'US', 'United States', 41.2958751, -86.6250139),
('America/Indiana/Marengo', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Marengo', 'ChIJO2pc_2OxbogRvSwq2XkpRwA', 'IN', 'Indiana', 'US', 'United States', 38.3692276, -86.3435917),
('America/Indiana/Petersburg', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Petersburg', 'ChIJqVBRdcoNbogRZq4XMNMv2AQ', 'IN', 'Indiana', 'US', 'United States', 38.4919935, -87.2786244),
('America/Indiana/Tell_City', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Tell City', 'ChIJlcpY2mfkbogR-erzK9meRZQ', 'IN', 'Indiana', 'US', 'United States', 37.9514447, -86.7677663),
('America/Indiana/Vevay', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Vevay', 'ChIJc9ym8hUOaogRXArN0_bljT0', 'IN', 'Indiana', 'US', 'United States', 38.7478401, -85.0671725),
('America/Indiana/Vincennes', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Vincennes', 'ChIJh2QBtzLibYgReOtF1Y1dBfM', 'IN', 'Indiana', 'US', 'United States', 38.677269, -87.5286325),
('America/Indiana/Winamac', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Winamac', 'ChIJ08WQUsDCE4gRpptaqfrOqMI', 'IN', 'Indiana', 'US', 'United States', 41.0514299, -86.6030648),
('America/Inuvik', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Inuvik', 'ChIJ0Zb5lT-SFFERhLevN6KRI1I', 'NT', 'Northwest Territories', 'CA', 'Canada', 68.3607437, -133.7230177),
('America/Iqaluit', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Iqaluit', 'ChIJB9qKcEcW000RwimRfAbQHh8', 'NU', 'Nunavut', 'CA', 'Canada', 63.746693, -68.5169669),
('America/Jamaica', 'EST', '', -5, -5, 'Eastern Standard Time', '', 'Kingston', 'ChIJodLehJc_244RQK-3q78h8yQ', '', 'St. Andrew Parish', 'JM', 'Jamaica', 18.0178743, -76.8099041),
('America/Juneau', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Juneau', 'ChIJjzpqb2zeAFQREfNprlryXgY', 'AK', 'Alaska', 'US', 'United States', 58.3019444, -134.4197222),
('America/Kentucky/Louisville', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Louisville', 'ChIJEdVbsxoLaYgRMv1xICi009Q', 'KY', 'Kentucky', 'US', 'United States', 38.2526647, -85.7584557),
('America/Kentucky/Monticello', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Monticello', 'ChIJtdFZV_9dXYgRkIVx-dTqaKk', 'KY', 'Kentucky', 'US', 'United States', 36.8297937, -84.8491126),
('America/Kralendijk', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Kralendijk', 'ChIJJ1kXc7Abg44RUlePIm2dJys', '', 'Bonaire', 'BQ', 'Caribbean Netherlands', 12.1443491, -68.2655456),
('America/La_Paz', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'La Paz', 'ChIJD6T1BArfXpERs4pFtHb821c', '', 'La Paz Department', 'BO', 'Bolivia', -16.489689, -68.1192936),
('America/Lima', 'PET', '', -5, -5, 'Peru Time', '', 'Lima', 'ChIJxz7uGfbFBZERSi5FzLlsIBQ', '', 'Callao Region', 'PE', 'Peru', -12.0463731, -77.042754),
('America/Los_Angeles', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Los Angeles', 'ChIJE9on3F3HwoAR9AhGJW_fL-I', 'CA', 'California', 'US', 'United States', 34.0522342, -118.2436849),
('America/Lower_Princes', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Sint Maarten', 'ChIJw5D41mJuDowRQo8zJsIsi3I', '', '', 'SX', 'Sint Maarten', 18.04248, -63.05483),
('America/Maceio', 'BRT', '', -3, -3, 'Brazil Time', '', 'Maceió', 'ChIJSYho1vxGAQcRU3bgQ1tyLO4', 'AL', 'State of Alagoas', 'BR', 'Brazil', -9.6498487, -35.7089492),
('America/Managua', 'CST', '', -6, -6, 'Central Standard Time', '', 'Managua', 'ChIJC4gH2Q1WcY8RakxPFKL0Xmw', 'MN', 'Managua Department', 'NI', 'Nicaragua', 12.1149926, -86.2361744),
('America/Manaus', 'AMT', '', -4, -4, 'Amazon Time', '', 'Manaus', 'ChIJt0d2s8gbbJIRzKll959cSCs', 'AM', 'State of Amazonas', 'BR', 'Brazil', -3.1190275, -60.0217314),
('America/Marigot', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Marigot', 'ChIJaZk0iRhvDowRZK4FYfyblzA', '', '', 'MF', 'Saint Martin', 18.0675189, -63.0824656),
('America/Martinique', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Martinique', 'ChIJDQdmAPmgaowRsOevFxIbAOE', '', '', 'MQ', 'Martinique', 14.641528, -61.024174),
('America/Matamoros', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Matamoros', 'ChIJhwDRk8eUb4YRXsoTOXB4IXM', 'TM', 'Tamaulipas', 'MX', 'Mexico', 25.8690294, -97.5027376),
('America/Mazatlan', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Mazatlan', 'ChIJwTcYaEFTn4YRsnI88arEpGI', 'SI', 'Sinaloa', 'MX', 'Mexico', 23.2494148, -106.4111425),
('America/Menominee', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Menominee', 'ChIJ_cWIDgihUk0R7IC-Ef0ptEo', 'MI', 'Michigan', 'US', 'United States', 45.1077627, -87.6142737),
('America/Merida', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Mérida', 'ChIJFw1Fq1xxVo8RCeurFVcV_F0', 'YC', 'Yucatán', 'MX', 'Mexico', 20.9673702, -89.5925857),
('America/Metlakatla', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Metlakatla', 'ChIJj7T4kPE1DFQRczY3dom-v30', 'AK', 'Alaska', 'US', 'United States', 55.1291667, -131.5722222),
('America/Mexico_City', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Mexico City', 'ChIJB3UJ2yYAzoURQeheJnYQBlQ', 'DF', 'México D.F.', 'MX', 'Mexico', 19.4326077, -99.133208),
('America/Miquelon', 'PMST', 'PMDT', -3, -2, 'Pierre & Miquelon Standard Time', 'Pierre & Miquelon Daylight Time', 'Miquelon-Langlade', 'ChIJyeWpbdLPbUsRFSQa_JBQ2EU', '', '', 'PM', 'Saint Pierre and Miquelon', 46.8454114, -56.3075281),
('America/Moncton', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Moncton', 'ChIJZRfUGCm5oEwRxGNOOjMKwQ0', 'NB', 'New Brunswick', 'CA', 'Canada', 46.0878165, -64.7782313),
('America/Monterrey', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Monterrey', 'ChIJ9fg3tDGVYoYRlJjIasrT06M', 'NL', 'Nuevo León', 'MX', 'Mexico', 25.6866142, -100.3161126),
('America/Montevideo', 'UYT', '', -3, -3, 'Uruguay Time', '', 'Montevideo', 'ChIJ0_c7xv-An5URmexbNS4bMms', '', 'Montevideo Department', 'UY', 'Uruguay', -34.9011127, -56.1645314),
('America/Montserrat', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Montserrat', 'ChIJnTbH4VOrE4wRorEFiIPqDx4', '', '', 'MS', 'Montserrat', 16.742498, -62.187366),
('America/Nassau', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Nassau', 'ChIJyduBuZl8L4kR0lBeSNMB7yo', '', 'New Providence', 'BS', 'Bahamas', 25.0479835, -77.355413),
('America/New_York', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'New York', 'ChIJOwg_06VPwokRYv534QaPC8g', 'NY', 'New York', 'US', 'United States', 40.7127837, -74.0059413),
('America/Nipigon', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Nipigon', 'ChIJHeeufJ4VXE0RS0sbTHchEds', 'ON', 'Ontario', 'CA', 'Canada', 49.0157351, -88.268316),
('America/Nome', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Nome', 'ChIJeVU4FigaMVcRTIR2WHExdUE', 'AK', 'Alaska', 'US', 'United States', 64.5011111, -165.4063889),
('America/Noronha', 'FNT', '', -2, -2, 'Fernando de Noronha Time', '', 'Fernando de Noronha', 'ChIJOWh_3_NNNgYRX_uAIubgNYw', 'PE', 'State of Pernambuco', 'BR', 'Brazil', -3.8447976, -32.4268917),
('America/North_Dakota/Beulah', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Beulah', 'ChIJOe6TNwmJJ1MRZe5G4VwXk2Q', 'ND', 'North Dakota', 'US', 'United States', 47.2633403, -101.7779462),
('America/North_Dakota/Center', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Center', 'ChIJ0S1T1Ak82FIRfLrGXKDUnx0', 'ND', 'North Dakota', 'US', 'United States', 47.1163849, -101.299594),
('America/North_Dakota/New_Salem', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'New Salem', 'ChIJHXMZgysC2FIRYYqc9LP_2m8', 'ND', 'North Dakota', 'US', 'United States', 46.844999, -101.4112545),
('America/Ojinaga', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Ojinaga', 'ChIJjbmN83SQ7oYR5ciccrxYrkA', 'CI', 'Chihuahua', 'MX', 'Mexico', 29.5450601, -104.4129887),
('America/Panama', 'EST', '', -5, -5, 'Eastern Standard Time', '', 'Panama City', 'ChIJYwPo2_GorI8RDsFC8PFdoqs', '', '', 'PA', 'Panama', 8.9823792, -79.5198696),
('America/Pangnirtung', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Pangnirtung', 'ChIJGXGRrnzJf04RuU5pdocC_p0', 'NU', 'Nunavut', 'CA', 'Canada', 66.1465578, -65.7012182),
('America/Paramaribo', 'SRT', '', -3, -3, 'Suriname Time', '', 'Paramaribo', 'ChIJQ_cD4iA1CI0RY0A_2nkgz5c', '', 'Paramaribo District', 'SR', 'Suriname', 5.8520355, -55.2038278),
('America/Phoenix', 'MST', '', -7, -7, 'Mountain Standard Time', '', 'Phoenix', 'ChIJy3mhUO0SK4cRrBtKNfjHaYw', 'AZ', 'Arizona', 'US', 'United States', 33.4483771, -112.0740373),
('America/Port-au-Prince', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Port-au-Prince', 'ChIJkao-UFfduY4RCKop-V2B1Tw', '', 'Ouest Department', 'HT', 'Haiti', 18.594395, -72.3074326),
('America/Porto_Velho', 'AMT', '', -4, -4, 'Amazon Time', '', 'Porto Velho', 'ChIJC1KYWWZbMpIRixnF0lry0HU', 'RO', 'State of Rondônia', 'BR', 'Brazil', -8.7611605, -63.9004303),
('America/Port_of_Spain', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Port of Spain', 'ChIJScNLF94HNowRhUINFlP23t0', '', '', 'TT', 'Trinidad and Tobago', 10.6549013, -61.5019256),
('America/Puerto_Rico', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'San Juan', 'ChIJbxlo4m9oA4wR3FqTXA9_a60', '', '', 'PR', 'Puerto Rico', 18.4655394, -66.1057355),
('America/Rainy_River', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Rainy River', 'ChIJTQ_jUbe2vlIRpqj7ldA-Abs', 'ON', 'Ontario', 'CA', 'Canada', 48.7216623, -94.5695247),
('America/Rankin_Inlet', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Rankin Inlet', 'ChIJKTAgDGD9C1IRp8tHbsKAPY4', 'NU', 'Nunavut', 'CA', 'Canada', 62.808375, -92.0852853),
('America/Recife', 'BRT', '', -3, -3, 'Brazil Time', '', 'Recife', 'ChIJ5UbEiG8ZqwcR1H9EIin1njw', 'PE', 'State of Pernambuco', 'BR', 'Brazil', -8.0475622, -34.8769643),
('America/Regina', 'CST', '', -6, -6, 'Central Standard Time', '', 'Regina', 'ChIJ6z2l-0AeHFMRsVR7t5YySjU', 'SK', 'Saskatchewan', 'CA', 'Canada', 50.4452112, -104.6188944),
('America/Resolute', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Resolute', 'ChIJm1f0-_Ma3FERtiOxFpJSa5g', 'NU', 'Nunavut', 'CA', 'Canada', 74.697299, -94.829729),
('America/Rio_Branco', 'ACT', '', -5, -5, 'Acre Time', '', 'Rio Branco', 'ChIJG7dkUx9kf5ERtlPdjrhiOsc', 'AC', 'State of Acre', 'BR', 'Brazil', -9.9753837, -67.824918),
('America/Santarem', 'BRT', '', -3, -3, 'Brazil Time', '', 'Santarém', 'ChIJ1UqwPCH5iJIRR9Zn150_voA', 'PA', 'State of Pará', 'BR', 'Brazil', -2.4506291, -54.7009228),
('America/Santa_Isabel', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Santa Isabel', 'ChIJ53YvRE5614ARiYIT5BZrVgo', 'BC', 'Baja California', 'MX', 'Mexico', 32.6326872, -115.5774649),
('America/Santiago', 'CLT', 'CLST', -4, -3, 'Chile Time', 'Chile Summer Time', 'Santiago', 'ChIJL68lBEHFYpYRMQkPQDzVdYQ', '', 'Santiago Metropolitan Region', 'CL', 'Chile', -33.4488897, -70.6692655),
('America/Santo_Domingo', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Santo Domingo', 'ChIJq6V-EPGJr44RZMEVJ7iHxdY', '', 'Distrito Nacional', 'DO', 'Dominican Republic', 18.4860575, -69.9312117),
('America/Sao_Paulo', 'BRT', 'BRST', -3, -2, 'Brazil Time', 'Brazil Summer Time', 'São Paulo', 'ChIJ0WGkg4FEzpQRrlsz_whLqZs', 'SP', 'State of São Paulo', 'BR', 'Brazil', -23.5505199, -46.6333094),
('America/Scoresbysund', 'EGT', 'EGST', -1, 0, 'Eastern Greenland Time', 'Eastern Greenland Summer Time', 'Scoresby Sund', 'ChIJPfDbALydI08RfGLjtvG7SbE', '', '', 'GL', 'Greenland', 70.5, -25),
('America/Sitka', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Sitka', 'ChIJuWN1b4NmBFQRdBzIn0jaQSU', 'AK', 'Alaska', 'US', 'United States', 57.0530556, -135.33),
('America/St_Barthelemy', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Saint Barthélemy', 'ChIJnej-KlR1DowR5nUq6msRdAE', '', '', 'BL', 'Saint Barthélemy', 17.9, -62.833333),
('America/St_Johns', 'NST', 'NDT', -3.5, -2.5, 'Newfoundland Standard Time', 'Newfoundland Daylight Time', 'St. John\'s', 'ChIJYaIKa46jDEsRHyYSHwDUH54', 'NL', 'Newfoundland and Labrador', 'CA', 'Canada', 47.5615096, -52.7125768),
('America/St_Kitts', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Saint Kitts and Nevis', 'ChIJDXKKxm4ZEowR6IYdmsaa6d4', '', '', 'KN', 'Saint Kitts and Nevis', 17.357822, -62.782998),
('America/St_Lucia', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Saint Lucia', 'ChIJHaMt8WVgQIwR9Z056MSGdG4', '', '', 'LC', 'Saint Lucia', 13.909444, -60.978893),
('America/St_Thomas', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Saint Thomas', 'ChIJtzUG3IkaBYwR5Jf28eeAEl0', '', '', 'VI', 'U.S. Virgin Islands', 18.3380965, -64.8940946),
('America/St_Vincent', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Saint Vincent and the Grenadines', 'ChIJuzU5nuKsQIwRsaHSjejT_TE', '', '', 'VC', 'Saint Vincent and the Grenadines', 13.2528179, -61.1970774),
('America/Swift_Current', 'CST', '', -6, -6, 'Central Standard Time', '', 'Swift Current', 'ChIJh28IX7TfEFMR0_rE2ZHGqh4', 'SK', 'Saskatchewan', 'CA', 'Canada', 50.285069, -107.7971722),
('America/Tegucigalpa', 'CST', '', -6, -6, 'Central Standard Time', '', 'Tegucigalpa', 'ChIJUT10v7qib48R08lqIDgiz2g', '', 'Francisco Morazán Department', 'HN', 'Honduras', 14.0722751, -87.192136),
('America/Thule', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Pituffik', 'ChIJjdqD3KMlNk4R8Z2K7sGtfFA', '', '', 'GL', 'Greenland', 76.527557, -68.847939),
('America/Thunder_Bay', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Thunder Bay', 'ChIJjekWTHchWU0RdIsdjzRXBT0', 'ON', 'Ontario', 'CA', 'Canada', 48.3808951, -89.2476823),
('America/Tijuana', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Tijuana', 'ChIJ03tYJgI52YARViTmpK9LchQ', 'BC', 'Baja California', 'MX', 'Mexico', 32.5149469, -117.0382471),
('America/Toronto', 'EST', 'EDT', -5, -4, 'Eastern Standard Time', 'Eastern Daylight Time', 'Toronto', 'ChIJpTvG15DL1IkRd8S0KlBVNTI', 'ON', 'Ontario', 'CA', 'Canada', 43.653226, -79.3831843),
('America/Tortola', 'AST', '', -4, -4, 'Atlantic Standard Time', '', 'Tortola', 'ChIJ8WxOvPdzBYwRwgs9RMqvHfU', '', '', 'VG', 'British Virgin Islands', 18.4334704, -64.6332782),
('America/Vancouver', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Vancouver', 'ChIJs0-pQ_FzhlQRi_OBm-qWkbs', 'BC', 'British Columbia', 'CA', 'Canada', 49.2827291, -123.1207375),
('America/Whitehorse', 'PST', 'PDT', -8, -7, 'Pacific Standard Time', 'Pacific Daylight Time', 'Whitehorse', 'ChIJgVO8gJhEVFERSzXQZOq3PeQ', 'YT', 'Yukon Territory', 'CA', 'Canada', 60.7211871, -135.0568449),
('America/Winnipeg', 'CST', 'CDT', -6, -5, 'Central Standard Time', 'Central Daylight Time', 'Winnipeg', 'ChIJESsa-ftz6lIRZMq5xvoaKis', 'MB', 'Manitoba', 'CA', 'Canada', 49.895136, -97.1383744),
('America/Yakutat', 'AKST', 'AKDT', -9, -8, 'Alaska Standard Time', 'Alaska Daylight Time', 'Yakutat', 'ChIJAz4GIST0qVYRyXlvZrEutfo', 'AK', 'Alaska', 'US', 'United States', 59.5469878, -139.7272809),
('America/Yellowknife', 'MST', 'MDT', -7, -6, 'Mountain Standard Time', 'Mountain Daylight Time', 'Yellowknife', 'ChIJyYJGoyzx0VMRge9xQyQ3wbQ', 'NT', 'Northwest Territories', 'CA', 'Canada', 62.4539717, -114.3717886),
('Antarctica/Casey', 'CAST', '', 8, 8, 'Casey Station Time', '', 'Casey Station', '', '', '', 'AQ', 'Antarctica', -66.17, 110.31),
('Antarctica/Davis', 'DAVT', '', 7, 7, 'Davis Station Time', '', 'Davis Station', '', '', '', 'AQ', 'Antarctica', -68.35, 77.58),
('Antarctica/DumontDUrville', 'DDUT', '', 10, 10, 'Dumont-d\'Urville Time', '', 'Dumont d\'Urville Station', '', '', '', 'AQ', 'Antarctica', -66.4, 140.01),
('Antarctica/Macquarie', 'AEST', 'AEDT', 10, 11, 'Australian Eastern Standard Time', 'Australian Eastern Daylight Savings Time', 'Macquarie Island', 'ChIJwWAJvL8eCakRI3LDhAbNJkk', '', '', 'AU', 'Australia', -54.6208115, 158.8556149),
('Antarctica/Mawson', 'MAWT', '', 5, 5, 'Mawson Station Time', '', 'Mawson Station', '', '', '', 'AQ', 'Antarctica', -67.36, 62.53),
('Antarctica/McMurdo', 'NZST', 'NZDT', 12, 13, 'New Zealand Standard Time', 'New Zealand Daylight Time', 'McMurdo Station', '', '', '', 'AQ', 'Antarctica', -77.5, 166.36),
('Antarctica/Palmer', 'CLST', 'CLST', -3, -3, 'Chile Summer Time', 'Chile Summer Time', 'Palmer Station', '', '', '', 'AQ', 'Antarctica', -64.48, -64.06),
('Antarctica/Rothera', 'ART', '', -3, -3, 'Argentina Time', '', 'Rothera Station', '', '', '', 'AQ', 'Antarctica', -67.34, -68.08),
('Antarctica/Syowa', 'SYOT', '', 3, 3, 'Syowa Time', '', 'Syowa Station', '', '', '', 'AQ', 'Antarctica', -69.0022, 39.3524),
('Antarctica/Troll', 'GMT', 'CEST', 0, 2, 'Greenwich Mean Time', 'Central European Summer Time', 'Troll Station', '', '', '', 'AQ', 'Antarctica', -72.0041, 2.3206),
('Antarctica/Vostok', 'VOST', '', 6, 6, 'Vostok Station Time', '', 'Vostok Station', '', '', '', 'AQ', 'Antarctica', -78.24, 106.54),
('Arctic/Longyearbyen', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Longyearbyen', 'ChIJ31dFT9hSnEUR7JVkocqyhto', '', '', 'SJ', 'Svalbard and Jan Mayen', 78.2231722, 15.626723),
('Asia/Aden', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Aden', 'ChIJL8JeUdYcHhYR6W9pI8OzX5Q', '', '', 'YE', 'Yemen', 12.7854969, 45.0186548),
('Asia/Almaty', 'ALMT', '', 6, 6, 'Almaty Time', '', 'Almaty', 'ChIJq8vFFn1ugzgRdm2YrY9mRD0', '', '', 'KZ', 'Kazakhstan', 43.2220146, 76.8512485),
('Asia/Amman', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Amman', 'ChIJr4F5XbhfGxUR6GXc-MAwHGM', '', '', 'JO', 'Jordan', 31.9453666, 35.9283716),
('Asia/Anadyr', 'ANAT', '', 12, 12, 'Anadyr Time', '', 'Anadyr', 'ChIJG00a1K-f_FkRR_AkXgQyGgU', '', 'Chukotka Autonomous Okrug', 'RU', 'Russia', 64.7336613, 177.4968266),
('Asia/Aqtau', 'AQTT', '', 5, 5, 'Aqtobe Time', '', 'Aktau', 'ChIJ13W8MhcytEERaXcKY-bhFHY', '', '', 'KZ', 'Kazakhstan', 43.6410973, 51.1985113),
('Asia/Aqtobe', 'AQTT', '', 5, 5, 'Aqtobe Time', '', 'Aktobe', 'ChIJ-YkcuEshgkERLXxMcoE_4P8', '', '', 'KZ', 'Kazakhstan', 50.2839339, 57.166978),
('Asia/Ashgabat', 'TMT', '', 5, 5, 'Turkmenistan Time', '', 'Ashgabat', 'ChIJ2YQ2qxv-bz8R6a3TYj8B3jw', '', '', 'TM', 'Turkmenistan', 37.9600766, 58.3260629),
('Asia/Baghdad', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Baghdad', 'ChIJk0GnoGd_VxURLG-xo9Kp7Z0', '', '', 'IQ', 'Iraq', 33.3128057, 44.3614875),
('Asia/Bahrain', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Manama', 'ChIJLaZ2J3KvST4RwmAPB6Y4Z4s', '', '', 'BH', 'Bahrain', 26.2285161, 50.5860497),
('Asia/Baku', 'AZT', '', 4, 4, 'Azerbaijan Time', '', 'Baku', 'ChIJ-Rwh1mt9MEARa2zlel5rPzQ', '', '', 'AZ', 'Azerbaijan', 40.4092617, 49.8670924),
('Asia/Bangkok', 'ICT', '', 7, 7, 'Indochina Time', '', 'Bangkok', 'ChIJ82ENKDJgHTERIEjiXbIAAQE', '', '', 'TH', 'Thailand', 13.7563309, 100.5017651),
('Asia/Beirut', 'EET', '', 2, 2, 'Eastern European Time', '', 'Beirut', 'ChIJj6eAWCEXHxURtDaY6bqCkXI', '', '', 'LB', 'Lebanon', 33.8937913, 35.5017767),
('Asia/Bishkek', 'KGT', '', 6, 6, 'Kyrgyzstan Time', '', 'Bishkek', 'ChIJgcizkdy3njgRfeLefPW6Lkk', '', '', 'KG', 'Kyrgyzstan', 42.8746212, 74.5697617),
('Asia/Brunei', 'BNT', '', 8, 8, 'Brunei Darussalam Time', '', 'Bandar Seri Begawan', 'ChIJH3MLVLD1IjIRS-i6fMT4rO4', '', '', 'BN', 'Brunei', 4.9030522, 114.939821),
('Asia/Chita', 'YAKT', '', 9, 9, 'Yakutsk Time', '', 'Chita', 'ChIJ7RjyORU1yl0R2HKu8vovQ3Y', '', 'Zabaykalsky Krai', 'RU', 'Russia', 52.0515032, 113.4711906),
('Asia/Choibalsan', 'CHOT', '', 8, 8, 'Choibalsan Time', '', 'Choibalsan', 'ChIJOXXp3IxT3F0RivSQ_f-G52E', '', '', 'MN', 'Mongolia', 48.0951271, 114.5356247),
('Asia/Colombo', 'IST', '', 5.5, 5.5, 'Indian Standard Time', '', 'Colombo', 'ChIJA3B6D9FT4joRjYPTMk0uCzI', '', '', 'LK', 'Sri Lanka', 6.9270786, 79.861243),
('Asia/Damascus', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Damascus', 'ChIJp8Y8QdzmGBUR8pTj0etmn2s', '', '', 'SY', 'Syria', 33.5138073, 36.2765279),
('Asia/Dhaka', 'BST', '', 6, 6, 'Bangladesh Standard Time', '', 'Dhaka', 'ChIJgWsCh7C4VTcRwgRZ3btjpY8', '', '', 'BD', 'Bangladesh', 23.810332, 90.4125181),
('Asia/Dili', 'TLT', '', 9, 9, 'Timor Leste Time', '', 'Díli', 'ChIJFYEoMg3nAS0R2RJpVOlunT0', '', '', 'TL', 'Timor-Leste', -8.5568557, 125.5603143),
('Asia/Dubai', 'GST', '', 4, 4, 'Gulf Standard Time', '', 'Dubai', 'ChIJRcbZaklDXz4RYlEphFBu5r0', '', '', 'AE', 'United Arab Emirates', 25.2048493, 55.2707828),
('Asia/Dushanbe', 'TJT', '', 5, 5, 'Tajikistan Time', '', 'Dushanbe', 'ChIJm_h70m_RtTgRRP2h3o03-d0', '', '', 'TJ', 'Tajikistan', 38.5597722, 68.7870384),
('Asia/Gaza', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Gaza Strip', 'ChIJqViyBEGE_RQR5-hLGUux3P0', '', '', 'PS', 'Palestine', 31.3546763, 34.3088255),
('Asia/Harbin', 'CST', '', 8, 8, 'China Standard Time', '', 'Harbin', 'ChIJYRRkpvhkQ14R1SygWnOSfF4', '', 'Heilongjiang', 'CN', 'China', 45.803775, 126.534967),
('Asia/Hebron', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Hebron', 'ChIJ-2PE7CfkAhURTBMvalxNRr4', '', '', 'PS', 'Palestine', 31.53122, 35.098477),
('Asia/Hong_Kong', 'HKT', '', 8, 8, 'Hong Kong Time', '', 'Hong Kong', 'ChIJD5gyo-3iAzQRfMnq27qzivA', '', '', 'HK', 'Hong Kong', 22.396428, 114.109497),
('Asia/Hovd', 'HOVT', 'HOVST', 7, 8, 'Khovd Standard Time', 'Khovd Summer Time', 'Khovd', 'ChIJp3_tehhhTl0RUF5r3dIAcpc', '', '', 'MN', 'Mongolia', 47.9795218, 91.634756),
('Asia/Ho_Chi_Minh', 'ICT', '', 7, 7, 'Indochina Time', '', 'Ho Chi Minh City', 'ChIJ0T2NLikpdTERKxE8d61aX_E', '', '', 'VN', 'Vietnam', 10.8230989, 106.6296638),
('Asia/Irkutsk', 'IRKT', '', 8, 8, 'Irkutsk Time', '', 'Irkutsk', 'ChIJZfbiU9M6qF0RTunYVhTN1jE', '', 'Irkutsk Oblast', 'RU', 'Russia', 52.2869741, 104.3050183),
('Asia/Jakarta', 'IWST', '', 7, 7, 'Indonesia Western Standard Time', '', 'Jakarta', 'ChIJnUvjRenzaS4RILjULejFAAE', '', 'Special Capital Region', 'ID', 'Indonesia', -6.17511, 106.8650395),
('Asia/Jayapura', 'IEST', '', 9, 9, 'Indonesia Eastern Standard Time', '', 'Jayapura', 'ChIJa__GTh5YbGgRkgWSwPwLAyY', '', 'Papua', 'ID', 'Indonesia', -2.5916025, 140.6689995),
('Asia/Jerusalem', 'IST', 'IDT', 2, 3, 'Israel Standard Time', 'Israel Daylight Time', 'Jerusalem', 'ChIJS_zBNNbXAhURy-FuRT5ib9k', '', '', 'IL', 'Israel', 31.768319, 35.21371),
('Asia/Kabul', 'AFT', '', 4.5, 4.5, 'Afghanistan Time', '', 'Kabul', 'ChIJSW0ePExp0TgRKUQheDVH3-s', '', '', 'AF', 'Afghanistan', 34.5553494, 69.207486),
('Asia/Kamchatka', 'PETT', '', 12, 12, 'Petropavlovsk-Kamchatski Time', '', 'Petropavlovsk', 'ChIJzZJKYvqZ4VgRIUrRvHH0MAE', '', 'Kamchatka Krai', 'RU', 'Russia', 53.0409109, 158.677726),
('Asia/Karachi', 'PKT', '', 5, 5, 'Pakistan Time', '', 'Karachi', 'ChIJv0sdZQY-sz4RIwxaVUQv-Zw', '', '', 'PK', 'Pakistan', 24.8614622, 67.0099388),
('Asia/Kathmandu', 'NPT', '', 5.75, 5.75, 'Nepal Time', '', 'Kathmandu', 'ChIJv6p7MIoZ6zkR6rGN8Rt8E7U', '', '', 'NP', 'Nepal', 27.7172453, 85.3239605),
('Asia/Khandyga', 'YAKT', '', 9, 9, 'Yakutsk Time', '', 'Khandyga', 'ChIJI1eWR1_e-lsRIz-GwODDg4E', '', 'Sakha Republic', 'RU', 'Russia', 62.6564079, 135.5539801),
('Asia/Kolkata', 'IST', '', 5.5, 5.5, 'Indian Standard Time', '', 'Kolkata', 'ChIJZ_YISduC-DkRvCxsj-Yw40M', 'WB', 'West Bengal', 'IN', 'India', 22.572646, 88.363895),
('Asia/Krasnoyarsk', 'KRAT', '', 7, 7, 'Krasnoyarsk Time', '', 'Krasnoyarsk', 'ChIJ4zf_ocmv11wR_0fWj0bhl9U', '', 'Krasnoyarsk Krai', 'RU', 'Russia', 56.0152834, 92.8932476),
('Asia/Kuala_Lumpur', 'MYT', '', 8, 8, 'Malaysia Time', '', 'Kuala Lumpur', 'ChIJ5-rvAcdJzDERfSgcL1uO2fQ', '', 'Federal Territory of Kuala Lumpur', 'MY', 'Malaysia', 3.139003, 101.686855),
('Asia/Kuching', 'MYT', '', 8, 8, 'Malaysia Time', '', 'Kuching', 'ChIJEb-MJYQH-zERcn6xGllXctM', '', 'Sarawak', 'MY', 'Malaysia', 1.6076812, 110.3785438),
('Asia/Kuwait', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Kuwait City', 'ChIJg1lFzoOczz8RDrkJr_Wu68M', '', '', 'KW', 'Kuwait', 29.375859, 47.9774052),
('Asia/Macau', 'CST', '', 8, 8, 'China Standard Time', '', 'Macau', 'ChIJ88g14uB6ATQR9qyFtCzje8Y', '', '', 'MO', 'Macau', 22.198745, 113.543873),
('Asia/Magadan', 'MAGT', '', 11, 11, 'Magadan Time', '', 'Magadan', 'ChIJ6UpSLYGEaVkRWwac4edMyTk', '', 'Magadan Oblast', 'RU', 'Russia', 59.5611525, 150.8301413),
('Asia/Makassar', 'ICST', '', 8, 8, 'Indonesia Central Standard Time', '', 'Makassar', 'ChIJcUZs2Snjvi0RsHD3yvsLAwM', '', 'South Sulawesi', 'ID', 'Indonesia', -5.1476651, 119.4327314),
('Asia/Manila', 'PHT', '', 8, 8, 'Philippines Time', '', 'Manila', 'ChIJi8MeVwPKlzMRH8FpEHXV0Wk', '', 'Metro Manila', 'PH', 'Philippines', 14.5995124, 120.9842195),
('Asia/Muscat', 'GST', '', 4, 4, 'Gulf Standard Time', '', 'Muscat', 'ChIJya-ah6j_kT4RLKd5DW2HU9s', '', '', 'OM', 'Oman', 23.58589, 58.4059227),
('Asia/Nicosia', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Nicosia', 'ChIJVU1JymcX3hQRpcARA5ykXls', '', '', 'CY', 'Cyprus', 35.1855659, 33.3822764),
('Asia/Novokuznetsk', 'KRAT', '', 7, 7, 'Krasnoyarsk Time', '', 'Novokuznetsk', 'ChIJ5Z4iV1fA0EIRQNl8enxpDiM', '', 'Kemerovo Oblast', 'RU', 'Russia', 53.7595935, 87.1215705),
('Asia/Novosibirsk', 'NOVT', '', 7, 7, 'Novosibirsk Standard Time', '', 'Novosibirsk', 'ChIJl03MkOHl30IRhenT4XMGOps', '', 'Novosibirsk Oblast', 'RU', 'Russia', 55.0083526, 82.9357327),
('Asia/Omsk', 'OMST', '', 6, 6, 'Omsk Time', '', 'Omsk', 'ChIJCwkB9uL9qkMRGpumYTjD714', '', 'Omsk Oblast', 'RU', 'Russia', 54.9884804, 73.3242362),
('Asia/Oral', 'ORAT', '', 5, 5, 'Oral Time', '', 'Uralsk', 'ChIJfUv5dji6cUERG8xqWfPwcWc', '', '', 'KZ', 'Kazakhstan', 51.227821, 51.3865431),
('Asia/Phnom_Penh', 'ICT', '', 7, 7, 'Indochina Time', '', 'Phnom Penh', 'ChIJ42tqxz1RCTERuyW1WugOAZw', '', '', 'KH', 'Cambodia', 11.5448729, 104.8921668),
('Asia/Pontianak', 'IWST', '', 7, 7, 'Indonesia Western Standard Time', '', 'Pontianak', 'ChIJm3mwBPZYHS4R4__JH1D5HlE', '', 'West Kalimantan', 'ID', 'Indonesia', -0.0263303, 109.3425039),
('Asia/Pyongyang', 'KST', '', 9, 9, 'Korea Standard Time', '', 'Pyongyang', 'ChIJN0NP5toCfjURlapxF-J3BtQ', '', '', 'KP', 'North Korea', 39.0392193, 125.7625241),
('Asia/Qatar', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Qatar', 'ChIJf-jc_zTFRT4RMkArgc-I-hw', '', '', 'QA', 'Qatar', 25.354826, 51.183884),
('Asia/Qyzylorda', 'QYZT', '', 5, 5, 'Qyzylorda Time', '', 'Kyzylorda', 'ChIJeddRN-D990ERS-CxjOQjI48', '', '', 'KZ', 'Kazakhstan', 44.8488314, 65.4822686),
('Asia/Riyadh', 'AST', '', 3, 3, 'Arabic Standard Time', '', 'Riyadh', 'ChIJmZNIDYkDLz4R1Z_nmBxNl7o', '', '', 'SA', 'Saudi Arabia', 24.7135517, 46.6752957),
('Asia/Sakhalin', 'SAKT', '', 11, 11, 'Sakhalin Island Time', '', 'Sakhalin', 'ChIJAZ0etmQX2l4RA4hzn0Sb4Nw', '', 'Sakhalin Oblast', 'RU', 'Russia', 50.6909848, 142.9505689),
('Asia/Samarkand', 'UZT', '', 5, 5, 'Uzbekistan Time', '', 'Samarkand', 'ChIJ930HYBkZTT8RVy8_0dk2dkg', '', '', 'UZ', 'Uzbekistan', 39.627012, 66.9749731),
('Asia/Seoul', 'KST', '', 9, 9, 'Korea Standard Time', '', 'Seoul', 'ChIJzWXFYYuifDUR64Pq5LTtioU', '', '', 'KR', 'South Korea', 37.566535, 126.9779692),
('Asia/Shanghai', 'CST', '', 8, 8, 'China Standard Time', '', 'Shanghai', 'ChIJMzz1sUBwsjURoWTDI5QSlQI', '', '', 'CN', 'China', 31.2303904, 121.4737021),
('Asia/Singapore', 'SST', '', 8, 8, 'Singapore Standard Time', '', 'Singapore', 'ChIJdZOLiiMR2jERxPWrUs9peIg', '', '', 'SG', 'Singapore', 1.352083, 103.819836),
('Asia/Srednekolymsk', 'SRET', '', 11, 11, 'Srednekolymsk Time', '', 'Srednekolymsk', 'ChIJbfF5Du_ZLFoRmUrZ7lZxpqM', '', 'Sakha Republic', 'RU', 'Russia', 67.437307, 153.728674),
('Asia/Taipei', 'TST', '', 8, 8, 'Taiwan Standard Time', '', 'Taipei', 'ChIJmQrivHKsQjQR4MIK3c41aj8', '', '', 'TW', 'Taiwan', 25.0329694, 121.5654177),
('Asia/Tashkent', 'UZT', '', 5, 5, 'Uzbekistan Time', '', 'Tashkent', 'ChIJw-l5wwyLrjgRmMulSjsyqaU', '', '', 'UZ', 'Uzbekistan', 41.2994958, 69.2400734),
('Asia/Tbilisi', 'GET', '', 4, 4, 'Georgia Standard Time', '', 'Tbilisi', 'ChIJa2JP5tcMREARo25X4u2E0GE', '', '', 'GE', 'Georgia', 41.7151377, 44.827096),
('Asia/Tehran', 'IRST', 'IRDT', 3.5, 4.5, 'Iran Standard Time', 'Iran Daylight Time', 'Tehran', 'ChIJ2dzzH0kAjj8RvCRwVnxps_A', '', '', 'IR', 'Iran', 35.6891975, 51.3889736),
('Asia/Thimphu', 'BTT', '', 6, 6, 'Bhutan Time', '', 'Thimphu', 'ChIJtzcglhmU4TkR0WAFZuL_AXw', '', '', 'BT', 'Bhutan', 27.4727924, 89.6392863),
('Asia/Tokyo', 'JST', '', 9, 9, 'Japan Standard Time', '', 'Tokyo', 'ChIJ51cu8IcbXWARiRtXIothAS4', '', '', 'JP', 'Japan', 35.6894875, 139.6917064),
('Asia/Ulaanbaatar', 'ULAT', '', 8, 8, 'Ulaanbaatar Time', '', 'Ulaanbaatar', 'ChIJq4qx4luSll0Rf4ShZHiSBuY', '', '', 'MN', 'Mongolia', 47.8863988, 106.9057439),
('Asia/Urumqi', 'XJT', '', 6, 6, 'Xinjiang Time', '', 'Ürümqi', 'ChIJq017_YwABjgRinB6rOtSWao', '', 'Xinjiang', 'CN', 'China', 43.825592, 87.616848),
('Asia/Ust-Nera', 'VLAT', '', 10, 10, 'Vladivostok Time', '', 'Ust-Nera', 'ChIJgTeBCWHO3VsRlSVHjNx_pgQ', '', 'Sakha Republic', 'RU', 'Russia', 64.5596103, 143.2244253),
('Asia/Vientiane', 'ICT', '', 7, 7, 'Indochina Time', '', 'Vientiane', 'ChIJIXvtBoZoJDER3-7BGIaxkx8', '', '', 'LA', 'Laos', 17.9757058, 102.6331035),
('Asia/Vladivostok', 'VLAT', '', 10, 10, 'Vladivostok Time', '', 'Vladivostok', 'ChIJhdRJUrqcs18RNX6W3dQEZxg', '', 'Primorsky Krai', 'RU', 'Russia', 43.1198091, 131.8869243),
('Asia/Yakutsk', 'YAKT', '', 9, 9, 'Yakutsk Time', '', 'Yakutsk', 'ChIJfcTSoDk59lsR-6KvXLPEtGk', '', 'Sakha Republic', 'RU', 'Russia', 62.0354523, 129.6754745),
('Asia/Yangon', 'MMT', '', 6.5, 6.5, 'Myanmar Standard Time', '', 'Yangon', 'ChIJaxk-Ip6UwTARtAsI-HHS-1Y', '', '', 'MM', 'Myanmar', 16.8660694, 96.195132);
INSERT INTO `timezonecity` (`time_zone`, `std_abbr`, `dst_abbr`, `std_offset`, `dst_offset`, `std_full`, `dst_full`, `place_name`, `place_id`, `region_code`, `region_name`, `country_code`, `country_name`, `latitude`, `longitude`) VALUES
('Asia/Yekaterinburg', 'YEKT', '', 5, 5, 'Yekaterinburg Time', '', 'Yekaterinburg', 'ChIJS9tioOplwUMRIH9W99dDAtU', '', 'Sverdlovsk Oblast', 'RU', 'Russia', 56.8389261, 60.6057025),
('Asia/Yerevan', 'AMT', '', 4, 4, 'Armenia Time', '', 'Yerevan', 'ChIJW4v8uNqiakARalLah655FD0', '', '', 'AM', 'Armenia', 40.1791857, 44.4991029),
('Atlantic/Azores', 'AZOT', 'AZOST', -1, 0, 'Azores Standard Time', 'Azores Summer Time', 'Azores', 'ChIJBTvkER5_RgsRHQzOS2cbkeI', '', '', 'PT', 'Portugal', 37.7412488, -25.6755944),
('Atlantic/Bermuda', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Bermuda', 'ChIJpbBohp4TLYoRvLiZLMf93zw', '', '', 'BM', 'Bermuda', 32.3078, -64.7505),
('Atlantic/Canary', 'WET', 'WEST', 0, 1, 'Western European Time', 'Western European Summer Time', 'Las Palmas de Gran Canaria', 'ChIJ0ZfAkQ6VQAwRZbo4U6y1Nqs', '', '', 'ES', 'Spain', 28.1235459, -15.4362574),
('Atlantic/Cape_Verde', 'CVT', '', -1, -1, 'Cape Verde Time', '', 'Cape Verde', 'ChIJMVERWSGPNQkRH-oY-TbyGms', '', '', 'CV', 'Cape Verde', 15.120142, -23.6051868),
('Atlantic/Faroe', 'WET', 'WEST', 0, 1, 'Western European Time', 'Western European Summer Time', 'Faroe Islands', 'ChIJ6_ktdpMVvEgRJBv3ZEgxsD8', '', '', 'FO', 'Faroe Islands', 61.892635, -6.911806),
('Atlantic/Madeira', 'WET', 'WEST', 0, 1, 'Western European Time', 'Western European Summer Time', 'São Martinho', 'ChIJXwwJeJJfYAwRhaiYHoB_NIc', '', 'Madeira', 'PT', 'Portugal', 32.6456929, -16.9388118),
('Atlantic/Reykjavik', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Reykjavík', 'ChIJw-3c7rl01kgRcWDSMKIskew', '', '', 'IS', 'Iceland', 64.1265206, -21.8174393),
('Atlantic/South_Georgia', 'GST', '', -2, -2, 'South Georgia and the South Sandwich Islands Time', '', 'South Georgia and the South Sandwich Islands', 'ChIJJXmoUuK2PbkRvbBNiNp8434', '', '', 'GS', 'South Georgia and the South Sandwich Islands', -54.429579, -36.587909),
('Atlantic/Stanley', 'AST', 'ADT', -4, -3, 'Atlantic Standard Time', 'Atlantic Daylight Time', 'Stanley', 'ChIJQ8wQckF1pEwRu2SN44-V0RM', 'NB', 'New Brunswick', 'CA', 'Canada', 46.2833231, -66.7389933),
('Atlantic/St_Helena', 'GMT', '', 0, 0, 'Greenwich Mean Time', '', 'Saint Helena, Ascension and Tristan da Cunha', 'ChIJGSYdyRA7WgIRbtxkK1sPceQ', '', '', 'SH', 'Saint Helena, Ascension and Tristan da Cunha', -15.9654353, -5.7115281),
('Australia/Adelaide', 'ACST', 'ACDT', 9.5, 10.5, 'Australia Central Standard Time', 'Australia Central Daylight Savings Time', 'Adelaide', 'ChIJP7Mmxcc1t2oRQMaOYlQ2AwQ', 'SA', 'South Australia', 'AU', 'Australia', -34.9284989, 138.6007456),
('Australia/Brisbane', 'AEST', '', 10, 10, 'Australian Eastern Standard Time', '', 'Brisbane', 'ChIJM9KTrJpXkWsRQK_e81qjAgQ', 'QLD', 'Queensland', 'AU', 'Australia', -27.4697707, 153.0251235),
('Australia/Broken_Hill', 'ACST', 'ACDT', 9.5, 10.5, 'Australia Central Standard Time', 'Australia Central Daylight Savings Time', 'Broken Hill', 'ChIJzcJS3mAz72oRcAFEkLQJBgQ', 'NSW', 'New South Wales', 'AU', 'Australia', -31.9539135, 141.4539396),
('Australia/Currie', 'AEST', 'AEDT', 10, 11, 'Australian Eastern Standard Time', 'Australian Eastern Daylight Savings Time', 'Currie', 'ChIJ-3oxdPvYgKoRoPnd0E3JAwQ', 'TAS', 'Tasmania', 'AU', 'Australia', -39.931111, 143.850556),
('Australia/Darwin', 'ACST', '', 9.5, 9.5, 'Australia Central Standard Time', '', 'Darwin', 'ChIJPwRZn_ygwCwRIHwkKqgXAgM', 'NT', 'Northern Territory', 'AU', 'Australia', -12.4634403, 130.8456418),
('Australia/Eucla', 'ACWST', '', 8.75, 8.75, 'Australian Central Western Standard Time', '', 'Eucla', 'ChIJEYdkjdUa8CoRcNh5JDj2AAQ', 'WA', 'Western Australia', 'AU', 'Australia', -31.6772316, 128.8897862),
('Australia/Hobart', 'AEST', 'AEDT', 10, 11, 'Australian Eastern Standard Time', 'Australian Eastern Daylight Savings Time', 'Hobart', 'ChIJ7c8s5YR1bqoRMBXe0E3JAwU', 'TAS', 'Tasmania', 'AU', 'Australia', -42.8821377, 147.3271949),
('Australia/Lindeman', 'AEST', '', 10, 10, 'Australian Eastern Standard Time', '', 'Lindeman Island', 'ChIJrQcNdG6p2WsRt27zvZUT9b4', 'QLD', 'Queensland', 'AU', 'Australia', -20.4447841, 149.0410504),
('Australia/Lord_Howe', 'LHST', 'LHDT', 10.5, 11, 'Lord Howe Standard Time', 'Lord Howe Daylight Savings Time', 'Lord Howe Island', 'ChIJXwS-RUAafGwRVU9LRksVlJM', 'NSW', 'New South Wales', 'AU', 'Australia', -31.5553263, 159.0821211),
('Australia/Melbourne', 'AEST', 'AEDT', 10, 11, 'Australian Eastern Standard Time', 'Australian Eastern Daylight Savings Time', 'Melbourne', 'ChIJ90260rVG1moRkM2MIXVWBAQ', 'VIC', 'Victoria', 'AU', 'Australia', -37.8136276, 144.9630576),
('Australia/Perth', 'AWST', '', 8, 8, 'Australian Western Standard Time', '', 'Perth', 'ChIJPXNH22yWMioR0FXfNbXwBAM', 'WA', 'Western Australia', 'AU', 'Australia', -31.9505269, 115.8604572),
('Australia/Sydney', 'AEST', 'AEDT', 10, 11, 'Australian Eastern Standard Time', 'Australian Eastern Daylight Savings Time', 'Sydney', 'ChIJP3Sa8ziYEmsRUKgyFmh9AQM', 'NSW', 'New South Wales', 'AU', 'Australia', -33.8688197, 151.2092955),
('Europe/Amsterdam', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Amsterdam', 'ChIJVXealLU_xkcRja_At0z9AGY', '', '', 'NL', 'Netherlands', 52.3702157, 4.8951679),
('Europe/Andorra', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Andorra', 'ChIJlfCemC71pRIRkn_qeNc-yQc', '', '', 'AD', 'Andorra', 42.506285, 1.521801),
('Europe/Athens', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Athens', 'ChIJ8UNwBh-9oRQR3Y1mdkU1Nic', '', '', 'GR', 'Greece', 37.9838096, 23.7275388),
('Europe/Belgrade', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Belgrade', 'ChIJvT-116N6WkcR5H4X8lxkuB0', '', '', 'RS', 'Serbia', 44.786568, 20.4489216),
('Europe/Berlin', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Berlin', 'ChIJAVkDPzdOqEcRcDteW0YgIQQ', '', '', 'DE', 'Germany', 52.5200066, 13.404954),
('Europe/Bratislava', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Bratislava', 'ChIJl2HKCjaJbEcRaEOI_YKbH2M', '', '', 'SK', 'Slovakia', 48.1485965, 17.1077477),
('Europe/Brussels', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Brussels', 'ChIJ_58PdIbEw0cRMIBML6uZAAE', '', '', 'BE', 'Belgium', 50.8503463, 4.3517211),
('Europe/Bucharest', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Bucharest', 'ChIJT608vzr5sUARKKacfOMyBqw', '', '', 'RO', 'Romania', 44.4267674, 26.1025384),
('Europe/Budapest', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Budapest', 'ChIJyc_U0TTDQUcRYBEeDCnEAAQ', '', '', 'HU', 'Hungary', 47.497912, 19.040235),
('Europe/Busingen', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Büsingen am Hochrhein', 'ChIJr6m2ngmBmkcRffmQypLVlVM', '', '', 'DE', 'Germany', 47.6969939, 8.6904196),
('Europe/Chisinau', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Chisinau', 'ChIJoWm3KDZ8yUARPN1JVzDW0Tc', '', '', 'MD', 'Moldova', 47.0104529, 28.8638103),
('Europe/Copenhagen', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Copenhagen', 'ChIJIz2AXDxTUkYRuGeU5t1-3QQ', '', '', 'DK', 'Denmark', 55.6760968, 12.5683371),
('Europe/Dublin', 'GMT', 'IST', 0, 1, 'Greenwich Mean Time', 'Irish Summer Time', 'Dublin', 'ChIJL6wn6oAOZ0gRoHExl6nHAAo', '', '', 'IE', 'Ireland', 53.3498053, -6.2603097),
('Europe/Gibraltar', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Gibraltar', 'ChIJNb4UJ3a_DA0RD4cANiYlTjg', '', '', 'GI', 'Gibraltar', 36.140751, -5.353585),
('Europe/Guernsey', 'GMT', 'BST', 0, 1, 'Greenwich Mean Time', 'British Summer Time', 'Saint Peter Port', 'ChIJW-PWowRzDUgR2rHna7uIkF8', '', '', 'GG', 'Guernsey', 49.4541677, -2.5497069),
('Europe/Helsinki', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Helsinki', 'ChIJkQYhlscLkkYRY_fiO4S9Ts0', '', '', 'FI', 'Finland', 60.1698557, 24.938379),
('Europe/Isle_of_Man', 'GMT', 'BST', 0, 1, 'Greenwich Mean Time', 'British Summer Time', 'Isle of Man', 'ChIJ1YEuRDCFY0gRDeDw8bxbAuo', '', '', 'IM', 'Isle of Man', 54.236107, -4.548056),
('Europe/Istanbul', 'TRT', '', 3, 3, 'Turkey Time', '', 'Istanbul', 'ChIJawhoAASnyhQR0LABvJj-zOE', '', '', 'TR', 'Turkey', 41.0082376, 28.9783589),
('Europe/Jersey', 'GMT', 'BST', 0, 1, 'Greenwich Mean Time', 'British Summer Time', 'Jersey', 'ChIJM3WSjKRSDEgRw2waCqMjnFE', '', '', 'JE', 'Jersey', 49.214439, -2.13125),
('Europe/Kaliningrad', 'EET', '', 2, 2, 'Eastern European Time', '', 'Kaliningrad', 'ChIJqSF8S40940YR024SFgCWUFA', '', 'Kaliningrad Oblast', 'RU', 'Russia', 54.7104264, 20.4522144),
('Europe/Kiev', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Kiev', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY', '', '', 'UA', 'Ukraine', 50.4501, 30.5234),
('Europe/Lisbon', 'WET', 'WEST', 0, 1, 'Western European Time', 'Western European Summer Time', 'Lisbon', 'ChIJO_PkYRozGQ0R0DaQ5L3rAAQ', '', '', 'PT', 'Portugal', 38.7222524, -9.1393366),
('Europe/Ljubljana', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Ljubljana', 'ChIJ0YaYlvUxZUcRIOw_ghz4AAQ', '', '', 'SI', 'Slovenia', 46.0569465, 14.5057515),
('Europe/London', 'GMT', 'BST', 0, 1, 'Greenwich Mean Time', 'British Summer Time', 'London', 'ChIJdd4hrwug2EcRmSrV3Vo6llI', '', '', 'GB', 'United Kingdom', 51.5073509, -0.3514683),
('Europe/Luxembourg', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Luxembourg City', 'ChIJVyzznc1IlUcREG0F0dbRAAQ', '', '', 'LU', 'Luxembourg', 49.611621, 6.1319346),
('Europe/Madrid', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Madrid', 'ChIJgTwKgJcpQg0RaSKMYcHeNsQ', '', '', 'ES', 'Spain', 40.4167754, -3.7037902),
('Europe/Malta', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Valletta', 'ChIJxUeGHShFDhMRF8lC4o7TWnQ', '', '', 'MT', 'Malta', 35.8989085, 14.5145528),
('Europe/Mariehamn', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Mariehamn', 'ChIJ7TXGu5vDikYRzZqPbAILQkY', '', '', 'AX', 'Åland Islands', 60.0970945, 19.9348339),
('Europe/Minsk', 'MSK', 'MSK', 3, 3, 'Moscow Time', '', 'Minsk', 'ChIJ02oeW9PP20YR2XC13VO4YQs', '', '', 'BY', 'Belarus', 53.9045398, 27.5615244),
('Europe/Monaco', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Monaco City', 'ChIJ2Y7LAInCzRIRkCuP_aUZCAQ', '', '', 'MC', 'Monaco', 43.7308084, 7.4225881),
('Europe/Moscow', 'MSK', '', 3, 3, 'Moscow Time', '', 'Moscow', 'ChIJybDUc_xKtUYRTM9XV8zWRD0', '', 'Moskva Oblast', 'RU', 'Russia', 55.755826, 37.6173),
('Europe/Oslo', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Oslo', 'ChIJOfBn8mFuQUYRmh4j019gkn4', '', '', 'NO', 'Norway', 59.9138688, 10.7522454),
('Europe/Paris', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Paris', 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ', '', '', 'FR', 'France', 48.856614, 2.3522219),
('Europe/Podgorica', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Podgorica', 'ChIJfYYGlgfoTRMR6YpY6naK92s', '', '', 'ME', 'Montenegro', 42.4304196, 19.2593642),
('Europe/Prague', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Prague', 'ChIJi3lwCZyTC0cRkEAWZg-vAAQ', '', '', 'CZ', 'Czechia', 50.0755381, 14.4378005),
('Europe/Riga', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Riga', 'ChIJ7T0H5bDP7kYRMP7yaM3PAAQ', '', '', 'LV', 'Latvia', 56.9496487, 24.1051864),
('Europe/Rome', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Rome', 'ChIJu46S-ZZhLxMROG5lkwZ3D7k', '', '', 'IT', 'Italy', 41.9027835, 12.4963655),
('Europe/Samara', 'SAMT', '', 4, 4, 'Samara Time', '', 'Samara', 'ChIJ03nYK-IYZkERCwM6u6nNlbo', '', 'Samara Oblast', 'RU', 'Russia', 53.2415041, 50.2212463),
('Europe/San_Marino', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'San Marino', 'ChIJeT_m9V_rLBMRECA0gpnzAAA', '', '', 'SM', 'San Marino', 43.94236, 12.457777),
('Europe/Sarajevo', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Sarajevo', 'ChIJ0Ztx7bHLWEcRPrOH3qbNLlY', '', '', 'BA', 'Bosnia and Herzegovina', 43.8562586, 18.4130763),
('Europe/Simferopol', 'MSK', '', 3, 3, 'Moscow Time', '', 'Simferopol', 'ChIJxRyZ397d6kARQAt4vC9CKZw', '', '', 'UA', 'Ukraine', 44.952117, 34.102417),
('Europe/Skopje', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Skopje', 'ChIJpaKajKUVVBMRICCHYMKI7bI', '', '', 'MK', 'Macedonia', 41.9973462, 21.4279956),
('Europe/Sofia', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Sofia', 'ChIJ9Xsxy4KGqkARYF6_aRKgAAQ', '', '', 'BG', 'Bulgaria', 42.6977082, 23.3218675),
('Europe/Stockholm', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Stockholm', 'ChIJywtkGTF2X0YRZnedZ9MnDag', '', '', 'SE', 'Sweden', 59.3293235, 18.0685808),
('Europe/Tallinn', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Tallinn', 'ChIJvxZW35mUkkYRcGL8GG2zAAQ', '', '', 'EE', 'Estonia', 59.4369608, 24.7535746),
('Europe/Tirane', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Tirane', 'ChIJ28X6cAQxUBMRIDdlEK-SAAQ', '', '', 'AL', 'Albania', 41.3275459, 19.8186982),
('Europe/Uzhgorod', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Uzhgorod', 'ChIJ2eO2RLkZOUcRPCoEMAGupg0', '', '', 'UA', 'Ukraine', 48.6208, 22.287883),
('Europe/Vaduz', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Vaduz', 'ChIJ835RXGYxm0cRgnsbyn3ZQ1E', '', '', 'LI', 'Liechtenstein', 47.1410303, 9.5209277),
('Europe/Vatican', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Vatican City', 'ChIJPS3UVwqJJRMRsH46sppPCQA', '', '', 'VA', 'Vatican City', 41.902916, 12.453389),
('Europe/Vienna', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Vienna', 'ChIJn8o2UZ4HbUcRRluiUYrlwv0', '', '', 'AT', 'Austria', 48.2081743, 16.3738189),
('Europe/Vilnius', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Vilnius', 'ChIJ9QhkXPuT3UYRQNzpcIzRAAQ', '', '', 'LT', 'Lithuania', 54.6871555, 25.2796514),
('Europe/Volgograd', 'VOLT', '', 4, 4, 'Volgograd Time', '', 'Volgograd', 'ChIJZ3ZbuHUzBUERQdpXzpwXDYg', '', 'Volgograd Oblast', 'RU', 'Russia', 48.708048, 44.5133034),
('Europe/Warsaw', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Warsaw', 'ChIJAZ-GmmbMHkcR_NPqiCq-8HI', '', '', 'PL', 'Poland', 52.2296756, 21.0122287),
('Europe/Zagreb', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Zagreb', 'ChIJOcwCyZLWZUcRisL7KJYkRTo', '', '', 'HR', 'Croatia', 45.8150108, 15.981919),
('Europe/Zaporozhye', 'EET', 'EEST', 2, 3, 'Eastern European Time', 'Eastern European Summer Time', 'Zaporizhia', 'ChIJA7uF-j1n3EARSj9NB9lcZ34', '', '', 'UA', 'Ukraine', 47.8388, 35.139567),
('Europe/Zurich', 'CET', 'CEST', 1, 2, 'Central European Time', 'Central European Summer Time', 'Zürich', 'ChIJGaK-SZcLkEcRA9wf5_GNbuY', '', '', 'CH', 'Switzerland', 47.3768866, 8.541694),
('Indian/Antananarivo', 'EAT', '', 3, 3, 'East Africa Time', '', 'Antananarivo', 'ChIJs04fT-N98CER-YLAvAgGEd8', '', '', 'MG', 'Madagascar', -18.8791902, 47.5079055),
('Indian/Chagos', 'IOT', '', 6, 6, 'Indian Ocean Time', '', 'Chagosøerne', 'ChIJAdotV8sDlCQRnPvU-WM8DHg', '', '', 'IO', 'British Indian Ocean Territory', -6.3365899, 71.8564808),
('Indian/Christmas', 'CXT', '', 7, 7, 'Christmas Island Time', '', 'Christmas Island', 'ChIJz6fA4yea9S4RFup1BAnW5xU', '', '', 'CX', 'Christmas Island', -10.447525, 105.690449),
('Indian/Cocos', 'CCT', '', 6.5, 6.5, 'Cocos Islands Time', '', 'Cocos (Keeling) Islands', 'ChIJwWnofonFDi8Rpp_jEPBC0ds', '', '', 'CC', 'Cocos (Keeling) Islands', -12.1706919, 96.8417478),
('Indian/Comoro', 'EAT', '', 3, 3, 'East Africa Time', '', 'Moroni', 'ChIJsUvj463-mBgRPi0ueW3ZQzk', '', '', 'KM', 'Comoros', -11.7172157, 43.2473146),
('Indian/Kerguelen', 'TFT', '', 5, 5, 'French Southern and Antarctic Time', '', 'Kerguelen Islands', 'ChIJPZBWyBxIa7MRlUJtayLxGRw', '', '', 'TF', 'French Southern and Antarctic Lands', -49.1602433, 69.5816287),
('Indian/Mahe', 'SCT', '', 4, 4, 'Seychelles Time', '', 'Mahé', 'ChIJGTqSulMq4CIRLOIygZTdY0M', '', '', 'SC', 'Seychelles', -4.6826693, 55.480396),
('Indian/Maldives', 'MVT', '', 5, 5, 'Maldives Time', '', 'Maldives', 'ChIJvXv7qr-ZtSQRiWKVgeEJRUE', '', '', 'MV', 'Maldives', 1.9772276, 73.536101),
('Indian/Mauritius', 'MUT', '', 4, 4, 'Mauritius Time', '', 'Mauritius', 'ChIJyXRE-U1QfCERMdBrEcLZA0I', '', '', 'MU', 'Mauritius', -20.348404, 57.552152),
('Indian/Mayotte', 'EAT', '', 3, 3, 'East Africa Time', '', 'Mamoudzou', 'ChIJ661CnZsTCiIRst9x52pu418', '', '', 'YT', 'Mayotte', -12.7809488, 45.227872),
('Indian/Reunion', 'RET', '', 4, 4, 'Réunion Time', '', 'Saint-Denis', 'ChIJud06GwF_giERbQsuVUyi0kM', '', '', 'RE', 'Réunion', -20.8906596, 55.4550536),
('Pacific/Apia', 'WST', 'WST', 13, 14, 'West Samoa Time', 'West Samoa Time', 'Apia', 'ChIJAxDsZKMTpXERYvcKx8jIPIk', '', '', 'WS', 'Samoa', -13.8506958, -171.7513551),
('Pacific/Auckland', 'NZST', 'NZDT', 12, 13, 'New Zealand Standard Time', 'New Zealand Daylight Time', 'Auckland', 'ChIJ--acWvtHDW0RF5miQ2HvAAU', '', '', 'NZ', 'New Zealand', -36.8484597, 174.7633315),
('Pacific/Bougainville', 'BST', '', 11, 11, 'Bougainville Standard Time', '', 'Bougainville Island', 'ChIJmfEYijbdzmgRfAZo0F6rnAk', '', '', 'PG', 'Papua New Guinea', -6.3753919, 155.3807101),
('Pacific/Chatham', 'CHAST', 'CHADT', 12.75, 13.75, 'Chatham Island Standard Time', 'Chatham Island Daylight Time', 'Chatham Islands', 'ChIJM-fHqWXos3IRiC_KQFZExk8', '', '', 'NZ', 'New Zealand', -43.9120964, -176.5433025),
('Pacific/Chuuk', 'CHUT', '', 10, 10, 'Chuuk Time', '', 'Chuuk', 'ChIJo8ZTcyyPZ2YROovdWL4T2a0', '', '', 'FM', 'Federated States of Micronesia', 7.3554221, 151.59629),
('Pacific/Easter', 'EAST', 'EASST', -6, -5, 'Easter Island Standard Time', 'Easter Island Summer Time', 'Easter Island', 'ChIJK67UqBfwR5kRti0qwO2z5bs', '', 'Valparaiso Region', 'CL', 'Chile', -27.112723, -109.3496865),
('Pacific/Efate', 'VUT', '', 11, 11, 'Vanuatu Time', '', 'Éfaté', 'ChIJM0ej7Tbfi24RBLRcGC75jh8', '', '', 'VU', 'Vanuatu', -17.6577479, 168.4297187),
('Pacific/Enderbury', 'PHOT', '', 13, 13, 'Phoenix Island Time', '', 'Enderbury Island', 'ChIJ16VMeFthZHARtjaTcK2Lgfs', '', '', 'KI', 'Kiribati', -3.1272412, -171.0837442),
('Pacific/Fakaofo', 'TKT', '', 13, 13, 'Tokelau Time', '', 'Fakaofo', 'ChIJcYJlBRnBU3ARwcqb3-H5nYE', '', '', 'TK', 'Tokelau', -9.3802555, -171.2188355),
('Pacific/Fiji', 'FJT', 'FJST', 12, 13, 'Fiji Time', 'Fiji Summer Time', 'Suva', 'ChIJrU8RQiLeG24RyddNu3R1B-I', '', '', 'FJ', 'Fiji', -18.1248086, 178.4500789),
('Pacific/Funafuti', 'TVT', '', 12, 12, 'Tuvalu Time', '', 'Funafuti', 'ChIJL2hUIEPi1m8RXJkNSk01h4Y', '', '', 'TV', 'Tuvalu', -8.5211471, 179.1961926),
('Pacific/Galapagos', 'GALT', '', -6, -6, 'Galápagos Time', '', 'Galápagos Islands', 'ChIJvyyfMe6SqpoR8kaYg2O8vpU', '', 'Galápagos', 'EC', 'Ecuador', -0.9537691, -90.9656019),
('Pacific/Gambier', 'GAMT', '', -9, -9, 'Gambier Time', '', 'Gambier Islands', 'ChIJJ7EosEuIJ54ROkBnvTCQhFc', '', '', 'PF', 'French Polynesia', -23.1349158, -134.9626829),
('Pacific/Guadalcanal', 'SBT', '', 11, 11, 'Solomon Islands Time', '', 'Guadalcanal', 'ChIJdd1fosZtKG8RslW1aTpMV7w', '', '', 'SB', 'Solomon Islands', -9.5773284, 160.1455805),
('Pacific/Guam', 'CHST', '', 10, 10, 'Chamorro Standard Time', '', 'Guam', 'ChIJ7yQPk_92H2cRpuWzxZGucVU', '', '', 'GU', 'Guam', 13.444304, 144.793731),
('Pacific/Honolulu', 'HST', '', -10, -10, 'Hawaii–Aleutian Standard Time', '', 'Honolulu', 'ChIJTUbDjDsYAHwRbJen81_1KEs', 'HI', 'Hawaii', 'US', 'United States', 21.3069444, -157.8583333),
('Pacific/Johnston', 'HST', '', -10, -10, 'Hawaii–Aleutian Standard Time', '', 'Johnston Atoll', 'ChIJNWZzrnNmdXsR9SNlzbNHMAI', '', '', 'US', 'United States', 16.7295035, -169.5336477),
('Pacific/Kiritimati', 'LINT', '', 14, 14, 'Line Islands Time', '', 'Kiritimati', 'ChIJESb0q8x3-HkRQ7Sgbnied24', '', '', 'KI', 'Kiribati', 1.8721347, -157.4278119),
('Pacific/Kosrae', 'KOST', '', 11, 11, 'Kosrae Time', '', 'Kosrae', 'ChIJEzXM1YJcwGURvna1CPr_W2I', '', '', 'FM', 'Federated States of Micronesia', 5.3095618, 162.9814877),
('Pacific/Kwajalein', 'MHT', '', 12, 12, 'Marshall Islands Time', '', 'Kwajalein Atoll', 'ChIJpclzm_C5rmURo9KRpmi6t6w', '', '', 'MH', 'Marshall Islands', 8.71801598, 167.734682),
('Pacific/Majuro', 'MHT', '', 12, 12, 'Marshall Islands Time', '', 'Majuro', 'ChIJ_eCXe1UYD2UROdm3RYWc-to', '', '', 'MH', 'Marshall Islands', 7.1164214, 171.1857736),
('Pacific/Marquesas', 'MART', '', -9.5, -9.5, 'Marquesas Time', '', 'Marquesas Islands', 'ChIJbaR5OmrmNXYRjrl-CTmvpxY', '', '', 'PF', 'French Polynesia', -9.7812162, -139.0817124),
('Pacific/Midway', 'SST', '', -11, -11, 'Samoa Standard Time', '', 'Midway Atoll', 'ChIJ23lRopYiuHwRa_7afAuJff0', '', '', 'US', 'United States', 28.2072168, -177.3734926),
('Pacific/Nauru', 'NRT', '', 12, 12, 'Nauru Time', '', 'Nauru', 'ChIJTVvkHR8cfW8RgQrUxfSd2Vk', '', '', 'NR', 'Nauru', -0.522778, 166.931503),
('Pacific/Niue', 'NUT', '', -11, -11, 'Niue Time', '', 'Niue', 'ChIJO7duNyolnXERGIvcezR4QpE', '', '', 'NU', 'Niue', -19.054445, -169.867233),
('Pacific/Norfolk', 'NFT', '', 11, 11, 'Norfolk Time', '', 'Norfolk Island', 'ChIJOcm6rR_RS2wRUhVdMyOYerk', '', '', 'NF', 'Norfolk Island', -29.040835, 167.954712),
('Pacific/Noumea', 'NCT', '', 11, 11, 'New Caledonia Time', '', 'Noumea', 'ChIJyzIaP2niJ2wRAN0S8yqy8Xs', '', '', 'NC', 'New Caledonia', -22.2558234, 166.4505243),
('Pacific/Pago_Pago', 'SST', '', -11, -11, 'Samoa Standard Time', '', 'Pago Pago', 'ChIJyf1IkreEpnERK0EVzuwzjjU', '', '', 'US', 'United States', -14.2756319, -170.7020359),
('Pacific/Palau', 'PWT', '', 9, 9, 'Palau Time', '', 'Palau', 'ChIJmQOvorRFhDIRu-uhOd0e7RI', '', '', 'PW', 'Palau', 7.759268, 134.6465868),
('Pacific/Pitcairn', 'PST', '', -8, -8, 'Pitcairn Standard Time', '', 'Pitcairn Islands', 'ChIJiweo3H8POJ4RfadZONAOwA0', '', '', 'PN', 'Pitcairn Islands', -24.3767537, -128.3242376),
('Pacific/Pohnpei', 'PONT', '', 11, 11, 'Pohnpei Standard Time', '', 'Pohnpei', 'ChIJv5wGTgUJC2YRPEInRa0WmQM', '', '', 'FM', 'Federated States of Micronesia', 6.8541254, 158.2623822),
('Pacific/Port_Moresby', 'PGT', '', 10, 10, 'Papua New Guinea Time', '', 'Port Moresby', 'ChIJ0QREIXcxAmkRfcNnZKYUPJM', '', '', 'PG', 'Papua New Guinea', -9.4780123, 147.1506542),
('Pacific/Rarotonga', 'CKT', '', -10, -10, 'Cook Island Time', '', 'Rarotonga', 'ChIJ6SqjrGjRV3ERXZ7_fsQBoFE', '', '', 'CK', 'Cook Islands', -21.2292371, -159.7763491),
('Pacific/Saipan', 'CHST', '', 10, 10, 'Chamorro Standard Time', '', 'Saipan', 'ChIJUVyZkDSx2GYR0OGWcyirmE8', '', '', 'MP', 'Northern Mariana Islands', 15.1515153, 145.7297891),
('Pacific/Tahiti', 'TAHT', '', -10, -10, 'Tahiti Time', '', 'Tahiti', 'ChIJZR4tmFOzm3YR-qOIiTr0PEE', '', '', 'PF', 'French Polynesia', -17.6509195, -149.4260421),
('Pacific/Tarawa', 'GILT', '', 12, 12, 'Gilbert Island Time', '', 'Tarawa Atoll', 'ChIJLV2_OylcZGURyJ4Vw9RC_Ys', '', '', 'KI', 'Kiribati', 1.4518171, 172.9716617),
('Pacific/Tongatapu', 'TOT', '', 13, 13, 'Tonga Time', '', 'Tongatapu', 'ChIJneFSsXij9HERjwhJY_xFcs8', '', '', 'TO', 'Tonga', -21.1465968, -175.2515482),
('Pacific/Wake', 'WAKT', '', 12, 12, 'Wake Time', '', 'Wake Island', '', '', '', 'US', 'United States', 19.279619, 166.6499348),
('Pacific/Wallis', 'WFT', '', 12, 12, 'Wallis and Futuna Time', '', 'Wallis Island', 'ChIJP-esslKyyHERTGce8jDkbVY', '', '', 'WF', 'Wallis and Futuna', -13.2959105, -176.2056843);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `datetime_ts` text NOT NULL,
  `card_nr` text NOT NULL,
  `car_nr` text NOT NULL,
  `product` text NOT NULL,
  `amount` text NOT NULL,
  `sum` text NOT NULL,
  `currency` text NOT NULL,
  `country` text NOT NULL,
  `country_iso` text NOT NULL,
  `fuel_station` text NOT NULL,
  `lat` text DEFAULT NULL,
  `lng` text DEFAULT NULL,
  `gps_km` text DEFAULT NULL,
  `can_km` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezonecity`
--
ALTER TABLE `timezonecity`
  ADD UNIQUE KEY `time_zone_2` (`time_zone`),
  ADD KEY `time_zone` (`time_zone`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=873;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
