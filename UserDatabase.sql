DROP DATABASE IF exists UserDatabase;
CREATE DATABASE UserDatabase;
USE UserDatabase;

drop table if exists Accounts;

create table Accounts(aID int primary key auto_increment, username varchar(15), password varchar(25));

insert into Accounts values(1, "joe", "pass");

select * from Accounts;
