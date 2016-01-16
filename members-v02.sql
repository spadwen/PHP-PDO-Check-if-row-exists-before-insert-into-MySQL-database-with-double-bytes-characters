

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(50) NOT NULL,
  `en_name` varchar(50) NOT NULL,
  `cn_address` varchar(150) NOT NULL,
  `en_address` varchar(150) NOT NULL,
  `cn_city` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `cn_name`, `en_name`, `cn_address`, `en_address`, `cn_city`) VALUES
(1, '', 'en_name', 'cn address test', 'en address test', 'cn city only'),
(2, 'test cn name', 'test en name', 'test cn address', 'test en address', 'test cn city'),
(3, 'm', 'en_name', 'mm', 'mm', 'mm'),
(4, 'm', 'en_name', 'mm', 'mm', 'mm'),
(5, 'm', 'en_name', 'mm', 'mm', 'mm'),
(6, 'test cn name', 'name_en', 'mm', 'mm', 'mm'),
(7, 'çŽ‹çš“', 'çŽ‹çš“', 'çŽ‹çš“', 'çŽ‹çš“', 'çŽ‹çš“'),
(8, 'يوم جيد، العالم', 'يوم جيد، العالم', 'يوم جيد، العالم', 'يوم جيد، العالم', 'يوم جيد، العالم'),
(9, '좋은 일, 세계', '좋은 일, 세계', '좋은 일, 세계', '좋은 일, 세계', '좋은 일, 세계'),
(10, 'Một ngày tốt lành, thế giới', 'Một ngày tốt lành, thế giới', 'Một ngày tốt lành, thế giới', 'Một ngày tốt lành, thế giới', 'Một ngày tốt lành, thế giới'),
(11, 'こんにちは、世界', 'こんにちは、世界', 'こんにちは、世界', 'こんにちは、世界', 'こんにちは、世界'),
(12, '王皓', '王皓', '王皓', '王皓', '王皓');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
