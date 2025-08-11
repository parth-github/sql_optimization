<!-- -->
>     select version();
> 
> <pre>
> | version                                                                                                |
> | :----------------------------------------------------------------------------------------------------- |
> | PostgreSQL 14.1 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 8.5.0 20210514 (Red Hat 8.5.0-4), 64-bit |
> </pre>

<!-- -->
>     CREATE TABLE demo (
>     name varchar(10),
>     age int)
> 
> <pre>
> ✓
> </pre>

<!-- -->
>     select * from demo
> 
> <pre>
> name | age
> :--- | --:
> </pre>

<!-- -->
>     INSERT INTO demo (name, age) VALUES ('Smriti', 40)
> 
> <pre>
1 rows affected
> </pre>

<!-- -->
>     select * from demo
> 
> <pre>
> name   | age
> :----- | --:
> Smriti |  40
> </pre>

<!-- -->
>     DROP TABLE demo;
> 
> <pre>
> ✓
> </pre>

<!-- -->
>     select * from demo
> 
> <pre>
> ERROR:  relation &quot;demo&quot; does not exist
LINE 1: select * from demo
                      ^

> </pre>

*db<>fiddle [here](https://dbfiddle.uk/?rdbms=postgres_14&fiddle=9a0f1c5166de4392f206ba324fa9ce9c)*