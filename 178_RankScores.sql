/*LeetCode SQL Practice*/
/*178.Rank Scores*/
/*window function*/

select Score as score, 
dense_rank() over (order by score desc) 'Rank'
from Scores;
