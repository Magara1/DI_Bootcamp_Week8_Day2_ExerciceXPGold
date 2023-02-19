---Exercice XP_Gold Week8_Day2

---1.Find out how many films there are for each rating.

SELECT rating,COUNT (rating) FROM film GROUP BY rating;

---2.Get a list of all the movies that have a rating of G or PG-13.
---Filter this list further: look for only movies that are under 2 hours long, and whose rental price (rental_rate) is under 3.00.
---Sort the list alphabetically.
	
SELECT * FROM film WHERE film.rental_duration < 2 AND film.rental_rate <3 AND (film.rating ='G' OR film.rating ='PG-13');

---3.---Find a customer in the customer table, and change his/her details to your details, using SQL UPDATE.

UPDATE customer SET first_name ='Ngouan', last_name ='Magara', email ='magaretchien@gmail.com', store_id=2 WHERE customer.customer_id =1;

---4.---Now find the customer’s address, and use UPDATE to change the address to your address (or make one up).

UPDATE customer SET address_id=2 WHERE customer.customer_id =1


-------------Exercice2 : Students Table------------------------------
/*
Update
‘Lea Benichou’ and ‘Marc Benichou’ are twins, they should have the same birth_dates. Update both their birth_dates to 02/11/1998.
Change the last_name of David from ‘Grez’ to ‘Guez’.

*/

UPDATE students SET birth_date='1998-11-02' WHERE (students.first_name ='Lea' AND students.last_name ='Benichou') AND (students.first_name ='Marc' AND students.last_name ='Benichou')

---1.---
UPDATE students SET last_name = 'Guez' WHERE students.first_name = 'David' AND students.last_name = 'Grez'

---Delete :Delete the student named ‘Lea Benichou’ from the table.

DELETE FROM students WHERE students.first_name = 'Lea' AND students.last_name = 'Benichou';

--Count
---1.---Count how many students are in the table.
SELECT COUNT(*) FROM students;

---2.---Count how many students were born after 1/01/2000.

SELECT COUNT(*) FROM students WHERE students.birth_date = '2000-01-1';

---Insert / Alter

---1.Add a column to the student table called math_grade.

ALTER TABLE students ADD math_grade REAL;

---2.Add 80 to the student which id is 1

UPDATE students SET math_grade = 80 WHERE students.students_id = 1;

---3.Add 90 to the students which have ids of 2 or 4.

UPDATE students SET math_grade = 90 WHERE students.students_id = 2 OR students.students_id = 4;

---4.Add 40 to the student which id is 6.

UPDATE students SET math_grade = 40 WHERE students.students_id = 6;

---5.Count how many students have a grade bigger than 83

SELECT COUNT(*) FROM students WHERE students.math_grade > 83;

---6.Add another student named ‘Omer Simpson’ with the same birth_date as the one already in the table. Give him a grade of 70.

INSERT INTO students(first_name,last_name,birth_date,math_grade)
VALUES('Omer','Simpson','1998-11-02',70)
;

---7.Now, in the table, ‘Omer Simpson’ should appear twice. It’s the same student, although he received 2 different grades because he retook the math exam

INSERT INTO students(first_name,last_name,birth_date,math_grade)
VALUES('Omer','Simpson','1998-11-02',90)
;


----SUM : Find the sum of all the students grades.

SELECT SUM(math_grade) FROM students


-----Exercice3 : Items And Customers

/* Instructions
We will work on the public database that we created yesterday.

Part I */

---1.---Create a table named purchases. It should have 3 columns :

CREATE TABLE purchases
(id SERIAL NOT NULL,
quantity_purchased INTEGER,
 customers_id INT NOT NULL,
 items_id INT NOT NULL,
 PRIMARY KEY(id),
 CONSTRAINT FK_customers FOREIGN KEY(customers_id)
    REFERENCES customers(customers_id),
 CONSTRAINT FK_items FOREIGN KEY(items_id)
    REFERENCES items(items_id)
);

---



 





