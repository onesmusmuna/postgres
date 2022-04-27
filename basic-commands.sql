-- -- Create Table

-- create table student (
-- 	id int primary key, 
--   	name varchar(20),
--   	major varchar(20)
-- );



-- -- select from Table

-- select * from student;



-- -- drop Table

-- drop table student;



-- -- modify Table

-- alter table student add marks decimal(3,2);

-- alter table student drop marks;



-- -- insert data

-- insert into student values (1, 'adam', 'agriculture');
-- insert into student values (2, 'noah', 'carpenter');
-- insert into student (id, name) values (3, 'abraham');
-- insert into student (id, name) values (4, 'ali');


-- -- drop table

-- drop table student;



-- -- contraints

-- NOT NULL     -- column cannot have NULL value.
-- UNIQUE       -- all values in a column are different
-- PRIMARY Key  -- Uniquely identifies each row/record in a database table
-- FOREIGN Key  -- Constrains data based on columns in other tables.
-- CHECK        -- ensures that all values in a column satisfy certain conditions



-- -- update and delete

-- update student
-- set major = 'farmer'
-- where major='agriculture';

-- delete from student 
-- where name = 'ali';

-- -- other comparison operators 
-- =       -- equals
-- <>      -- not equals
-- >    -- greater than  
-- <    -- less than
-- >=   -- greater than or equal
-- <=   -- less than or equal
-- IN() -- values that are in the brackets
-- AND  
-- OR   



