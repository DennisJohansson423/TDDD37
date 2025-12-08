/*Lab 2, Dennis Johansson (denjo163) and Antti Houvila (anthu456)*/

/*Task 1*/
select * from jbemployee;
/*
+------+--------------------+--------+---------+-----------+-----------+
| id   | name               | salary | manager | birthyear | startyear |
+------+--------------------+--------+---------+-----------+-----------+
|   10 | Ross, Stanley      |  15908 |     199 |      1927 |      1945 |
|   11 | Ross, Stuart       |  12067 |    NULL |      1931 |      1932 |
|   13 | Edwards, Peter     |   9000 |     199 |      1928 |      1958 |
|   26 | Thompson, Bob      |  13000 |     199 |      1930 |      1970 |
|   32 | Smythe, Carol      |   9050 |     199 |      1929 |      1967 |
|   33 | Hayes, Evelyn      |  10100 |     199 |      1931 |      1963 |
|   35 | Evans, Michael     |   5000 |      32 |      1952 |      1974 |
|   37 | Raveen, Lemont     |  11985 |      26 |      1950 |      1974 |
|   55 | James, Mary        |  12000 |     199 |      1920 |      1969 |
|   98 | Williams, Judy     |   9000 |     199 |      1935 |      1969 |
|  129 | Thomas, Tom        |  10000 |     199 |      1941 |      1962 |
|  157 | Jones, Tim         |  12000 |     199 |      1940 |      1960 |
|  199 | Bullock, J.D.      |  27000 |    NULL |      1920 |      1920 |
|  215 | Collins, Joanne    |   7000 |      10 |      1950 |      1971 |
|  430 | Brunet, Paul C.    |  17674 |     129 |      1938 |      1959 |
|  843 | Schmidt, Herman    |  11204 |      26 |      1936 |      1956 |
|  994 | Iwano, Masahiro    |  15641 |     129 |      1944 |      1970 |
| 1110 | Smith, Paul        |   6000 |      33 |      1952 |      1973 |
| 1330 | Onstad, Richard    |   8779 |      13 |      1952 |      1971 |
| 1523 | Zugnoni, Arthur A. |  19868 |     129 |      1928 |      1949 |
| 1639 | Choy, Wanda        |  11160 |      55 |      1947 |      1970 |
| 2398 | Wallace, Maggie J. |   7880 |      26 |      1940 |      1959 |
| 4901 | Bailey, Chas M.    |   8377 |      32 |      1956 |      1975 |
| 5119 | Bono, Sonny        |  13621 |      55 |      1939 |      1963 |
| 5219 | Schwarz, Jason B.  |  13374 |      33 |      1944 |      1959 |
+------+--------------------+--------+---------+-----------+-----------+
*/


/*Task 2*/
select name from jbdept order by name asc;
/*
+------------------+
| name             |
+------------------+
| Bargain          |
| Book             |
| Candy            |
| Children's       |
| Children's       |
| Furniture        |
| Giftwrap         |
| Jewelry          |
| Junior Miss      |
| Junior's         |
| Linens           |
| Major Appliances |
| Men's            |
| Sportswear       |
| Stationary       |
| Toys             |
| Women's          |
| Women's          |
| Women's          |
+------------------+
*/

/*Task 3*/
select * from jbparts where qoh = 0;
/*
+----+-------------------+-------+--------+------+
| id | name              | color | weight | qoh  |
+----+-------------------+-------+--------+------+
| 11 | card reader       | gray  |    327 |    0 |
| 12 | card punch        | gray  |    427 |    0 |
| 13 | paper tape reader | black |    107 |    0 |
| 14 | paper tape punch  | black |    147 |    0 |
+----+-------------------+-------+--------+------+
*/


/*Task 4*/
select * from jbemployee where salary between 9000 and 10000;
/*
+-----+----------------+--------+---------+-----------+-----------+
| id  | name           | salary | manager | birthyear | startyear |
+-----+----------------+--------+---------+-----------+-----------+
|  13 | Edwards, Peter |   9000 |     199 |      1928 |      1958 |
|  32 | Smythe, Carol  |   9050 |     199 |      1929 |      1967 |
|  98 | Williams, Judy |   9000 |     199 |      1935 |      1969 |
| 129 | Thomas, Tom    |  10000 |     199 |      1941 |      1962 |
+-----+----------------+--------+---------+-----------+-----------+
*/


/*Task 5*/
select name, startyear - birthyear as age_at_start from jbemployee;
/*
+--------------------+--------------+
| name               | age_at_start |
+--------------------+--------------+
| Ross, Stanley      |           18 |
| Ross, Stuart       |            1 |
| Edwards, Peter     |           30 |
| Thompson, Bob      |           40 |
| Smythe, Carol      |           38 |
| Hayes, Evelyn      |           32 |
| Evans, Michael     |           22 |
| Raveen, Lemont     |           24 |
| James, Mary        |           49 |
| Williams, Judy     |           34 |
| Thomas, Tom        |           21 |
| Jones, Tim         |           20 |
| Bullock, J.D.      |            0 |
| Collins, Joanne    |           21 |
| Brunet, Paul C.    |           21 |
| Schmidt, Herman    |           20 |
| Iwano, Masahiro    |           26 |
| Smith, Paul        |           21 |
| Onstad, Richard    |           19 |
| Zugnoni, Arthur A. |           21 |
| Choy, Wanda        |           23 |
| Wallace, Maggie J. |           19 |
| Bailey, Chas M.    |           19 |
| Bono, Sonny        |           24 |
| Schwarz, Jason B.  |           15 |
+--------------------+--------------+
*/


/*Task 6*/
select * from jbemployee where name like '%son,%';
/*
+----+---------------+--------+---------+-----------+-----------+
| id | name          | salary | manager | birthyear | startyear |
+----+---------------+--------+---------+-----------+-----------+
| 26 | Thompson, Bob |  13000 |     199 |      1930 |      1970 |
+----+---------------+--------+---------+-----------+-----------+
*/


/*Task 7*/
select * from jbitem where supplier = (select id from jbsupplier where name = 'Fisher-Price');
/*
+-----+-----------------+------+-------+------+----------+
| id  | name            | dept | price | qoh  | supplier |
+-----+-----------------+------+-------+------+----------+
|  43 | Maze            |   49 |   325 |  200 |       89 |
| 107 | The 'Feel' Book |   35 |   225 |  225 |       89 |
| 119 | Squeeze Ball    |   49 |   250 |  400 |       89 |
+-----+-----------------+------+-------+------+----------+
*/


/*Task 8*/
select jbitem.* from jbitem join jbsupplier on jbitem.supplier = jbsupplier.id where jbsupplier.name = 'Fisher-Price';
/*
+-----+-----------------+------+-------+------+----------+
| id  | name            | dept | price | qoh  | supplier |
+-----+-----------------+------+-------+------+----------+
|  43 | Maze            |   49 |   325 |  200 |       89 |
| 107 | The 'Feel' Book |   35 |   225 |  225 |       89 |
| 119 | Squeeze Ball    |   49 |   250 |  400 |       89 |
+-----+-----------------+------+-------+------+----------+
*/


/*Task 9*/
select * from jbcity where id in (select city from jbsupplier);
/*
+-----+----------------+-------+
| id  | name           | state |
+-----+----------------+-------+
|  10 | Amherst        | Mass  |
|  21 | Boston         | Mass  |
| 100 | New York       | NY    |
| 106 | White Plains   | Neb   |
| 118 | Hickville      | Okla  |
| 303 | Atlanta        | Ga    |
| 537 | Madison        | Wisc  |
| 609 | Paxton         | Ill   |
| 752 | Dallas         | Tex   |
| 802 | Denver         | Colo  |
| 841 | Salt Lake City | Utah  |
| 921 | San Diego      | Calif |
| 941 | San Francisco  | Calif |
| 981 | Seattle        | Wash  |
+-----+----------------+-------+
*/


/*Task 10*/ 
select name, color from jbparts where weight > (select weight from jbparts where name = 'card reader');
/*
+--------------+--------+
| name         | color  |
+--------------+--------+
| disk drive   | black  |
| tape drive   | black  |
| line printer | yellow |
| card punch   | gray   |
+--------------+--------+
*/


/*Task 11*/
select p1.name, p1.color from jbparts p1 join jbparts p2 on p2.name = 'card reader' where p1.weight > p2.weight;
/*
+--------------+--------+
| name         | color  |
+--------------+--------+
| disk drive   | black  |
| tape drive   | black  |
| line printer | yellow |
| card punch   | gray   |
+--------------+--------+
*/


/*Task 12*/
select avg(weight) as average_weight from jbparts where color = 'black';
/*
+----------------+
| average_weight |
+----------------+
|       347.2500 |
+----------------+
*/


/*Task 13*/
select jbsupplier.name as supplier_name, sum(jbparts.weight * jbparts.qoh) from jbsupplier 
join jbsupply on jbsupplier.id = jbsupply.supplier join jbparts on jbparts.id = jbsupply.part 
join jbcity on jbsupplier.city = jbcity.id where jbcity.state = 'Mass' group by jbsupplier.name;
/*
+---------------+-----------------------------------+
| supplier_name | sum(jbparts.weight * jbparts.qoh) |
+---------------+-----------------------------------+
| DEC           |                              4470 |
| Fisher-Price  |                              3170 |
+---------------+-----------------------------------+
*/


/*Task 14*/
create table jbitem_below_avg (id int primary key, name varchar(20), dept int not null, price int, 
qoh int UNSIGNED, supplier int not null, constraint fk_dept foreign key (dept) references jbdept(id), 
constraint fk_supplier foreign key (supplier) references jbsupplier(id) ) engine = Innodb;
/*
+-----------------------+
| Tables_in_assignment2 |
+-----------------------+
| jbcity                |
| jbdebit               |
| jbdept                |
| jbemployee            |
| jbitem                |
| jbitem_below_avg      | The new table
| jbparts               |
| jbsale                |
| jbsale_supply         |
| jbstore               |
| jbsupplier            |
| jbsupply              |
+-----------------------+
*/


/*Task 15*/
create view items_below_avg as select * from jbitem where price < (select avg(price) from jbitem);

select * from items_below_avg;
/*
+-----+-----------------+------+-------+------+----------+
| id  | name            | dept | price | qoh  | supplier |
+-----+-----------------+------+-------+------+----------+
|  11 | Wash Cloth      |    1 |    75 |  575 |      213 |
|  19 | Bellbottoms     |   43 |   450 |  600 |       33 |
|  21 | ABC Blocks      |    1 |   198 |  405 |      125 |
|  23 | 1 lb Box        |   10 |   215 |  100 |       42 |
|  25 | 2 lb Box, Mix   |   10 |   450 |   75 |       42 |
|  43 | Maze            |   49 |   325 |  200 |       89 |
| 106 | Clock Book      |   49 |   198 |  150 |      125 |
| 107 | The 'Feel' Book |   35 |   225 |  225 |       89 |
| 118 | Towels, Bath    |   26 |   250 | 1000 |      213 |
| 119 | Squeeze Ball    |   49 |   250 |  400 |       89 |
| 120 | Twin Sheet      |   26 |   800 |  750 |      213 |
| 165 | Jean            |   65 |   825 |  500 |       33 |
| 258 | Shirt           |   58 |   650 | 1200 |       33 |
+-----+-----------------+------+-------+------+----------+
*/


/*Task 16*/
/*
A table is static because it physically stores data, which changes only when explicitly updated. 
A view is dynamic because it retrieves live data from underlying tablas, reflecting their current state.
*/


/*Task 17*/
create view dept_total_cost as select jbitem.dept, SUM(jbitem.price * jbsale.quantity) as total_cost 
from jbsale join jbitem on jbsale.item = jbitem.id group by jbitem.dept;

select * from dept_total_cost;
/*
+------+------------+
| dept | total_cost |
+------+------------+
|   10 |        430 |
|   26 |       2050 |
|   49 |        396 |
|   58 |        650 |
|   60 |       3295 |
|   65 |      13050 |
+------+------------+
*/


/*Task 18*/
create view debt_total_cost_join as select jbsale.debit, sum(jbitem.price * jbsale.quantity) as total_cost 
from jbsale inner join jbitem on jbsale.item = jbitem.id group by jbsale.debit;

select * from debt_total_cost_join;
/*
+--------+------------+
| debit  | total_cost |
+--------+------------+
| 100581 |       2050 |
| 100586 |      13446 |
| 100592 |        650 |
| 100593 |        430 |
| 100594 |       3295 |
+--------+------------+

An INNER JOIN is used in this query because it includes only matching records from jbsale and jbitem, 
ensuring that each debit transaction has a corresponding item. This is essential for accurately calculating 
the total_cost of each debit. A LEFT JOIN would include unmatched jbsale records (with NULL prices), 
complicating the calculation, while a RIGHT JOIN would include items with no sales, which is irrelevant for 
our purpose. Thus, INNER JOIN is the most efficient and appropriate choice to ensure only valid debit 
transactions with items are counted.
*/


/*Task 19a*/
select table_name, column_name, constraint_name from information_schema.key_column_usage where referenced_table_name = 'jbitem';
/*
+------------+-------------+-----------------+
| table_name | column_name | constraint_name |
+------------+-------------+-----------------+
| jbsale     | item        | fk_sale_item    |
+------------+-------------+-----------------+
*/

select * from jbsale where item in (select id from jbitem where supplier in (select id from jbsupplier 
where city = (select id from jbcity where name = 'Los Angeles')));
 
delete from jbitem where supplier in (select id from jbsupplier where city = (select id from jbcity 
where name = 'Los Angeles'));

delete from jbsupplier where city = (select id from jbcity where name = 'Los Angeles');

/*Task 19b*/
/*
What I Did:
1.  Identified suppliers in Los Angeles using the city name. 
2.  Deleted only tuples in dependent tables (jbsupply and jbitem) referencing those suppliers. 
3.  Finally, removed the suppliers in Los Angeles.

Why This Approach:
It adheres to the instructions by:
    1.  Using “Los Angeles” as the only constant.
    2.  Deleting the minimum number of related tuples to resolve foreign key constraints. 
    3.  It preserves database integrity by removing dependent records first, as required by foreign key rules.
*/


/*Task 20*/
drop view if exists jb_supply;

create view jbsale_supply (supplier, item, quantity) as select jbsupplier.name, jbitem.name, 
ifnull(jbsale.quantity, 0) as quantit from jbsupplier join jbitem on jbsupplier.id = jbitem.supplier 
left join jbsale on jbitem.id = jbsale.item;

select supplier, SUM(quantity) as total_quantity from jbsale_supply group by supplier;
/*
+--------------+----------------+
| supplier     | total_quantity |
+--------------+----------------+
| Cannon       |              6 |
| Fisher-Price |              0 |
| Levi-Strauss |              1 |
| Playskool    |              2 |
| White Stag   |              4 |
| Whitman's    |              2 |
+--------------+----------------+
*/