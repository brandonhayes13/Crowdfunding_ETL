drop table if exists campaign;
create table Campaign(
	cf_id SERIAL PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(255) NOT NULL,
	description Text,
	goal decimal(15,2) Not null,
	pledged decimal(15,2) not null,
	outcome varchar(50),
	backers_count int,
	country varchar(50),
	currency varchar(10),
	launch_date timestamp,
	end_date timestamp,
	staff_pick boolean,
	spotlight boolean,
	category_id varchar(50),
	subcategory_id varchar(50),
	foreign key (category_id) references Category(category_id),
	foreign key (subcategory_id) references Subcategory(subcategory_id),
	foreign key (contact_id) references Contact(contact_id)
);

drop table if exists contact;
create table Contact(
	contact_id INT Primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) Unique not null
);

drop table if exists category;
create table Category (
	category_id varchar(50) primary key,
	category_name varchar(255) not null
);

drop table if exists subcategory;
create table Subcategory (
	subcategory_id varchar(50) primary key,
	subcategory_name varchar(255) not null
);

select * from contact;

select * from category;

select * from subcategory;

select * from campaign;
