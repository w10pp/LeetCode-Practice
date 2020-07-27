/*LeetCode SQL Practice*/
/*1112.Highest Grade for Each Student*/

select e1.student_id, min(e1.course_id) as course_id, e1.grade
from Enrollments e1
where (e1.grade, e1.student_id) in
(select max(grade), student_id
from Enrollments
group by student_id)
group by student_id, grade
order by student_id;

