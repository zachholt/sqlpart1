---Section 1
--- Answer 1:
select count(1) as "Number of Employees" from employees;
--- Answer 2:
select count(1) as "Have Supervisors" from employees where ReportsTo is not null;
--- Answer 3:
select distinct(Title) as "distinct titles" from employees;
--- Answer 4:
select count(distinct(Title)) as "distinct titles" from employees;
--- Answer 5:
select * from employees where Title = "IT Staff";
--- Answer 6:
select * from employees where Title = "IT Staff" and City = "Lethbridge" and PostalCode = "T1H 1Y8";
--- Answer 7:
select * from employees where HireDate >= date("2003-10-17 00:00:00");
--- Answer 8:
select * from employees where HireDate >= date("2002-01-20") and HireDate <= date("2003-01-01");
--- Answer 9:
select max(birthdate), firstname || "" || lastname as "Youngest Employees" from employees;
--- Answer 10:
select min(HireDate), firstname || "" || lastname as "Oldest Employees" from employees;
--- Answer 11:
select * from employees where SUBSTRING(firstname, 1, 1) LIKE SUBSTRING(lastname, 1, 1); 
--- Answer 12:
select * from employees where City = "Calgary" and State = "AB";
--- Answer 13:
select * from employees where Phone Like "%403%";
--- Answer 14:
select count(duplicate(Phone)) from employees;
--- Answer 15:
select * from employees where ReportsTo in (select EmployeeId from employees where FirstName = "Michael" and LastName = "Mitchell");
--- Answer 16
select LastName, length(LastName) from employees;
--- Answer 17:
select FirstName, length(LastName) from employees Order By FirstName DESC;
--- Answer 18:
select * from employees where City = "Edmonton" OR City = "Lethbridge";
--- Answer 19:
select avg(julianday("now") - julianday(BirthDate)/365.25) from employees;
--- Answer 20:
select * from employees where Title = "Sales Support Agent" limit 2;

--- Section 2
--- Answer 1:
select * from albums INNER JOIN artists using (artistid);
--- Answer 2:
select * from artists LEFT JOIN albums USING (ArtistId);
--- Answer 3:
select * from artists LEFT JOIN albums ON artists.ArtistId = albums.ArtistId WHERE Title is NULL;
--- Answer 4:
SELECT *
FROM employees employees1
INNER JOIN employees employees2 
ON employees1.city = employees2.city
WHERE employees1.firstname <> employees2.firstname AND employees1.lastname <> employees2.lastname
ORDER BY employees1.city;


--- Section 3:
--- Answer 1:
select customerid, 
firstname, 
lastname, 
CASE country 
WHEN "USA" 
THEN "Domestic" 
ELSE "Foreign" 
END CustomerGroup 
FROM customers 
ORDER BY 
LastName, 
FirstName;
--- Answer 2
select trackid, 
name,
milliseconds, 
CASE 
WHEN milliseconds < 60000 THEN "short" 
WHEN milliseconds < 60000 AND milliseconds < 300000 THEN "medium"  
ELSE "long" 
END category 
FROM tracks; 

