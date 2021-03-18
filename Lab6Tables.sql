DROP TABLE FacultyCourses;
DROP TABLE Faculty;
DROP TABLE Courses;

use sdev300;

-- #1
CREATE TABLE Faculty(
EMPLID int,
FirstName varchar(30),
LastName varchar(30),
Email varchar(30),
YearofBirth int(4),
HireDate varchar(25),
PRIMARY KEY (EMPLID, FirstName, LastName)
);
-- #2
CREATE TABLE Courses(
CourseID int,
DisciplineName varchar(20),
CourseNumber int(4),
NumberofCredits int(2),
DateFirstOffers DATE,
CourseTitle varchar(60),
PRIMARY KEY (CourseID, DisciplineName, CourseTitle)
);
-- #3
CREATE TABLE FacultyCourses (
FacultyCourseRecord int PRIMARY KEY,
EMPLID int,
FirstName varchar(30),
LastName varchar(30),
CourseID int,
DisciplineName varchar(60),
CourseTitle varchar(60),
Constraint SC1 FOREIGN KEY (EMPLID, FirstName, LastName) REFERENCES Faculty(EMPLID, FirstName, LastName)
on delete cascade,
Constraint SC2 FOREIGN KEY (CourseID, DisciplineName, CourseTitle) REFERENCES Courses(CourseID, DisciplineName, CourseTitle)
on delete cascade
);

-- #4
-- Insert Faculty
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (1, 'Amber','Liberatore','aliberatore@faculty.umuc.edu', 1969, 'May 1st, 1997');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (2, 'Mary','Hartfield','mhartfield@faculty.umuc.edu', 1956, 'June 12th, 1997');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (3, 'Lois','Stevens','lstevens@faculty.umuc.edu', 1968, 'January 5th, 1998');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (4, 'Jennie','Kirk','jkirk@faculty.umuc.edu', 1974, 'August 3rd, 1999');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (5, 'Dorothy','Currie','dcurrie@faculty.umuc.edu', 1941, 'April 21st, 2001');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (6, 'Brandon','Gardner','bgardner@faculty.umuc.edu', 1940, 'April 25th, 2001');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (7, 'Junior','Wilson','jwilson@faculty.umuc.edu', 1954, 'April 26th, 2001');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (8, 'James','Shah','jshah@faculty.umuc.edu', 1948, 'February 27th, 2002');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (9, 'Robert','Webb','rwebb@faculty.umuc.edu', 1979, 'February 28th, 2002');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (10, 'Shawna','Williams','swilliams@faculty.umuc.edu', 1974, 'February 28th, 2002');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (11, 'Viola','Johnson','vjohnson@faculty.umuc.edu', 1977, 'March 1st, 2005');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (12, 'Esther','Wheeler','swheeler@faculty.umuc.edu', 1970, 'March 5th, 2005');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (13, 'Myrtice','Nguyen','mnguyen@faculty.umuc.edu', 1960, 'March 17th, 2005');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (14, 'Clifford','Hutchens','chutchens@faculty.umuc.edu', 1982, 'March 18th, 2007');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (15, 'Jarrod','Johnston','jjohnston@faculty.umuc.edu', 1981, 'June 20th, 2010');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (16, 'Clara','Withers','cwithers@faculty.umuc.edu', 1985, 'June 21st, 2010');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (17, 'Suzanne','White','swhite@faculty.umuc.edu', 1962, 'July 9th, 2011');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (18, 'Lin','Cook','lincook@faculty.umuc.edu', 1980, 'July 10th, 2011');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (19, 'Phyllis','Espinosa','pespinosa@faculty.umuc.edu', 1978, 'August 15th, 2013');
insert into Faculty (EMPLID, FirstName, LastName, Email, YearofBirth, HireDate)
values (20, 'Mike','Miller','mmiller@faculty.umuc.edu', 1994, 'September 9th, 2015');

-- Insert Courses
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (1, 'ACCT', 220, 3, '1997-08-28', 'Principles of Accounting');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (2, 'BEHS', 103, 3, '1997-08-28', 'Technology in Contemporary Science');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (3, 'BIOL', 101, 3, '1996-08-28', 'Concepts of Biology');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (4, 'BGMT', 110, 3, '1997-08-28', 'Introduction to Buisness Management');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (5, 'CMIS', 141, 3, '1999-08-28', 'Introductory Programming');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (6, 'CMIS', 440, 3, '2001-08-28', 'Advanced Programming in Java');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (7, 'COMM', 202, 3, '1997-08-28', 'Media and Society');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (8, 'ECON', 103, 3, '1997-08-28', 'Economics in the Information Age');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (9, 'ENGL', 102, 3, '1998-08-28', 'Composition and Literature');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (10, 'ENGL', 281, 3, '2005-08-28', 'Standard English Grammar');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (11, 'HIST', 116, 3, '2004-08-28', 'World History II' );
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (12, 'HMGT', 310, 3, '1999-08-28', 'Health Care Policies');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (13, 'HUMN', 344, 3, '1997-08-28', 'Technology and Culture');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (14, 'IFSM', 201, 3, '1997-08-28', 'Concepts and Application of Information Technology');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (15, 'LGST', 101, 3, '1997-08-28', 'Introduction to Law');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (16, 'MATH', 012, 3, '2007-08-28', 'Intermediate Algebra');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (17, 'MATH', 115, 3, '2002-08-28', 'Precalculus');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (18, 'MATH', 140, 4, '1997-08-28', 'Calculus');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (19, 'PHIL', 140, 3, '2014-08-28', 'Contemporary Moral Issues');
insert into Courses (CourseID,DisciplineName,CourseNumber,NumberofCredits,DateFirstOffers,CourseTitle)
values (20, 'SDEV', 300, 3, '1991-08-28', 'Building Secure Web Applications');

-- Insert FacultyCourses
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (1 ,'Amber','Liberatore', 1 , 1 , 'ACCT',  'Principles of Accounting');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (2 ,'Amber','Liberatore', 1 , 2 , 'BEHS',  'Technology in Contemporary Science' );
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (3 ,'Amber','Liberatore', 1 , 3 , 'BIOL',  'Concepts of Biology');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (4 ,'Mary','Hartfield', 2 , 4 , 'BGMT',  'Introduction to Buisness Management');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (5 ,'Lois','Stevens', 3 , 5 , 'CMIS',  'Introductory Programming');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (6 ,'Lois','Stevens', 3 , 6 , 'CMIS', 'Advanced Programming in Java');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (7 ,'Jennie','Kirk', 4 , 7 , 'COMM',  'Media and Society');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (8 ,'Dorothy','Currie', 5 , 8 , 'ECON',  'Economics in the Information Age');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (9 ,'Brandon','Gardner', 6 , 8 , 'ECON',  'Economics in the Information Age');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (10 ,'Junior','Wilson', 7 , 9 , 'ENGL',  'Composition and Literature');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (11 ,'James','Shah', 8 , 9 , 'ENGL',  'Composition and Literature');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (12 ,'Robert','Webb', 9 , 10 , 'ENGL',  'Standard English Grammar');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (13 ,'Shawna','Williams', 10 , 10 , 'ENGL',  'Standard English Grammar');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (14 ,'Viola','Johnson', 11 , 11 , 'HIST',  'World History II');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (15 ,'Esther','Wheeler', 12 , 12 , 'HMGT',  'Health Care Policies');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (16 ,'Myrtice','Nguyen', 13 , 13 , 'HUMN',  'Technology and Culture');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (17 ,'Clifford','Hutchens', 14 , 14 , 'IFSM',  'Concepts and Application of Information Technology');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (18 ,'Jarrod','Johnston', 15 , 15 , 'LGST',  'Introduction to Law');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (19 ,'Clara','Withers', 16 , 16 , 'MATH',  'Intermediate Algebra');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (20 ,'Suzanne','White', 17 , 17 , 'MATH',  'Precalculus');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (21 ,'Lin','Cook', 18 , 18 , 'MATH',  'Calculus');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (22 ,'Phyllis','Espinosa', 19 , 18 , 'MATH',  'Calculus');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (23 ,'Mike','Miller', 20 , 18 , 'MATH',  'Calculus');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (24 ,'Mike','Miller', 20 , 19 , 'PHIL',  'Contemporary Moral Issues');
insert into FacultyCourses (FacultyCourseRecord, FirstName, LastName, EMPLID, CourseID, DisciplineName, CourseTitle)
values (25 ,'Mike','Miller', 20 , 20 , 'SDEV',  'Building Secure Web Applications');

-- #5
UPDATE Courses
SET NumberofCredits = '6';

--#6
UPDATE Faculty
SET YearofBirth = 1993
WHERE Faculty.YearofBirth = 1994 ;

--#7
DELETE
FROM Faculty
WHERE LastName like 'r%' or LastName like 's%';

--#8
DELETE
FROM Courses
WHERE DateFirstOffers >= '2004-01-01' and DateFirstOffers < '2004-12-31';

--#9
SELECT *
FROM Faculty ORDER BY LastName DESC;

SELECT *
FROM Courses ORDER BY CourseTitle ASC;

SELECT *
FROM FacultyCourses ORDER BY DisciplineName ;


--#10
SELECT *
FROM FacultyCourses
WHERE LastName IN
   (     SELECT LastName
         FROM FacultyCourses
         GROUP BY LastName
         HAVING COUNT(*) < 3
   );
	
--#11
SELECT *
FROM Courses
WHERE DateFirstOffers >= '1900-01-01' and DateFirstOffers < '1998-12-31';

--#12
SELECT * FROM FacultyCourses LEFT JOIN Courses 
ON FacultyCourses.CourseTitle=Courses.CourseTitle 
LEFT JOIN Faculty ON FacultyCourses.EMPLID = Faculty.EMPLID;