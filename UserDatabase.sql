DROP DATABASE IF exists UserDatabase;
CREATE DATABASE UserDatabase;
USE UserDatabase;

drop table if exists Accounts;

create table Accounts(username varchar(20) primary key, password varchar(25), name varchar(40), phone_number int unique);

create table Budget(username varchar(20), total_budget double, bills_budget double, food_budget double, 
entertainment_budget double, other_budget double, foreign key(username) references Accounts(username) on delete set null);

create table Costs(username varchar(20), current_total_cost double, current_budget_cost double, current_food_cost double,
current_entertainment_cost double, current_other_cost double, foreign key(username) references Accounts(username) on delete set null);

create table Transactions(username varchar(20), transaction_month date, total_budget double, bills_budget double, food_budget double, 
entertainment_budget double, other_budget double, total_spent double, budget_spent double, food_spent double, 
entertainment_spent double, other_spent double, unique(username, transaction_month), foreign key(username) 
references Accounts(username) on delete set null);

insert into Accounts values("bob", "pass", "bob", 1234567890);

select * from Accounts;
