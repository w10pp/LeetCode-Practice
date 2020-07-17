/*LeetCode SQL Practice*/
/*1148.Article Views I*/

SELECT author_id as id from Views
where author_id = viewer_id
group by id
order by id;



