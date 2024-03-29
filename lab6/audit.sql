DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `AUDIT_ID` int(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `CUSTOMER_ID` varchar(4) NOT NULL,
  `LOG_DATE` date NOT NULL,
  `USED` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `audit` (`AUDIT_ID`, `CUSTOMER_ID`, `LOG_DATE`, `USED`) VALUES
(1, 'C001', '2015-08-01', '100000.00'),
(2, 'C001', '2015-08-05', '200000.00'),
(3, 'C001', '2015-08-10', '300000.00'),
(4, 'C002', '2015-08-02', '400000.00'),
(5, 'C002', '2015-08-07', '100000.00'),
(6, 'C002', '2015-08-15', '300000.00'),
(7, 'C003', '2015-08-20', '400000.00'),
(8, 'C003', '2015-08-25', '200000.00'),
(9, 'C004', '2015-07-04', '100000.00'),
(10, 'C005', '2015-08-01', '100000.00'),
(11, 'C005', '2015-08-05', '200000.00'),
(12, 'C005', '2015-08-10', '300000.00'),
(13, 'C006', '2015-08-02', '400000.00'),
(14, 'C006', '2015-08-07', '100000.00'),
(15, 'C006', '2015-08-15', '300000.00'),
(16, 'C007', '2015-08-20', '400000.00'),
(17, 'C007', '2015-08-25', '200000.00'),
(18, 'C008', '2015-08-25', '100000.00');