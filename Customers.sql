Delimiter $$
create procedure Customers_information (Customer_ID varchar(10), First_Name varchar(45),Middle_Name varchar(45), 
            Last_Name varchar(45), Phone_Number varchar(20), 
            Street varchar(45), City varchar(45), State varchar(45), Country varchar(45), Zipcode varchar(45), 
            Email_ID varchar(45))
BEGIN
insert into customers values (Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID);
END $$
DELIMITER ;

CALL Customers_information('C110', 'Prerna', NULL, 'Sinha', 2098764567, '33 Iroqouis Street',
	    'Boston', 'Massachusetts', 'USA', 02113, 'sinha.pr@husky.neu.edu');

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C103', 'Adarsh', NULL, 'Ravi', 8579284227, '170 Parker Hill Avenue',
	    'Boston', 'Massachusetts', 'USA', 02120, 'ravi.ad@husky.neu.edu');

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C103', 'Adarsh', NULL, 'Ravi', 8579284227, '170 Parker Hill Avenue',
	    'Boston', 'Massachusetts', 'USA', 02120, 'ravi.ad@husky.neu.edu'); 
        
insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C104', 'Pallav', NULL, 'Choudhary', 8579284248, '170 Parker Hill Avenue',
	    'Boston', 'Massachusetts', 'USA', 02120, 'chou.pa@husky.neu.edu'); 

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C105', 'Anik', NULL, 'Bhattacharya', 6179910489, '170 Parker Hill Avenue',
	    'Boston', 'Massachusetts', 'USA', 02120, 'bhat.anik@husky.neu.edu'); 

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C106', 'Dhrumil', NULL, 'Shah', 8578004902, '1027 Tremont Street',
	    'Boston', 'Massachusetts', 'USA', 02111, 'shah.dhrum@husky.neu.edu'); 

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C107', 'Taashi', NULL, 'Khurana', 6175046789, '11 Tetlow Street',
	    'Boston', 'Massachusetts', 'USA', 02115, 'khurana.t@husky.neu.edu'); 

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C108', 'Aishwarya', NULL, 'Pisupati', 6176719057, '11 Tetlow Street',
	    'Boston', 'Massachusetts', 'USA', 02115, 'pisupati.aish@husky.neu.edu'); 

insert into customers(Customer_ID, First_Name, Middle_Name, 
            Last_Name, Phone_Number, 
            Street, City, State, Country, Zipcode, 
            Email_ID)
values('C109', 'Akash', NULL, 'Chitrey', 617111229, '1027 Tremont Street',
	    'Boston', 'Massachusetts', 'USA', 02111, 'chitrey.ak@husky.neu.edu'); 
        
delete from customers where Customer_ID = 'CI103';

select * from customers

