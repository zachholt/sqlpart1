--- Part 2
--- Section 1
--- Answer 1
INSERT INTO artist(name)
VALUES("Zach Holt");
--- Answer 2
INSERT INTO artist(name)
VALUES("Zach Holt"), ("Zach 2"), ("Zach 3");
--- Answer 3
UPDATE employees
SET lastname = "Smith"
WHERE employeeid = 3;
--- Answer 4
UPDATE employees
SET city = "Toronto",
state = "ON",
postalcode = "M5P 2N7"
WHERE employeeid = 4;
--- Answer 5
UPDATE employees
SET email = firstname || "." || lastname || "@chinookcorp.com";
--- Answer 6
delete from artists
where name = "Azymuth";

--- Section 2
--- Answer 1
END TRANSACTION;
BEGIN TRANSACTION;
INSERT INTO artists (name) VALUES ("Bud Powell");
INSERT INTO albums (Title, ArtistId)
VALUES ("Silk Route", (SELECT artistid FROM artists WHERE name = "Bud Powell"));
UPDATE artists
SET name = "Bud Powell Jr." WHERE name = "Bud Powell";
COMMIT TRANSACTION ;
--- Answer 2
END TRANSACTION;
BEGIN TRANSACTION;
delete from albums where artistid = (select artistid from artists where name = "Buddy Guy");
ROLLBACK;
select * from albums where artistid = (select artistid from artists where name = "Buddy Guy");
commit transaction;



