[Voltar](../README.md)

# Advanced queries

1. Search for deleted IDs: let's create some queries to display IDs that have been deleted from your table:

Let's start with a table with 5 records with the following IDs: 3, 4, 12, 16 and 19
![pic_table](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/1a39d327-ce29-4f01-bf8f-5dcf65d2c838)

And now we may have two needs:
First fetch all lost IDs starting from code 1
Second option is to identify the missing IDs between the smallest and largest IDs in my table

First option:
```
SELECT DISTINCT LEVEL AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```
https://github.com/marciodesouzateixeira/Oracle/issues/3

Second option:
```
SELECT DISTINCT LEVEL + (SELECT min(productid) FROM products_bkp) AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) - min(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```
![pic_opt2](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/f809c164-e121-42d3-a209-2dc5cfc11339)
