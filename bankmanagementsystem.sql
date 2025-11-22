

create database bankmanagementsystem;
use bankmanagementsystem;
show databases;




-- signup TABLE ------------------------------------------------

create table signup(formno varchar(20), 
name varchar(20), 
father_name varchar(20),
 dob varchar(20), 
 gender varchar(20),
 email varchar(30), 
 marital_status varchar(20), 
 address varchar(40), 
 city varchar(25),
 pincode varchar(20), 
 state varchar(25));

-- signup2 TBALE ------------------------------------------------------------------------------------------------
create table signup2
(formno varchar(20), 
religion varchar(20), 
category varchar(20), 
income varchar(20), 
education varchar(20), 
occupation varchar(20), 
pan varchar(20),
 aadhar varchar(20), 
 seniorcitizen varchar(20),
 eaccount varchar(20));



create table signup3(formno varchar(20), accountType varchar(40), cardno varchar(25), pin varchar(10), facility varchar(100)); 



create table login(formno varchar(20), cardno varchar(25), pin varchar(10));

 

create table bank(pin varchar(10), date varchar(50), type varchar(20), amount varchar(20));
ALTER TABLE bank ADD COLUMN formno VARCHAR(20);
desc bank;

-- keys ----------------------------------------------------------------------------------------
ALTER TABLE signup ADD PRIMARY KEY (formno);
ALTER TABLE signup2 ADD PRIMARY KEY (formno);
ALTER TABLE signup3 ADD PRIMARY KEY (formno);
ALTER TABLE login ADD PRIMARY KEY (formno);

ALTER TABLE bank ADD COLUMN transaction_id INT AUTO_INCREMENT PRIMARY KEY;


ALTER TABLE signup2
ADD CONSTRAINT fk_signup2_formno
FOREIGN KEY (formno) REFERENCES signup(formno);


ALTER TABLE signup3
ADD CONSTRAINT fk_signup3_formno
FOREIGN KEY (formno) REFERENCES signup(formno);

ALTER TABLE login
ADD CONSTRAINT fk_login_formno
FOREIGN KEY (formno) REFERENCES signup(formno);

ALTER TABLE bank
ADD CONSTRAINT fk_bank_formno
FOREIGN KEY (formno) REFERENCES signup(formno);
 ALTER TABLE bank MODIFY transaction_id VARCHAR(36) NOT NULL DEFAULT (UUID());


-- TABLES -----------------------------------------------------------
show tables;

select *from signup;
DESC signup;

select *from signup2;
DESC signup2;

select *from signup3;
DESC signup3;
select *from login;
DESC LOGIN;

select * from bank;
DESC bank;

select name,city
FROM signup
WHERE formno = 4019;

-- COMBINING signup signup2 signup3 ------------------------------------------------------
SELECT s.formno, s.name, s.father_name, s.city, s.gender, s.email,
       s2.religion, s2.category, s2.income, s2.education, s2.occupation,
       s3.accountType, s3.cardno, s3.facility
FROM signup s
JOIN signup2 s2 ON s.formno = s2.formno
JOIN signup3 s3 ON s.formno = s3.formno
WHERE s.formno = '4019';    
 
 --  BANK INFO VIEW ----------------------------------------------------------------------------------------
CREATE VIEW view_bank_info AS
SELECT s.formno, s.name, s.father_name, s.city, s.gender, s.email,
       s2.religion, s2.category, s2.income, s2.education, s2.occupation,
       s3.accountType, s3.cardno, s3.facility
FROM signup s
JOIN signup2 s2 ON s.formno = s2.formno
JOIN signup3 s3 ON s.formno = s3.formno;

select * from view_bank_info where formno ='4019';        -- to see bank info about user
-- --------------------------------------------------------------------------------------------------------------------------------------------------------

 

SELECT pin,
       SUM(CASE WHEN type='Deposit' THEN amount ELSE 0 END) AS total_deposit,
       SUM(CASE WHEN type='Withdrawal' THEN amount ELSE 0 END) AS total_withdrawal
FROM bank
GROUP BY pin;
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE INDEX idx_cardno ON signup3(cardno);
CREATE INDEX idx_pin ON login(pin);

SELECT * FROM signup3 WHERE cardno = '5040936066485527';  -- to check the services with this cerdno
SELECT * FROM login WHERE pin = '1973'; 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT pin FROM login;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
select l.pin, s.name, s.father_name
FROM signup s
join login l on s.formno=l.formno
where pin='3530';

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------



 






  

