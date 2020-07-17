/*LeetCode SQL Practice*/
/*1378. Replace Employee ID with the Unique Identifier*/


select u.unique_id, e.name
from EmployeeUNI u right join Employees e
on u.id = e.id;

