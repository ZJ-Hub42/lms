-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 11:24 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(10) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(5000) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(10) NOT NULL,
  `books_quantity` varchar(20) NOT NULL,
  `books_availability` varchar(20) NOT NULL,
  `librarian_username` varchar(20) NOT NULL,
  `books_file` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_quantity`, `books_availability`, `librarian_username`, `books_file`) VALUES
(1, 'Theoretical Numerical Analysis', 'books-image/5ebaa3080bb0327177a67d697223498a41GxQsLNarL._SX328_BO1,204,203,200_.jpg', 'Kendall Atkinson', 'Dover Publications', '15/03/19', '420', '10', '7', 'admin', 'books-file/nalrs.pdf'),
(3, 'Digital Image Processing', 'books-image/f5546d1614746fed61c4162163d81a59196018.jpg', 'Rafael C. Gonzalez', 'Prentice Hall', '20/03/19', '500', '20', '18', 'admin', 'books-file/IT6005-SCAD-MSM-by www.LearnEngineering.in.pdf'),
(6, 'Artificial Intelligence', 'books-image/17385102edb4831bab1b8b0577389d5e0133001989.jpg', ' Peter Norvig', 'Dover Publications', '25/03/19', '420', '5', '4', 'admin', 'books-file/17385102edb4831bab1b8b0577389d5eArtificial Intelligence.pdf'),
(7, 'Parallel and Distributed Processing', 'books-image/1554233254.jpg', 'Jose Rolim', 'Elsevier Science', '02/0419', '350', '10', '8', 'admin', 'books-file/1554233331.pdf'),
(8, 'The Guest Book: A Novel', 'books-image/1568430614.jpg', 'test', 'test', '10/5/19', '200', '10', '8', 'admin', 'books-file/1568430614.pdf'),
(9, 'Android Application Development For Dummies 2E', 'books-image/1582087346.jpg', 'Burton, Michael; Felker, Donn', 'John Wiley', '12/2/2020', '107.00', '5', '6', 'admin', 'books-file/1582087346.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `finezone`
--

CREATE TABLE `finezone` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finezone`
--

INSERT INTO `finezone` (`id`, `username`, `utype`, `email`, `booksname`, `fine`) VALUES
(39, 'myrah8', 'student', 'myrah@gmail.com', 'Theoretical Numerical Analysis', '50'),
(40, 'myrah8', 'student', 'myrah@gmail.com', 'The Guest Book: A Novel', '50'),
(42, 'hanani', 'student', 'hanani@gmail.com', 'Android Application Development For Dummies 2E', '50');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(10) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(10) NOT NULL,
  `booksreturndate` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `utype`, `regno`, `name`, `sem`, `session`, `dept`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(36, 'student', 'KV2017AUT012', 'Mohd Hanis bin Shapik', '5th', '17/20', 'AUTO', '0111020304', 'mhanis@gmail.com', 'Theoretical Numerical Analysis', '18/02/2020', '19/03/2020', 'mhanis'),
(37, 'student', 'KV2017ART008', 'Myrah binti Souleh', '6th', '17/20', 'ART', '014141516', 'myrah@gmail.com', 'The Guest Book: A Novel', '18/02/2020', '20/02/2020', 'myrah8'),
(39, 'student', 'KV2017ART008', 'Myrah binti Souleh', '6th', '17/20', 'ART', '014141516', 'myrah@gmail.com', 'Theoretical Numerical Analysis', '10/02/2020', '19/02/2020', 'myrah8'),
(40, 'student', 'KV2018ART018', 'Haidy bin Hamid', '5th', '17/20', 'ART', '0164548857', 'haidy01@gmail.com', 'Artificial Intelligence', '21/02/2020', '01/03/2020', 'haidy01');

-- --------------------------------------------------------

--
-- Table structure for table `lib_registration`
--

CREATE TABLE `lib_registration` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_registration`
--

INSERT INTO `lib_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `photo`, `status`) VALUES
(2, 'Naim Danial bin Oathman', 'admin', 'admin', 'naim_oath@gmail.com', '0123456789', 'Kolej Vokasional Malaysia', 'upload/1582171234.JPG', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `rusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_books`
--

CREATE TABLE `request_books` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `burl` varchar(500) NOT NULL,
  `read1` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_books`
--

INSERT INTO `request_books` (`id`, `name`, `username`, `email`, `utype`, `bname`, `burl`, `read1`) VALUES
(10, 'M Karlis bin Kamal', 'karlis', 'karlis@gmail.com', 'teacher', 'Excel VBA Programming For Dummies, 5th Edition', 'https://www.mphonline.com/en/productdetails/books/information-technology/9781119518174', 'yes'),
(11, 'M Karlis bin Kamal', 'karlis', 'karlis@gmail.com', 'teacher', 'Management Information Systems', 'https://www.mphonline.com/en/productdetails/books/information-technology/9781292211756', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `std_registration`
--

CREATE TABLE `std_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `session` varchar(5) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_registration`
--

INSERT INTO `std_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `sem`, `dept`, `session`, `regno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(56, 'Hanani binti Hadi', 'hanani', 'hanani', 'hanani@gmail.com', '0124545454', '7th', 'IT', '17/20', 'KV2017KPD054', 'flat hijau, kedah.', 'student', 'upload/1582170321.jpg', 'yes', '30b45b83fbf11c9623938378a7ae0c23', 'yes'),
(57, 'Myrah binti Souleh', 'myrah8', 'myrah8', 'myrah@gmail.com', '014141516', '6th', 'ART', '17/20', 'KV2017ART008', 'tembok besar, pahang.', 'student', 'upload/avatar.jpg', 'yes', 'b00f18b157d3210cb92304b85cf3ce9e', 'yes'),
(58, 'Mohd Hanis bin Shapik', 'mhanis', 'mhanis', 'mhanis@gmail.com', '0111020304', '5th', 'AUTO', '17/20', 'KV2017AUT012', 'balik pasir, johor.', 'student', 'upload/avatar.jpg', 'yes', '623fa7354d8780d7fdb22f51fe5e714c', 'yes'),
(59, 'A iman bin khairil', 'iman14', 'iman14', 'iman14@gmail.com', '014789635', '7th', 'EAE', '17/20', 'KV2017EAE014', 'simpang pat, selangor.', 'student', 'upload/avatar.jpg', 'yes', '5f9daa5d3ef95971aca6c7156545ec63', 'yes'),
(60, 'Haidy bin Hamid', 'haidy01', 'haidy01', 'haidy01@gmail.com', '0164548857', '5th', 'ART', '17/20', 'KV2018ART018', 'tembok besar, melaka.', 'student', 'upload/avatar.jpg', 'no', '60b24aa7909131c3fcbe873afca5be31', 'yes'),
(61, 'Saravanan A/L Kumar', 'sarav12', 'sarav12', 'sarav12@gmail.com', '0111030201', '7th', 'AUTO', '18/21', 'KV2018AUT012', 'Kedah', 'student', 'upload/avatar.jpg', 'pending', '5c8a9ba4088f09879289788112338349', 'yes'),
(62, 'Nur Diana binti Rahman', 'diana7', 'diana7', 'diana7@gmail.com', '01777777', '5th', 'ART', '18/21', 'KV2018ART021', 'Bukit tinggi, Pahang', 'student', 'upload/avatar.jpg', 'pending', '5b50277534436fc5637da500702206b5', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_issuebook`
--

CREATE TABLE `t_issuebook` (
  `id` int(10) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lecturer` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(20) NOT NULL,
  `booksreturndate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_issuebook`
--

INSERT INTO `t_issuebook` (`id`, `utype`, `idno`, `name`, `lecturer`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(21, 'teacher', '0001', 'M Karlis bin Kamal', 'KPD', '0132496584', 'karlis@gmail.com', 'Artificial Intelligence', '16/02/2020', '20/02/2020', 'karlis'),
(22, 'teacher', '0027', 'Lee Chong fi', 'EAE', '013012013', 'chongfi@gmail.com', 'The Guest Book: A Novel', '19/02/2020', '20/02/2020', 'chongfi'),
(23, 'teacher', '0001', 'M Karlis bin Kamal', 'KPD', '0132496584', 'karlis@gmail.com', 'Parallel and Distributed Processing', '19/02/2020', '20/02/2020', 'karlis'),
(24, 'teacher', '0027', 'Lee Chong fi', 'EAE', '013012013', 'chongfi@gmail.com', 'The Guest Book: A Novel', '21/02/2020', '25/02/2020', 'chongfi');

-- --------------------------------------------------------

--
-- Table structure for table `t_registration`
--

CREATE TABLE `t_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_registration`
--

INSERT INTO `t_registration` (`id`, `name`, `username`, `password`, `lecturer`, `email`, `phone`, `idno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(7, 'M Karlis bin Kamal', 'karlis', 'karlis', 'KPD', 'karlis@gmail.com', '0132496584', '0001', 'papan putih, sabah.', 'teacher', 'upload/1582188826.jpg', 'yes', '25bdab43728ec9dc98a97d83f0ad4777', 'yes'),
(8, 'Noor Lina binti Jamil', 'lina55', 'lina55', 'Art', 'lina55@gmail.com', '0185252525', '0023', 'ioi, Kuala Lumpur.', 'teacher', 'upload/avatar.jpg', 'yes', 'b61c87684864e72c0abaecb0bfce5806', 'yes'),
(9, 'Lee Chong fi', 'chongfi', 'chongfi', 'EAE', 'chongfi@gmail.com', '013012013', '0027', 'paya bakau, penang.', 'teacher', 'upload/1582084252.png', 'yes', '056959a44b232e101e5f04b03a656222', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finezone`
--
ALTER TABLE `finezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib_registration`
--
ALTER TABLE `lib_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_books`
--
ALTER TABLE `request_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_registration`
--
ALTER TABLE `std_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_registration`
--
ALTER TABLE `t_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `finezone`
--
ALTER TABLE `finezone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lib_registration`
--
ALTER TABLE `lib_registration`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request_books`
--
ALTER TABLE `request_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `std_registration`
--
ALTER TABLE `std_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `t_registration`
--
ALTER TABLE `t_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
