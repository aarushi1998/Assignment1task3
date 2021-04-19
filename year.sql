USE golf
select distinct m.memberid, m.firstname, m.lastname from Member m INNER JOIN Entry e ON m.memberid=e.memberid where exists
(select * from Entry e where m.memberid=e.memberid AND YEAR='2013')
AND EXISTS (select * from Entry e where m.memberid=e.memberid AND YEAR='2014')
AND EXISTS (select * from Entry e where m.memberid=e.memberid AND YEAR='2015');
