--shipment behviour based on mode of transport 
with shipmode_behaviour as (select shipmode, (count(*)/ (select count(*) from facts))*100 as return_percentage from facts
where returnflag in ('R')
group by shipmode)

select * from shipmode_behaviour 
order by return_percentage desc;