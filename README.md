# SDEV-300---Lab-6
As part of the submission for this Lab, you will design your own tables and populate them with data based on the following requirements. For each of the requirements, be sure to save the specific SQL statements that you used. Please label each SQL statement corresponding to the numbered requirements below:
1. Create a table named Faculty to store FacultyID( Primary key), FirstName, LastName, Email, Date of birth and number of courses taught to date. You should select the appropriate data types and constraints for the table.
2. Create a table named Courses to store CourseID (Primary key), Discipline Name (e.g. SDEV), Course Number (e.g. 300), Number of Credits (e.g. 3), Year first offered (e.g. 2010) and Course Title. You should select the appropriate data types and constraints for the table.
3. Create a table named FacultyCourses to store the Faculty and the Courses they have taught. You should design the table based on the Faculty and Courses tables you previously created.
4. Use Insert statements to populate at least 10 faculty records, 5 Course records, and 25 FacultyCourses records
5. Use update statements to update all Courses to 4 credits
6. Use update statements to update any Faculty who have taught more than 4 courses to modify the number to 5 courses taught
7. Delete any Faculty record whose LastName starts with the letter ‘Z’
8. Delete any Course record that was first offered in 1999
9. Use select statements to display all records in all 3 tables. Order by the Faculty lastname, and Course title as appropriate. Note you should use 3 separate select statements to satisfy this requirement.
10. Use Select statements to display all Faculty who have not taught any courses
11. Use Select statements to display all Courses offered before 1984
12. Use Select and appropriate joins to display all columns from the Faculty and Course tables for each Faculty and Course in the FacultyCourse table. Note: this will be a 3-table join.
