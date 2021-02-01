/*Functions*/
/*1. Write a function to display the cost of travelling in 3 tier AC general from particular start location to particular end location by particular train. */
delimiter $$
create function train_amount(start_loc varchar(50), end_loc varchar(50), train_name1 varchar(50))
returns int
deterministic
begin
declare temp_sum int;
declare final_sum int;
declare temp_station varchar(50);
declare temp_station_start varchar(50);
set final_sum = 0;
set temp_station_start = start_loc;
label:loop
select train_schedule.end from train_schedule where route_id = (select route_id from train_route where train_no = (select train_no from train where train_name = train_name1))
 and train_schedule.start = temp_station_start into temp_station;
if temp_station != end_loc
then select ac3 from train_schedule where route_id = (select route_id from train_route where train_no = (select train_no from train where train_name = train_name1)) and 
train_schedule.start = temp_station_start into temp_sum;
set final_sum = final_sum + temp_sum;
set temp_station_start = temp_station;
iterate label;
else
select ac3 from train_schedule where route_id = (select route_id from train_route where train_no = (select train_no from train where train_name = train_name1)) and 
train_schedule.start = temp_station_start into temp_sum;
set final_sum = final_sum + temp_sum;
end if;
leave label;
end loop label;
return final_sum;
end $$

/*2.	Which vehicle used fasttag before 2020-12-01? */
delimiter $$
create function find_user()
returns varchar(50)
deterministic
begin
declare var varchar(50);
select name from primary_details natural join fasttag_wallet where fasttag_id = 
(select fasttag_id from fpassbook where date < '2020-12-01') into var;
return var;
end $$

/*3.	Ms. DEF wishes to travel from Balanghar to New market in Hyderabad. How many stations will be encounter while following this route?*/
delimiter $$
create function find_count(loc1 varchar(50), loc2 varchar(50))
returns int
deterministic
begin
declare number_count int;
declare temp varchar(50);
set number_count = 0;
label: loop
select to_loc from metro_schedule where from_loc = loc1 into temp;
if temp != loc2
then
set number_count = number_count + 1;
set loc1 = temp;
iterate label;
end if;
leave label;
end loop label;
return number_count;
end $$

/* 4.	How many stops are there while travelling from Mumbai to Pune in Bus no 10002.*/
delimiter $$
create function find_count_bus(loc1 varchar(50), loc2 varchar(50), bus_number int)
returns int
deterministic
begin
declare number_count int;
declare temp varchar(50);
set number_count = 0;
label: loop
select bus_schedule.end from bus_schedule where route_id = 
(select route_id from bus_route where bus_no = bus_number) and bus_schedule.start = loc1 into temp;
if temp != loc2
then
set number_count = number_count + 1;
set loc1 = temp;
iterate label;
end if;
leave label;
end loop label;
return number_count;
end $$

/*5.	Total expenditure by particular user. */
delimiter $@
create function find_expenditure(user_name varchar(50))
returns int
deterministic
begin
declare total int;
select sum(debited_amt) from passbook where suser_id = (select user_id from primary_details where name = user_name) into total;
return total;
end $@