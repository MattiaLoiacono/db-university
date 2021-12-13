create database `university`;
USE `university`;

create table `departments`(
	`id` int not null auto_increment,
	`name` varchar(100) not null,
	`address` varchar(250) not null,
	`phone` int null,
	`email` varchar(100) not null,
	`website` varchar(100) not null,
	`head_of_department` varchar(100) not null,
	primary key(`id`)
);

create table `degrees`(
	`id` int not null auto_increment,
	`name` varchar(100) not null,
	`address` varchar(250) not null,
	`email` varchar(100) not null,
	`website` varchar(100) not null,
	`level` int not null,
	`departments_id` int not null,
	primary key(`id`),
	foreign key(`departments_id`) REFERENCES departments(`id`)
);

create table `student`(
	`id` int not null auto_increment,
	`name` varchar(100) not null,
	`surname` varchar(100) not null,
	`date_of_birth` Date not null,
	`fiscal_code` int not null,
	`enrolment_date` Date not null,
	`registration number` int not null,
	`email` varchar(100) not null,
	`degrees_id` int not null,
	primary key(`id`),
	foreign key(`degrees_id`) REFERENCES degrees(`id`)
);

create table `exams`(
	`id` int not null auto_increment,
	`date` date not null,
	`hour` time not null,
	`location` varchar(100) not null,
	`address` varchar(100) not null,
	`courses_id` int not null,
	primary key(`id`),
	foreign key(`courses_id`) REFERENCES courses(`id`)
);

create table `courses`(
	`id` int not null auto_increment,
	`name` varchar(100) not null,
	`description` varchar(250) not null,
	`website` varchar(100) not null,
	`cfu` int not null,
	`degrees_id` int not null,
	primary key(`id`),
	foreign key(`degrees_id`) REFERENCES degrees(`id`)
);

create table `teachers`(
	`id` int not null auto_increment,
	`name` varchar(100) not null,
	`surname` varchar(100) not null,
	`phone` int not null,
	`email` varchar(100) not null,
	`office_address` varchar(100) not null,
	primary key(`id`)
);
