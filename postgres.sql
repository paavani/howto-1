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
   Values ('2015-01-01'::date),('2015-02-01'),('2015-03-01') --important 
$$
)
-- here columns names can be whatever you want but order of the columns is important
AS ct(mgroup text, "2005-01-01" numeric, "2015-02-01" numeric, "2015-03-01" numeric);

--later we can split conacatanated column as below;
select split_part(mgroup, '@', 1) as mis, split_part(mgroup, '@', 2) as smis, aboveTable.* from aboveTable;


-- suppose if smis is unique acroos all mis then we can do like below
select * from crosstab(
$$
   -- column order for select rowid, extraColumn(s), category, values
   select smis, mis, rmonth, sum(cbusdeq) -- all extracolumn(s) should be between rowid and category. Here extracolumn is mis.
   from zmis.tb
   where bp='B' and (rmonth = '2015-01-01' or rmonth='2015-02-01' or rmonth='2015-03-01')
   group by smis, mis, rmonth
   order by 1,2 
$$,
$$
   Values ('2015-01-01'::date),('2015-02-01'),('2015-03-01') --important 
$$
)
-- here columns names can be whatever you want but order of the columns is important
AS ct(smis text, mis text, "2005-01-01" numeric, "2015-02-01" numeric, "2015-03-01" numeric); 
