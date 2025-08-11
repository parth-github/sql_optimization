<!-- -->
>     create table docs(how_to_use_dbfiddle) as
>     values ('Enter one statement per field')
>          , ('Fields grow as you type')
>          , ('Use the [+] buttons to add more')
>          , ('See examples below for advanced usage');
> 
> <pre>
4 rows affected
> </pre>

<!-- -->
>     select * from docs;
> 
> <pre>
> | how_to_use_dbfiddle                   |
> | :------------------------------------ |
> | Enter one statement per field         |
> | Fields grow as you type               |
> | Use the [+] buttons to add more       |
> | See examples below for advanced usage |
> </pre>

<!-- -->
>     --------------------------------------------------------------------------------
>     -- ① Execution Plans 
>     --------------------------------------------------------------------------------
>     -- result can be pasted into https://explain.depesz.com
>     --------------------------------------------------------------------------------
>     vacuum analyze;
> 
> <pre>
> ✓
> </pre>

<!-- -->
>     explain (analyze,buffers)
>     select max('Do this to get execution plans and stats')
>     from docs d1 cross join docs d2;
> 
> <pre>
> | QUERY PLAN                                                                                                        |
> | :---------------------------------------------------------------------------------------------------------------- |
> | Aggregate  (cost=2.33..2.34 rows=1 width=32) (actual time=0.043..0.044 rows=1 loops=1)                            |
> |   Buffers: shared hit=2                                                                                           |
> |   -&gt;  Nested Loop  (cost=0.00..2.29 rows=16 width=0) (actual time=0.020..0.028 rows=16 loops=1)                   |
> |         Buffers: shared hit=2                                                                                     |
> |         -&gt;  Seq Scan on docs d1  (cost=0.00..1.04 rows=4 width=0) (actual time=0.008..0.009 rows=4 loops=1)       |
> |               Buffers: shared hit=1                                                                               |
> |         -&gt;  Materialize  (cost=0.00..1.06 rows=4 width=0) (actual time=0.002..0.003 rows=4 loops=4)               |
> |               Buffers: shared hit=1                                                                               |
> |               -&gt;  Seq Scan on docs d2  (cost=0.00..1.04 rows=4 width=0) (actual time=0.005..0.006 rows=4 loops=1) |
> |                     Buffers: shared hit=1                                                                         |
> | Planning:                                                                                                         |
> |   Buffers: shared hit=3 read=2                                                                                    |
> | Planning Time: 0.228 ms                                                                                           |
> | Execution Time: 0.169 ms                                                                                          |
> </pre>

*db<>fiddle [here](https://dbfiddle.uk/?rdbms=postgres_14&fiddle=23977e87a977d5e39af7ae1a1514ba37)*