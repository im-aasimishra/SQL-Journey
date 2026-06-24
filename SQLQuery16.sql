--create a table person containing person name dob id and phone num
CREATE TABLE person(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	ph_no VARCHAR(20) NOT NULL,
	CONSTRAINT pk_primary PRIMARY KEY (id)
)
SELECT * FROM person