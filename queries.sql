Create View db_retail as
SELECT orders.Order_ID, customers.First_Name, customers.Last_Name, orders.Product_ID
FROM orders 
INNER JOIN Customers ON orders.Customer_ID=customers.Customer_ID;

select * from db_retail;

delimiter $$
create procedure camp_cust_count(CampaignID int)
begin  
Select count(*)as count from customer_campaigns where Campaign_ID= CampaignID;
end $$
delimiter ;

call camp_cust_count(001);



delimiter $$
create procedure count_brand()
begin
select Brand, Count(Brand) as count from products p
inner join brand b on p.Brand_ID = b.Brand_ID
inner join orders o on p.Product_ID = o.Product_ID
group by Brand;
end $$
delimiter ;

call count_brand()
