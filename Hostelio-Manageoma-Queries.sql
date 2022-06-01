
-- QUERY TO CREATE AND USE THE HOSTEL DATABASE :-

 CREATE DATABASE HOSTELIO_MANAGEOMA;
 USE HOSTELIO_MANAGEOMA;
 SHOW DATABASES;


-- QUERIES FOR THE CREATION OF TABLES:-

-- (1) Table STUDENT
 CREATE TABLE STUDENT(
	 RECORD_NO INT(5),
	 STUDENT_ID VARCHAR(15) NOT NULL, 
	 FIRST_NAME VARCHAR(25) NOT NULL,
	 LAST_NAME VARCHAR(25),
	 YEAR_OF_STUDY INT(8),
	 PROGRAM VARCHAR(50),
	 FLAT_NO INT(4), 
	 CONTACT_NO BIGINT(13),           -- BIGINT takes (-2^-63 TO 2^63) 
     GUARDIAN_NO BIGINT(13),
		PRIMARY KEY(STUDENT_ID));

DESCRIBE STUDENT;

-- (2) Table STUDENT_IN_OUT
 CREATE TABLE STUDENT_IN_OUT(
	 RECORD_NO BIGINT(10),
     STUDENT_ID VARCHAR(15) NOT NULL, 
	 STD_DEPARTURE TIMESTAMP,
	 STD_ARRIVAL TIMESTAMP,
	 REASON varchar(255),
		PRIMARY KEY(RECORD_NO));
 
DESCRIBE STUDENT_IN_OUT;

-- (3) Table TRANSACT
CREATE TABLE TRANSACT(
	 TRANS_ID INT(5),
	 STUDENT_ID VARCHAR(15) NOT NULL,
	 HOSTEL_AMT INT(20),
	 MESS_AMT INT(20),
	 REASONS_IF_ANY varchar(255));
 
DESCRIBE TRANSACT;

-- (4) Table FLAT
CREATE TABLE FLAT(
	 FLAT_NO INT(50),
	 BUILD_NAME varchar(10),
	 ELECTRIC_CONSUME INT(10),
	 FINE INT(10),
	 F_STATUS VARCHAR(10));

DESCRIBE FLAT;

-- (5) Table HOSTEL STAFF
CREATE TABLE Hostel_staff (
	First_name VARCHAR(25) NOT NULL,
	Second_name VARCHAR(25),
	Flat_Number INT(8) NOT NULL,
	Attendence INT(8),
	Role VARCHAR(25) NOT NULL,
	Contact_Number BIGINT(13),
	Staff_ID VARCHAR(15) NOT NULL);

 DESCRIBE Hostel_Staff;

-- (6) Table HOSTEL
CREATE TABLE hostel(
	H_Name char(10),
 	No_of_Room INT(10),
 	No_of_Students INT(10),
 	F_STATUS VARCHAR(10));
DESCRIBE Hostel;
show tables;

  
  insert into STUDENT values(1,202051027,"Anisha","Katiyar",2,"CSE",402,8104199999,9999900000);
  insert into STUDENT values(2,202051029,"Ankur","Shukla",NULL,"CSE",703,9999999900,22222222);

  SELECT * FROM STUDENT;
 
  insert into STUDENT_IN_OUT values(1,202051027,"2022-02-27","2022-03-02"," Going Home ");
  insert into STUDENT_IN_OUT values(2,202051029,"2022-03-02","2022-03-02"," Temple Visit ");
  insert into FLAT(flat_no,build_name,f_status) values (402,"F","1/5 Full");

  SELECT * FROM STUDENT_IN_OUT;
  SELECT * FROM FLAT;
 
  ALTER TABLE TRANSACT DROP REASONS_IF_ANY;   -- unnecessary field in Transact Table
  SELECT * FROM TRANSACT;
 
  ALTER TABLE STUDENT_IN_OUT MODIFY Record_No BIGINT(10) NOT NULL AUTO_INCREMENT;
  SELECT * FROM STUDENT_IN_OUT;               -- Feature of Auto Incrementaion added

  INSERT INTO FLAT(FLAT_NO,BUILD_NAME,ELECTRIC_CONSUME,FINE,F_STATUS) VALUES(203,"A",123,12340,"4/7 FULL");
  insert into student_in_out(STUDENT_ID,STD_DEPARTURE,REASON) values(20205020,"2022-03-2","WLK");
 
  Insert into transact values
	('12345','202051006',30000,15000),
    ('12346','202051111',32000,14000),
    ('12347','202051112',28000,15000);

  DELETE FROM TRANSACT WHERE STUDENT_ID='202051006';
  SELECT * FROM TRANSACT;

  DELETE FROM STUDENT_IN_OUT WHERE RECORD_NO=2;
  SELECT * FROM STUDENT_IN_OUT; 

  UPDATE FLAT SET FLAT_NO=303 WHERE FLAT_NO=203 ;
  SELECT * FROM FLAT;

  UPDATE STUDENT SET YEAR_OF_STUDY=3 WHERE STUDENT_ID=202051029 ; 
  SELECT * FROM STUDENT;


 SHOW FULL TABLES;

 insert into FLAT values (604,"A",72,NULL,"3/7");
 INSERT INTO FLAT(FLAT_NO,BUILD_NAME,ELECTRIC_CONSUME,FINE,F_STATUS) VALUES(702,"C",57,2095,"1/5");
select * from Flat;

UPDATE FLAT SET F_STATUS="0/5 VACANT" WHERE F_STATUS=" 0/5";
SELECT * FROM FLAT;

insert into FLAT values (601,"A",107,NULL,"0/7 VACANT");


insert into STUDENT values(1,202051027,"Anisha","Katiyar",2,"CSE",402,8104199999,9999900000);
insert into STUDENT values(2,202051029,"Ankur","Shukla",2,"CSE",303,9998899900,9945621457);
insert into STUDENT values(3,202051025,"Foram","Patel",2,"CSE",402,8234199999,9999562170);
insert into STUDENT values(4,202051030,"Jayant","Asudhani",2,"IT",801,8554165321,9994598700);
insert into STUDENT values(5,202051031,"Garv","Chauhan",2,"CSE",303,9945939900,9548587026);
insert into STUDENT values(6,202051036,"Abhishek","Singh",2,"CSE",101,8554195699,9945987450);
insert into STUDENT values(7,202051063,"Akshat","Khandelwal",2,"CSE",704,9945987090,9578412562);
insert into STUDENT values(8,202051055,"Ishan","Pandey",2,"CSE",203,8104195569,9213579620);
insert into STUDENT values(9,202051056,"Aman","Kothari",2,"CSE",501,9569874983,9945579852);
insert into STUDENT values(10,202051090,"Tejas","Joshi",2,"CSE",604,9959873260,994565239);
insert into STUDENT values(11,202051032,"Brijesh","Agal",2,"CSE",702,9994654800,9551158985);
insert into STUDENT values(12,202051081,"Tirth","Joshi",2,"CSE",601,9991811050,9595959820);
SELECT * FROM STUDENT;

UPDATE Student SET FLAT_NO=303 WHERE FLAT_NO=703;
SELECT * FROM STUDENT;

INSERT INTO Hostel_staff values("Vijay","Singh","101",30,"Manager",9856245686,"AD605");

INSERT INTO Hostel_staff values("Sanjay","Khan","102",29,"Manager",9856226208,"AD705");
INSERT INTO Hostel_staff values("Akshat","Seth","303",30,"F-Block Warden",7392999208,"AD805");
INSERT INTO Hostel_staff values("Abhijit","Patel","103",25,"Manager",9920235686,"AD905");
INSERT INTO Hostel_staff values("Aditya",NULL,"102",5,"Ambulance Driver",9856925686,"AD205");
INSERT INTO Hostel_staff values("Jennet",NULL,"403",30,"Girls Warden",9856206586,"DD105");

 Select * from hostel_staff;


insert into student_in_out(STUDENT_ID,STD_DEPARTURE,REASON)
values(202051070,"2022-03-02","WLK"),
(202051070,"2022-03-02","SHOP"),
(202051027,"2022-03-04","PARTY"),
(202051029,"2022-03-04","PARTY"),
(202051025,"2022-03-04","PARTY"),
(202051030,"2022-03-04","PARTY"),
(202051031,"2022-03-04","WLK"),
(202051036,"2022-03-05","COMP"),
(202051063,"2022-03-05","COMP"),
(202051055,"2022-03-05","COMP"),
(202051056,"2022-03-05","WLK"),
(202051083,"2022-03-05","WLK"),
(202051090,"2022-03-06","SHOP"),
(202051032,"2022-03-06","WLK"),
(202051081,"2022-03-06","PARTY");
 
UPDATE student_in_out SET STD_DEPARTURE ="2022-03-05, 22:22:22",STD_ARRIVAL ="2022-03-05, 23:00:17" WHERE record_no=14;
UPDATE student_in_out SET STD_DEPARTURE ="2022-03-05, 22:27:41",STD_ARRIVAL ="2022-03-05, 23:01:45" WHERE record_no=15;
UPDATE student_in_out SET STD_DEPARTURE ="2022-03-05, 19:19:33",STD_ARRIVAL ="2022-03-05, 20:41:03" WHERE record_no=17;
Select * from student_in_out;

Insert into TRANSACT values   
 (14416,'202051027',30000,12000),
 (35622,'202051029',15000,NULL),
 (25628,'202051083',20000,8000),
 (18226,'202051091',NULL,12000),
 (NULL,'202051063',NULL,NULL),
 (25118,'202052051',20000,8000),
 (10006,'202051001',10000,6000),
 (78822,'202051090',32000,NULL),
 (65662,'202052041',18000,5000),
 (16616,'202051081',40000,12000);

alter table hostel drop f_status;
insert into hostel values("A",21,105);
insert into hostel values("B",19,95);
insert into hostel values("C",20,80);
insert into hostel values("D",21,70);
insert into hostel values("F",21,100);
select * from hostel;



-- [1] Join Operation ( Inner Join ) to depict attributes from 2 Individual Tables
 SELECT DISTINCT STUDENT_ID,FIRST_NAME,BUILD_NAME,STUDENT.FLAT_NO,F_STATUS FROM STUDENT INNER JOIN FLAT ON STUDENT.FLAT_NO = FLAT.FLAT_NO;

-- [2] Cardinality Check        
SELECT * from Student;
SELECT * from Student Group By Student_ID having count(Student_ID)>1;
SELECT * from Student_In_Out;
SELECT * from Student_In_Out having count(Student_ID)>1;

-- [3] Using Count to Print Duplicate Entries 
 Select FLAT_NO from Flat Group By FLAT_NO Having Count(FLAT_NO)>1;

-- [4] With Clause for Indicating Flats with Fine higher than the average
 WITH temporaryTable(averageFine) as (SELECT avg(FINE) from FLAT)
	SELECT FLAT_NO,BUILD_NAME,FINE  
	FROM FLAT, temporaryTable 
	WHERE FINE > temporaryTable.averageFine;

 -- [5] Like Command to display Vacant Flats
 SELECT Flat_No, BUILD_NAME
 FROM FLAT
 WHERE F_Status NOT LIKE '% FULL';


 
 Select * from student;
 Select * from student_in_out;
 Select * from flat;
 Select * from hostel;
 Select * from hostel_staff;
 Select * from transact;
 
