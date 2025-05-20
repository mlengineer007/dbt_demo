select   
shipmode,  
avg(datediff(day, shipdate,receiptdate)) as avg_days_for_orderdelivery
from facts
group by shipmode;