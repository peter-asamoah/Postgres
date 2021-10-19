--Current time
--Current date
select to_char(current_date,'YYYY-MM-DD') 

--Current Time
select to_char(current_time, 'HH12:MI:SS AM') 

--Current Timestamp
select to_char(current_timestamp ,'HH12:MI:SS AM');

--Converting
--1.
SELECT TO_DATE('20210103','YYYYMMDD');

--2
select to_timestamp('2018-09-26','YYYY/MM/DD/HH24:MI:SS') as neewe;

--Subtracting dates
--1.
select age('2018-09-26', '2018-12-25');
SELECT '2018-09-26 01:00:00'::timestamp - '2018-12-25 23:00:00'::timestamp;
 
--2
 select title_id, title, age(current_timestamp, pubdate)  from pubs2.titles t;
SELECT '2018-09-26 01:00:00'::timestamp - '2018-12-25 23:00:00'::timestamp;
   
  --Extraction
-- 1.
select * from pubs2.titles, extract(year from pubs2.titles.pubdate)as year  

--2.

select title_id, title, year from pubs2.titles, extract (year from pubs2.titles.pubdate) as year
