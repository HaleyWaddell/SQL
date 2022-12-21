CREATE DATABASE PRINTS;
CREATE TABLE Customers
(Customer_id CHAR (4) PRIMARY KEY,Customer_name CHAR (20),Customer_add CHAR(20),
Customer_city CHAR (15), Customer_state CHAR (2), Customer_zip CHAR (5), Customer_phone CHAR (14));
CREATE TABLE Items
(tem_id CHAR (3) PRIMARY KEY, Title CHAR(25), Artist CHAR (15), Unit_price DECIMAL (5,2), On_hand CHAR(3));
CREATE TABLE Orders
(Order_id Char(2) PRIMARY KEY, Customer_date DATE, Ship_date DATE);
CREATE TABLE Orderline
(Order_id CHAR(5) PRIMARY KEY, Item_id CHAR (5), Order_qty CHAR(3));
INSERT INTO Customers
VALUES
('1000', 'Cora Blanca', '555 Seminole Ct.', 'Charlotte', 'NC', '28210', '7045521810'),
('1100', 'Yash Reed', '878 Madison Ave.', 'Greensboro', 'NC',  '27404', '3363165434'),  
('1200' , 'John Mills','4200 Olive Ave.','Columbia', 'SC', '29206','8034326225'),
 ('1300','David Cox', '608 Old Post Rd.', 'Decatur','GA','30030','4042437379'),
 ('1400', 'Tina Evans', '235 Easton Ave.', 'Jacksonville','FL','32221', '9049927234'),
 ('1500', 'Will Allen', '2508 W. Shaw Rd.', 'Raleigh','NC','27542','9198092545'),
 ('1600' ,'James Boyd' , '200 Pembury Ln.', 'Cloumbia','SC','29206', '8034327600'),
 ('1700', 'Will Parsons', '4990 S. Pine St.',' Raleigh','NC','32216', '9193500034'),
 ('1800', 'Walter Kelly','1200 Little St.', 'Columbia','SC','29206', '8034321987'),
 ('1900', 'Ann Damian', '7822 N. Ridge Rd.', 'Jacksonville', 'FL', '32216', '9047254672'),
 ('2000', 'Grace Hull', '4090 Caldweld St.', 'Charlotte','NC', '28205', '7043657655' ),
 ('2100', 'Jane Brown' , '3320 W. Main St. ', 'Charlotte','NC','28210', '7043729000'),
 ('2200', 'Betty Draper', '1600 Sardis Rd.', 'Sarasota','FL', '32441', '9189419121');
INSERT INTO Items
VALUES
('100', 'Under the Sun' ,'Donald Arley', '46.80', '340'), 
('200' ,'Dark Lady' ,'Keith Morris', '120.99', '250'),
('300', 'Happy Days', 'Andrea Reid', '78.00' , '210'), 
('350' ,'Top of the Mountain', 'Janice Jones', '110.00', '290'),
('400', 'Streets from Old' ,'Sharon Brune', '123.00' , '320'),
('450', 'The Hunt', 'Walter Alford', '39.99' , '390'), 
('600', 'Rainbow Row', 'Judy Ford ', '46.00' , '350'),
('700', 'Skies Above', 'Alexander Wilson',  '98.00', '275'),
('800','The Seas and Moon', 'Susan Beeler', '67.81', '235'), 
 ('850', 'Greek Isles', 'Benjamin Caudle', '76.00' , '300');
 ALTER TABLE Items
 MODIFY Unit_price DECIMAL (5,2);
 ALTER TABLE Items
 Modify Title CHAR(35);
 ALTER TABLE Items
 MODIFY Artist CHAR (25);
 INSERT INTO Orders
 VALUES
  ('1','1200', '1013-10-23','2013-10-38'),
 ('2', '1500','2013-10-30','2013-10-28'),
 ('3','1500','2013-11-09','2013-11-14'),
 ('4','2100','2013-11-15 ','2013-11-20'),
 ('5', '1600','2013-11-15','2013-11-20'),
 ('6','1900', '2013-12-15','2013-12-19'),
 ('7','2200', '2013-12-18','2013-12-22'),
 ('8','1600','2013-12-20 ','2013-12-22'),
 ('9','1000','2014-01-18','2014-01-23'),
 ('10','2200', '2014-01-31','2014-02-04'),
 ('11','1500','2014-02-01','2014-02-06'),
 ('12','1400','2014-02-27','2014-03-02'),
 ('13','1100','2014-03-10 ','2014-03-15'),
 ('14','1400','2014-03-14','2014-03-19');
 ALTER TABLE Orders
 MODIFY Customer_date CHAR (10);
 ALTER TABLE Orders
 MODIFY Ship_date CHAR (10);
 ALTER TABLE Orders
 ADD COLUMN Customer_id CHAR (6) 
 AFTER Order_id;
  INSERT INTO Orderline
 VALUES
 ('1', '800', '2'),
('1', '600', '1'),
('2', '700', '3'),
('2', '300', '2'),
('3', '850', '1'),
('4', '200', '4'),
('4' ,'100', '1'),
('4', '850', '1'),
('5', '450', '1'),
('6', '800', '2'),
('7', '300', '2'),
('7', '600', '2'),
('8' ,'100', '1'),
('9', '100', '3'),
('10','450', '6'),
('10', '600', '8'),
('10', '200', '4'),
('11' ,'700', '2'),
('12','300', '3'),
('12', '700', '4'),
('13', '200', '2'),
('13', '600', '10'),
('13', '450', '4'),
('14', '700', '8'),
('14', '200', '6'), 
('14', '800','4'), 
('14', '450', '2');
ALTER TABLE Orderline
MODIFY Order_id CHAR(5);
ALTER TABLE Orderline DROP PRIMARY KEY; 
                            
 
 
 
 
 
 

