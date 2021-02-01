/*Procedures*/
/*1.	Users having full KYC.*/
delimiter %$
create procedure find_users()
deterministic
begin
select name,phone_no,email_id from primary_details where full_kyc = 'yes';
end %$


/*2.	Display product details seller wise. */
delimiter %$
create procedure product_info()
deterministic
begin
select seller.sname, product.* 
from seller, product 
where seller.seller_id = product.seller_id 
order by product.seller_id;
end %$

/*3.	Flight details for flights flying between 2020-12-17 to 2020-12-19.*/
delimiter %$
create procedure find_flights()
deterministic
begin
select * from flight_schedule where depart_date between '2020-12-17' and '2020-12-19';
end %$

/*4.	Display all cancelled transactions by particular user.*/
create procedure find_cancel(user_name varchar(50))
deterministic
begin
select * from passbook where sstatus = 'Cancelled' and r_status = 'Cancelled' and 
suser_id = (select user_id from primary_details where name = user_name);
end %$

/*5.	What is the starting and the ending station of the particular city’s particular metro line colour?*/
delimiter @
create procedure find_loc(city_name1 varchar(50), line_colour varchar(50))
deterministic
begin
declare temp varchar(50);
select metro_route.from_loc, metro_route.to_loc from metro_route  where metro_route.from_loc = 
(select location_name from metro_locations where city_code = (select city_code from metro_types where city_name = city_name1) limit 1) 
and color = line_colour;
end@