DROP DATABASE IF exists UserDatabase;
CREATE DATABASE UserDatabase;
USE UserDatabase;

drop table if exists Accounts;

create table Accounts(username varchar(20) primary key, password text, name text, phonenumber int unique);

create table Budget(username varchar(20), totalbudget double, billsbudget double, foodbudget double, 
entertainbudget double, otherbudget double, foreign key(username) references Accounts(username) on delete cascade);

create table Costs(username varchar(20), totalcosts double, budgetcosts double, foodcosts double,
entertainmentcosts double, othercosts double, foreign key(username) references Accounts(username) on delete cascade);

create table Transactions(username varchar(20), transaction_month date, total_budget double, bills_budget double, food_budget double, 
entertainment_budget double, other_budget double, total_spent double, budget_spent double, food_spent double, 
entertainment_spent double, other_spent double, unique(username, transaction_month), foreign key(username) 
references Accounts(username) on delete cascade);

insert into Accounts values("bob", "pass", "bob", 1234567890);

select * from Accounts;
