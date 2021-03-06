select date(created_at) as 'date', count(*) as 'count', cast(sum(count(*)) over (order by date(created_at)) as integer) as 'total'
from posts
group by date;