Q1. machinetest_db=# INSERT INTO tbl_stock (vchr_name, int_quantity, int_price, fk_int_supplier) VALUES('Mouse', 10, 500, 1 ),('Keyboard', 5, 450, 3),('Modem', 10, 1200, 2),('Memory',100, 1500, 5),('Headphone', 50, 750, 4),('Memory', 2, 3500, 4);
INSERT 0 6

machinetest_db=# SELECT * FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboard  |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4



Q2. machinetest_db=# UPDATE tbl_stock SET int_price = int_price+1.5;
UPDATE 6
machinetest_db=# SELECT * FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(6 rows)


Q3. machinetest_db=# SELECT * FROM tbl_stock WHERE int_price > 1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
(3 rows)



Q4. machinetest_db=# SELECT * FROM tbl_stock ORDER BY vchr_name ASC;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
(6 rows)


Q5. machinetest_db=# SELECT * FROM tbl_stock ORDER BY vchr_name ASC LIMIT 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


Q6. machinetest_db=# SELECT * FROM tbl_stock ORDER BY vchr_name DESC LIMIT 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


Q7. machinetest_db=# SELECT vchr_name, int_price ,int_quantity, int_quantity*int_price AS extended_price FROM tbl_stock;
 vchr_name | int_price | int_quantity | extended_price
-----------+-----------+--------------+----------------
 Mouse     |     501.5 |           10 |           5015
 Keyboard  |     451.5 |            5 |         2257.5
 Modem     |    1201.5 |           10 |          12015
 Memory    |    1501.5 |          100 |         150150
 Headphone |     751.5 |           50 |          37575
 Memory    |    3501.5 |            2 |           7003
(6 rows)



Q8. machinetest_db=# DELETE FROM tbl_stock WHERE (fk_int_supplier = 5);
DELETE 1

machinetest_db=# SELECT * FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)


Q9. machinetest_db=# INSERT INTO tbl_dept(vchr_dept_Name, vchr_dept_description) VALUES('Computer Science', 'CS'),('Electronics','EC'),('Commerece','CC'),('Arts','AR');
INSERT 0 4

machinetest_db=# SELECT * FROM tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerece        | CC
              4 | Arts             | AR
(4 rows)

