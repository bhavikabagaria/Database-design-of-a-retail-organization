insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (3, 10, 1, 1, '2018-04-25 11:23:54', 'C102', '2018-04-29 10:35:45',
	 NULL, 2001, 2);
     
select * from orders;

insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (4, 10, 1, 1, '2018-04-25 11:23:54', 'C102', '2018-04-29 10:35:45',
	 NULL, 2001, 2);
     
insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (5, 14, 1, 2, '2018-04-25 08:23:54', 'C110', '2018-04-29 11:35:45',
	 NULL, 2001, 2);
     
insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (6, 8, 4, 1, '2018-04-11 02:20:54', 'C105', '2018-04-17 08:35:45',
	 NULL, 2004, 2);
     
insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (7, 5, 10, 1, '2018-04-09 05:20:54', 'C105', '2018-04-11 10:35:45',
	 NULL, 2001, 1);

insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (8, 1, 2, 1, '2018-04-20 07:20:00', 'C108', '2018-04-23 04:54:45',
	 NULL, 2004, 2);
     
insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (9,11, 3, 1, '2018-04-13 11:20:54', 'C109', '2018-04-15 01:15:45',
	 NULL, 2002, 2);
     
insert into orders(Order_ID, Product_ID, Order_Quantity, Order_Status_ID,
				   Modified_Date, Customer_ID, Order_date_time, Delivery_date_time, 
                   Shipping_method_ID, Shipping_address_ID)  
values (10,12, 6, 1, '2018-04-06 09:20:54', 'C111', '2018-04-15 12:15:45',
	 NULL, 2003, 2);
     
UPDATE orders
SET Order_status_ID= 3, Modified_Date = current_timestamp() 
WHERE Order_ID=5;