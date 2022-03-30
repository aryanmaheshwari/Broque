DROP DATABASE IF exists UserDatabase;
CREATE DATABASE UserDatabase;
USE UserDatabase;

drop table if exists Accounts;

create table Accounts(username varchar(20) primary key, password text, name text, phonenumber int unique);

create table Budget(username varchar(20), totalbudget double, billsbudget double, foodbudget double, 
entertainbudget double, otherbudget double, foreign key(username) references Accounts(username) on delete cascade);

create table Costs(username varchar(20), totalcosts double, budgetcosts double, foodcosts double,
entertainmentcosts double, othercosts double, foreign key(username) references Accounts(username) on delete cascade);

create table Transactions(username varchar(20), transactiondate date, totalbudget double, billsbudget double, foodbudget double, 
entertainbudget double, otherbudget double, totalspent double, budgetspent double, foodspent double, 
entertainspent double, otherspent double, unique(username, transactiondate), foreign key(username) 
references Accounts(username) on delete cascade);

insert into Accounts values("bob", "pass", "bob", 1234567890);

select * from Accounts;
