[Voltar](../README.md)

# Advanced queries

## 1. Search for deleted IDs: ## 
Let's create some queries to display IDs that have been deleted from your table:

Let's start with a table with 5 records with the following IDs: 3, 4, 12, 16 and 19
![pic_table](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/1a39d327-ce29-4f01-bf8f-5dcf65d2c838)

And now we may have two needs:

First option: fetch all lost IDs starting from code 1 to largest ID
```
SELECT DISTINCT LEVEL AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```
![pic_opt2](https://user-images.githubusercontent.com/44147082/284018811-a4b60101-fe7f-448e-992c-05b4b0b9bdc1.png)

Here is another query option
```
WITH AllProductIds AS (
    SELECT LEVEL AS MissingProductId
    FROM dual
    CONNECT BY LEVEL <= (SELECT MAX(productid) FROM products_bkp)
)
SELECT MissingProductId
FROM AllProductIds
WHERE MissingProductId NOT IN (SELECT PRODUCTID FROM C##APP.products_bkp)
order by 1;
```

Second option: is to identify the missing IDs between the smallest and largest IDs in my table
```
SELECT DISTINCT LEVEL + (SELECT min(productid) FROM products_bkp) AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) - min(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```
![pic_opt2](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/f809c164-e121-42d3-a209-2dc5cfc11339)

## 2. Duplicated records: ## 

To identify duplicate records, a combination of two instructions Group By and Having Count is necessary, below is the example:
![duplicated_records](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/39b50c2d-8140-40b7-8140-a5cbdd7e88e7)
