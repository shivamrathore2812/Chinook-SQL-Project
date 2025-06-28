-- Retrieve all columns and rows from the albums table.
SELECT *
FROM album;

-- List the first 10 rows from the customers table.
SELECT *
FROM customer
LIMIT 10;

-- Retrieve the names of all tracks from the tracks table.
SELECT name 
FROM track;

-- Find the unique genres available in the genres table.
SELECT DISTINCT name 
FROM genre;

-- Retrieve all the information of customers who are from Canada.
SELECT *
FROM customer 
WHERE country = 'Canada';

-- Find the total number of customers in the customers table.
SELECT COUNT(customerid) AS num_customer
FROM customer;

-- List all albums released by the artist with the artist_id 1.
SELECT *
FROM album
WHERE artistid = 1;

-- Get the names of the employees who are based in the city of 'San Francisco'.
SELECT *
FROM employee
WHERE city = 'San Francisco';

-- Find the invoice total for each customer (customer name and total).
SELECT c.customerid, c.firstname, SUM(total) AS Total_Amt
FROM invoice i  
LEFT JOIN customer c ON i.customerid = c.customerid
GROUP BY c.customerid, c.firstname
ORDER BY c.customerid;


-- List the tracks that belong to the genre 'Rock'.
SELECT  t.name, g.name
FROM track t
LEFT JOIN genre g ON t.genreid = g.genreid
WHERE g.name = 'Rock';

-- Retrieve the average invoice total in the invoices table.
SELECT AVG(total) AS avg_invoice_total
FROM invoice;

--  Find all the employees who report to a specific manager (for example, employee_id 5).
SELECT *
FROM employee
WHERE ReportsTo = 5;
    

-- Get a list of all invoices where the total is greater than 5.00.
SELECT *
FROM invoice
WHERE total > 5.00;


-- Retrieve the 5 most expensive tracks.
SELECT *
FROM track
ORDER BY unitprice DESC
LIMIT 5;


--  List all the tracks from the album 'For Those About To Rock'.
SELECT t.name, a.title
FROM track t
JOIN album a ON t.albumid = a.albumid
WHERE a.title = 'For Those About To Rock We Salute You';
	







































