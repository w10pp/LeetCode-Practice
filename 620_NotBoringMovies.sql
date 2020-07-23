/*LeetCode SQL Practice*/
/*620.NotBoringMovies*/
/*reminder function mod*/
select id, movie, description, rating
from cinema
where mod(id, 2)=1 and description != 'boring'
order by rating desc;

