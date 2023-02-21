CREATE TABLE category (
    category_id varchar(5) NOT NULL PRIMARY KEY,
    category_name varchar(15) NOT NULL
);

SELECT * FROM category;

CREATE TABLE subcategory (
    subcategory_id varchar(10) NOT NULL PRIMARY KEY,
    subcategory_name varchar(20) NOT NULL
);

SELECT * FROM subcategory;

CREATE TABLE contacts (
    contact_id int NOT NULL PRIMARY KEY,
    first_name varchar(15),
	last_name varchar(15),
	email varchar(50)
);

SELECT * FROM contacts;

CREATE TABLE campaign (
    cf_id int NOT NULL PRIMARY KEY,
	contact_id int,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name varchar(35),
	description text,
	goal float,
	pledged float,
	outcome varchar(15),
	backers_count int,
	country varchar(5),
	currency varchar(5),
	launch_date date,
	end_date date,
	category_id varchar(5),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id varchar(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;