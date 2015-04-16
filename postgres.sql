-- cross tab query to create like pivot table
-- http://stackoverflow.com/questions/3002499/postgresql-crosstab-query/3002579
-- http://www.cureffi.org/2013/03/19/automatically-creating-pivot-table-column-names-in-postgresql/

select * from crosstab(
$$
   select (mis || '@' || smis) as mgroup ,rmonth, sum(cbusdeq) 
   from zmis.tb
   where bp='B' and (rmonth = '2015-01-01' or rmonth='2015-02-01' or rmonth='2015-03-01')
   group by mgroup, rmonth
   order by 1,2 
$$,
$$
   Values ('2015-01-01'::date),('2015-02-01'),('2015-06-01') --important 
$$
)
AS ct(mgroup text, "2005-01-01" numeric, "2015-02-01" numeric, "2015-06-01" numeric);
