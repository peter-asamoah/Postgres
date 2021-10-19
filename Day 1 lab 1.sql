select * from pubs2.authors
select * from pubs2.authors where city = 'Oakland';


-- 1. selecting undefined values in title
select * from pubs2.titles; 
select * from pubs2.titles where price is null;


-- 2. selecting undefined values in title and adding $20
select * from pubs2.titles; 
update pubs2.titles set price = '$20' where price is null;
select title, '20'::money as price from pubs2.titles where price is null;
select title, price::money k from pubs2.titles t where price is null; 

--3. the first 50 characters (of the pr_info column) of the pub_info table
select * from pubs2.pub_info ; 
select * from pubs2.pub_info, substring(pr_info,1,50) as extractstring;
select pub_id, substring(pr_info, 1,50) from pubs2.pub_info;


--4.
select to_char(current_timestamp, 'Day, DD HH12: MI:SS ')


-- 5.
select to_char(current_timestamp, 'Day, DD MM YYYY ') from pubs2.sales;







