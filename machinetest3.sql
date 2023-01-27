Q1. machinetest_db=# SELECT SUM(int_quantity*int_price) AS total_cost FROM tbl_stock;
 total_cost
------------
   214015.5
(1 row)


Q2. machinetest_db=# SELECT SUM(int_quantity) AS total_no_product FROM tbl_stock;
 total_no_product
------------------
              177
(1 row)


Q3. machinetest_db=# SELECT pk_int_stock_id, int_quantity, UPPER(vchr_name) AS vchr_name, ROUND(int_price) AS int_price, fk_int_supplier FROM tbl_stock;
 pk_int_stock_id | int_quantity | vchr_name | int_price | fk_int_supplier
-----------------+--------------+-----------+-----------+-----------------
               1 |           10 | MOUSE     |       502 |               1
               2 |            5 | KEYBOARD  |       452 |               3
               3 |           10 | MODEM     |      1202 |               2
               5 |           50 | HEADPHONE |       752 |               4
               6 |            2 | MEMORY    |      3502 |               4
               7 |          100 | MEMORY    |      1502 |               5
(6 rows)

Q4. machinetest_db=# SELECT COUNT(distinct vchr_name) AS items from tbl_stock;
 items
-------
     5
(1 row)

Q5.machinetest_db=# SELECT vchr_name, int_price FROM tbl_stock WHERE int_price = (SELECT MAX(int_price) FROM tbl_stock);
 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5
(1 row)




Q6. machinetest_db=# SELECT SUM(int_count) AS total_enrollment FROM tbl_enrollment;
 total_enrollment
------------------
              351



Q7. machinetest_db=# SELECT COUNT(vchr_class_name) AS no_of_classes FROM tbl_classes;
 no_of_classes
---------------
             7
(1 row)


Q8. same as machinetest2 8 question

Q9. machinetest_db=# SELECT CONCAT(vchr_name, int_price) AS product_price FROM tbl_stock;
 product_price
----------------
 Mouse501.5
 Keyboard451.5
 Modem1201.5
 Headphone751.5
 Memory3501.5
 Memory1501.5
(6 rows)

Q10. machinetest_db=# CREATE TABLE tbl_student (EnRlNo int primary key, RollNo int, Name varchar(20), City varchar(20), Mobile bigint, Dob date);
CREATE TABLE
machinetest_db=# INSERT INTO tbl_student (EnRlNo, RollNo, Name, City, Mobile, Dob) VALUES(11,2,'Akhil','Delhi','98756579','12-01-1986'),(6,4,'Maya','Banglore','98734534','12-11-1987'),(1,8,'Anoop','Banglore','93456535','22-12-1990'),(20,1,'Paul','Cochin','96754555','13-03-1991'),(3,5,'Sandeep','Delhi','84865644','14-06-1993');
INSERT 0 5
machinetest_db=# SELECT * FROM tbl_student;
 enrlno | rollno |  name   |   city   |  mobile  |    dob
--------+--------+---------+----------+----------+------------
     11 |      2 | Akhil   | Delhi    | 98756579 | 1986-01-12
      6 |      4 | Maya    | Banglore | 98734534 | 1987-11-12
      1 |      8 | Anoop   | Banglore | 93456535 | 1990-12-22
     20 |      1 | Paul    | Cochin   | 96754555 | 1991-03-13
      3 |      5 | Sandeep | Delhi    | 84865644 | 1993-06-14
(5 rows)

machinetest_db=# CREATE TABLE tbl_grade (rollno int, course varchar(20), Grade varchar(20),PRIMARY KEY(rollno, course));
CREATE TABLE
machinetest_db=# INSERT INTO tbl_grade (rollno, course , grade) VALUES(2,'C','A'),(2,'Java','B'),(1,'C','B'),(1,'Java','A'),(4,'PHP','A'),(4,'Java','A'),(4,'C','B'),(8,'Java','B'),(5,'PHP','A'),(5,'Java','D');
INSERT 0 10
machinetest_db=# SELECT * FROM tbl_GRADE;
 rollno | course | grade
--------+--------+-------
      2 | C      | A
      2 | Java   | B
      1 | C      | B
      1 | Java   | A
      4 | PHP    | A
      4 | Java   | A
      4 | C      | B
      8 | Java   | B
      5 | PHP    | A
      5 | Java   | D
(10 rows)

machinetest_db=# SELECT name, course , grade FROM tbl_student INNER JOIN tbl_grade ON tbl_student.rollno = tbl_grade.rollno WHERE grade = 'A';
  name   | course | grade
---------+--------+-------
 Akhil   | C      | A
 Maya    | Java   | A
 Maya    | PHP    | A
 Paul    | Java   | A
 Sandeep | PHP    | A
(5 rows)


Q11.machinetest_db=# SELECT COUNT(name) AS no_of_students, grade FROM tbl_student INNER JOIN tbl_grade ON tbl_student.rollno = tbl_grade.rollno GROUP BY grade HAVING grade = 'B';
 no_of_students | grade
----------------+-------
              4 | B
(1 row)


Q12. machinetest_db=# SELECT MAX(tbl_student.rollno) AS rollno , name , COUNT(course) AS no_of_courses FROM tbl_student INNER JOIN tbl_grade ON tbl_grade.rollno = tbl_student.rollno GROUP BY name;
 rollno |  name   | no_of_courses
--------+---------+---------------
      2 | Akhil   |             2
      8 | Anoop   |             1
      1 | Paul    |             2
      5 | Sandeep |             2
      4 | Maya    |             3
(5 rows)

Q13. SELECT name,city,course FROM Tbl_Student INNER JOIN tbl_gradeON Tbl_Student.roll_no = tbl_grade.roll_no where city = 'Bangalore' and course = 'java';

 name  |   city    | course
-------+-----------+--------
 Maya  | Bangalore | java
 Anoop | Bangalore | java


Q14. machinetest_db=# SELECT name,course FROM tbl_student INNER JOIN tbl_grade ON tbl_student.rollno = tbl_grade.rollno WHERE name like 'A%';
 name  | course
-------+--------
 Akhil | C
 Akhil | Java
 Anoop | Java
(3 rows)


Q15. machinetest_db=# SELECT name, date_part('year',age(dob)) AS age FROM tbl_student;
  name   | age
---------+-----
 Akhil   |  37
 Maya    |  35
 Anoop   |  32
 Paul    |  31
 Sandeep |  29
(5 rows)


Q16. machinetest_db=# SELECT name, to_char(dob,'DD Mon YYYY') AS date_of_birth FROM tbl_student;
  name   | date_of_birth
---------+---------------
 Akhil   | 12 Jan 1986
 Maya    | 12 Nov 1987
 Anoop   | 22 Dec 1990
 Paul    | 13 Mar 1991
 Sandeep | 14 Jun 1993
(5 rows)





