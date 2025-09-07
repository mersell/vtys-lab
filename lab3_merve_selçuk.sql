create database BikeStores;
go
use BikeStores;
go
/*test için satýr*/ 
select top 10 * from production.products;
/* 1.soru */
SELECT MIN(list_price) AS MIN_PRICE, MAX(list_price) AS MAX_PRICE FROM production.products;
/* 2.soru */
SELECT COUNT(*) FROM  production.products;
SELECT AVG(list_price) AS AVG_PRICE,COUNT(list_price) AS COUNT_ ,SUM(list_price) AS sum_ FROM production.products; ;
/*3.soru*/
select top 5 first_name as name, last_name as surname   from sales.customers,sales.stores  where store_name= 'Santa Cruz Bike';
/**4.soru*/
select first_name,last_name from sales.customers where first_name like '_S%' and last_name like '%A';
/*5.soru*/
select distinct  first_name as name ,last_name as surname  from sales.customers,sales.orders,production.products where model_year between 2015 and 2017;
/*6.soru*/
select top 10 first_name as name, last_name as surname   from sales.customers,sales.stores,sales.orders  where store_name= 'Santa Cruz Bike' and store_name='Baldwin Bikes';