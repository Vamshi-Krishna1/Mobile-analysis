create schema mobile_analysis;
use mobile_analysis;
select * from mobile;

-- Check mobile features and price lsit --

select Phone_name, Price
from mobile;

-- Find out the price of 5 most expensive phones --

select * from mobile
order by price desc
limit 5;

-- Find out the price of 5 most cheapest phones --

select * from mobile
order by price asc
limit 5;

-- List of top 5 Samsung phones with price and all features --

select * from mobile where Brands = 'Samsung'
order by price desc
limit 5;

-- Must have android phones list then top 5 High price android phones --

select * from mobile
where operating_system_type = "Android"
order by price desc
limit 5;

-- Must have android phones list then top 5 lower price android phones --

select * from mobile
where operating_system_type = "Android"
order by price asc
limit 5;

-- Must have IOS phones list then top 5 High price IOS phones --

select * from mobile
where operating_system_type = "iOS"
order by price desc
limit 5;

-- Must have IOS phones list then top 5 Lower price IOS phones --

select * from mobile
where operating_system_type = "iOS"
order by price asc
limit 5;

-- write a query which phone support 5g and also top 5 phone with 5g support --

select * from mobile
where 5G_Availability = "yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name --

select Brands, sum(price)
from mobile
group by Brands;
