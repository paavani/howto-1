### To get column as array

```sql
select a.pmname, sum(rmctc) as pmctc, array_agg(a.rmname) as rmids
from
(select pmname, rmname, sum(fctc) as rmctc from hr.employee group by pmname, rmname order by pmname, rmname) as a
group by a.pmname;
```

### To get column as string concat or group_concat

```sql
select a.pmname, sum(rmctc) as pmctc, string_agg(a.rmname, ',') as rmids
from
(select pmname, rmname, sum(fctc) as rmctc from hr.employee group by pmname, rmname order by pmname, rmname) as a
group by a.pmname;
```

### Above queries using WITH for better clarity

```sql
with
a as (select pmname, rmname, sum(fctc) rmctc from hr.employee group by pmname, rmname order by pmname, rmname)

select pmname, sum(rmctc) pmctc, array_agg(rmname) rmids 
from a
group by pmname;
```
