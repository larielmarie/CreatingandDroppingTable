Create database online_shopping
use online_shopping

Create table users(user_id int,
					first_name varchar(225),
					last_name varchar(225),
					email_id varchar(225),
					city varchar(225),
					phone varchar(225))
  
  insert into users values(10,
					'Claudia',
					'Sand',
					'Claudia.sand@hotmail.com',
					'Hanover',
					'+1 555 235 5678')

SELECT * FROM users

Insert into users (first_name, last_name, phone,
				user_id, city, email_id)
				values ('Julio', 'Chaves', '+1 545 890 9898',
				20, 'Savannah', 'chavezj317@gmail.com')

SELECT * FROM users

INSERT into users values(15,
						'Neil',
						'Parks',
						'neil_parks@hotmail.com',
						'Pleasanton',
						'+1 555 567 3456')

SELECT * FROM users

INSERT into users values(19,
					'Gina',
					'Ortiz',
					'Gina_Ortiz68@hotmail.com',
					'Hempstead',
					'+1 555 963 8521')



INSERT into users values(11,
						'Raj',
						'Chawanda',
						'raj_chawanda@hotmail.com',
						'Springfield',
						'+1 555 211 2563')

--- Accidentally added two rows named Raj, so one must be deleted --- 

SELECT * FROM users

-- Delete Duplicate Rows 
-- First show all duplicates then delete duplicates

--- Way one using Group By and having clause to find duplicates

SELECT * FROM users

--SELECT first_name, last_name, COUNT(*)
--FROM users
--GROUP BY first_name, last_name
--HAVING COUNT(*) > 1

--DELETE FROM users WHERE user_id not in (
--SELECT Max(user_id) FROM users 
--GROUP BY first_name, last_name)

SELECT * FROM users

-- Way two using CTE statement and ROW Number

WITH duplicate_CTE As (
SELECT user_id,first_name,last_name,
ROW_NUMBER() OVER (Partition by first_name,Last_name ORDER by user_id) as DupCount
FROM users
)
DELETE from duplicate_CTE where DupCount > 1

SELECT * FROM users

-- Run incomplete query to see result

Insert into users values(17,
					'MacKenzie',
					'zacharymackenzie9@gmail.com',
					'Nanavut',
					'+1 555 234 5678')

INSERT into users (user_id, last_name, email_id, city,phone)
				values(10, 'MacKenzie','zacharymackenzie9@gmail.com',
				'Nanavut','+1 555 234 5678');

SELECT * FROM users	

INSERT into users values(31,
					'Marcia',
					'Lin',
					NULL,
					'Springfield',
					NULL)
SELECT * FROM users

INSERT into users values('TEN'
					'Claudia',
					'Sand',
					'Claudia.sand@hotmail.com',
					'Hanover',
					'+1 555 234 5678'

-- We get error in above query because that column is a int

INSERT into users values(10,
					'Claudia',
					'Sand',
					'Claudia.sand@hotmail.com',
					'Hanover',
					'+1 555 234 5678')

INSERT into users values(10,
					'Claudia',
					NULL,
					'Claudia.Sand@gmail.com',
					NULL,
					'+1 555 234 5678')

SELECT * FROM users

 truncate table users;

 SELECT * FROM users

 drop table users

 SELECT * FROM users
