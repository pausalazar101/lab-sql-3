USE sakila;
SELECT COUNT(DISTINCT(last_name)) AS 'Distinct last names' from sakila.actor;
SELECT COUNT(DISTINCT(language_id)) AS 'Distinct Languages' from sakila.film;
SELECT COUNT( rating='PG-13') from sakila.film;
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT DATEDIFF(convert(max(rental_date),date),convert(min(rental_date),date))
FROM sakila.rental;
SELECT convert(max(rental_date),date) FROM sakila.rental;
SELECT convert(min(rental_date),date) FROM sakila.rental;

SELECT * ,month(convert((rental_date),date)) as month,
(case
when date_format(convert((rental_date),date),'%w')=0 
OR date_format(convert((rental_date),date),'%w')=6
THEN 'Weekend'
ELSE 'Workday'
END)
 as type_day 
FROM sakila.rental;

SELECT YEAR(convert((rental_date),date)) FROM sakila.rental; /* Here we find the year of the max date*/

SELECT max(MONTH(convert((rental_date),date))) FROM sakila.rental; /* Here we find the month of the max date*/


SELECT YEAR(convert((rental_date),date))=2006 
AND MONTH(convert((rental_date),date))=8 FROM sakila.rental
;




