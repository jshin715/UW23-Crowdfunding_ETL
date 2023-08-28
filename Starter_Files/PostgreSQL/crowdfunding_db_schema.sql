-- create contacts table
CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	CONSTRAINT contacts_pkey PRIMARY KEY (contact_id));
	
--create category table
CREATE TABLE category(
	category_id VARCHAR(4) NOT NULL,
	category VARCHAR(20),
	CONSTRAINT category_pkey PRIMARY KEY (category_id));
	
--create subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR(20),
	CONSTRAINT subcat_pkey PRIMARY KEY (subcategory_id));

--create campaign table
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50),
	description TEXT,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR(10),
	backers_count INT,
	country VARCHAR(3),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	CONSTRAINT contacts_campaign_fkey FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	CONSTRAINT category_campaign_fkey FOREIGN KEY (category_id) REFERENCES category (category_id),
	CONSTRAINT subcat_campaign_fkey FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id));
	
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
