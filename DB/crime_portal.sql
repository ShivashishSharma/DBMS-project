

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2022-12-06', 'My Home has been Robbed.', 'Assigned', 'ChargeSheet Filed', 't101');



CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('admin', 'admin');


CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Shreyash Raj', 'a101', 'Murder', 'Anandapur', 'serious'),
('Vivek Bhojwani', 'a102', 'All', 'Anandapur', 'vivel'),
('Preetham Tom', 't101', 'Robbery', 'Tollygunge', 'tmc');



CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('shivashish@indore', 'Shivashish', 'Indore', 'Sebasees'),
('sujal@satna', 'Sujal', 'Satna', 'sujal');



CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2022-11-17 10:32:06', 'Criminal Verified'),
(1, '2022-11-17 10:32:12', 'Criminal Caught'),
(1, '2022-11-17 10:32:15', 'Criminal Interrogated'),
(1, '2022-11-17 10:32:21', 'Criminal Accepted the Crime'),
(1, '2022-11-17 10:32:26', 'Criminal Charged'),
(1, '2022-11-17 10:32:51', 'The case has been moved to Court.'),
(1, '2022-11-17 10:32:59', 'Criminal Verified');


CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Sanskar', 'sansybhai@gmail.com', 'sankar', 'Bihar', 123214521452, 'Male', 9854123654);




ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);


ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);


ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

