USE golf
 select m.memberid, m.lastname, m.firstname FROM Entry e inner join Member m ON e.memberid=m.memberid 
where not exists (select * from Entry e where m.memberid=e.memberid AND year='2013');

