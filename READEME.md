## String functions:

* trim, ltrim, rtrim

* replace

* lpad, rpad

* lower, upper

* substr, left, right

* strpos, position

* length

* concat, ||

## Date functions:

* date_trunc

* date_part, extract

## Number:
* floor()
* ceil()
* round()
* power()

## Type Conversion:

* cast, ::

* to_date, to_number

* to_string

* coalesce, nullif, nvl

## Aggregate Functions
* count(col1)
* sum(col1)
* avg(col1)
* min(col1)
* max(col1)
### Usage:
```
select col0, agg(col1)
from t1
group by col0
having agg(col1) condition
```
## Window Functions
* row_number()
* rank()
* dense_rank()
* ntile(n)

### Usage:
```select window_func() over (partition by col1 order by col2) alias_name```

```
window window_name as (partition by col1 order by col2)
select window_func() over window_name alias_name
```

## Subquery:
```
with t1 as (
    select statement
),
t2 as (
    select statement
    from t1
)
select cols...
from t2, t1
```

## Join:

```
select t1.c1, t2.c1, t3.c3
from tab1 t1
    join tab2 t2 on t2.FK = t1.PK
    join tab3 t3 on t3.FK = t2.PK
```