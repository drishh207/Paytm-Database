/*Triggers/*
/*1. After insert trigger for updating wallet current balance for successful transaction by Paytm user.*/
delimiter @
create trigger update_pos_balance
after insert 
on passbook
for each row
begin
if new.stransaction_id_type = 'wallet'
then 
update wallet set current_bal = current_bal - new.debited_amt where wallet_id =
 (select wallet_id from primary_details where user_id = new.suser_id);
end if;
end @

/*2. After insert trigger for re-Updating wallet current balance for cancelled transaction by Paytm user.*/
delimiter @
create trigger update_neg_balance
after insert 
on passbook
for each row
begin
if new.stransaction_id_type = 'wallet'
then 
update wallet set current_bal = current_bal + new.credited_amt where wallet_id = 
(select wallet_id from primary_details where user_id = new.ruser_id);
end if;
end @

/*3. 3.	After insert trigger for updating number of seats of a particular category after flight booking.*/
delimiter @
create trigger update_flight_seat
after insert 
on flight_booking
for each row
begin
if new.seat_type = 'Economy'
then update flight_schedule set seate = seate - 1 where schedule_id = new.schedule_id;
end if;
if new.seat_type = 'Buisness'
then update flight_schedule set seatb = seatb - 1 where schedule_id = new.schedule_id;
end if;
if new.seat_type = 'premium economy'
then update flight_schedule set seatpe = seatpe - 1 where schedule_id = new.schedule_id;
end if;
end @

/*4. Before delete trigger on train_route table for the condition that if route is deleted, corresponding schedules will be deleted in train.*/
delimiter @
create trigger delete_route_train
before delete
on train_route
for each row
begin
delete from train_schedule where route_id = old.route_id;
end@

/*5. Before delete trigger on session table on the condition that if all chats of a session are deleted, then session needs to be deleted.  */
delimiter $$
create trigger delete_chat
before delete
on session
for each row
begin
delete from message where session_id = old.session_id;
end $$