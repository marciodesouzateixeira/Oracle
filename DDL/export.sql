--------------------------------------------------------
--  File created - Thursday-August-24-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type STOCKSTATUSTYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##APP"."STOCKSTATUSTYPE" AS OBJECT (
    StockStatus VARCHAR2(50),
    Action VARCHAR2(100)
);

/
--------------------------------------------------------
--  DDL for Sequence SEQ_ADDRESS
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_ADDRESS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_CATEGORY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CUSTOMER
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_CUSTOMER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_LOG
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_LOG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MANUFACTURE
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_MANUFACTURE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PAYMENT
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_PAYMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_PRODUCT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SALE
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_SALE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SALEITEM
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_SALEITEM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SHIPPINGADDRESS
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_SHIPPINGADDRESS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SUPPLIER
--------------------------------------------------------

   CREATE SEQUENCE  "C##APP"."SEQ_SUPPLIER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "C##APP"."ADDRESS" 
   (	"ADDRESSID" NUMBER, 
	"CUSTOMERID" NUMBER, 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"CITY" VARCHAR2(50 BYTE), 
	"STATE" VARCHAR2(50 BYTE), 
	"ZIPCODE" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(50 BYTE), 
	"COMPLEMENT" VARCHAR2(100 BYTE), 
	"ADDRESSTYPE" VARCHAR2(20 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "C##APP"."CATEGORIES" 
   (	"CATEGORYID" NUMBER, 
	"CATEGORYNAME" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "C##APP"."CUSTOMERS" 
   (	"CUSTOMERID" NUMBER, 
	"FIRSTNAME" VARCHAR2(100 BYTE), 
	"LASTNAME" VARCHAR2(100 BYTE), 
	"BIRTHDAY" DATE, 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"DOCUMENT" VARCHAR2(30 BYTE), 
	"GENDER" VARCHAR2(2 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GENERICLOG
--------------------------------------------------------

  CREATE TABLE "C##APP"."GENERICLOG" 
   (	"LOGID" NUMBER, 
	"TABLENAME" VARCHAR2(100 BYTE), 
	"ACTION" VARCHAR2(10 BYTE), 
	"RECORDID" NUMBER, 
	"CHANGEDFIELDS" CLOB, 
	"CREATEDAT" TIMESTAMP (6), 
	"USERID" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MANUFACTURERS
--------------------------------------------------------

  CREATE TABLE "C##APP"."MANUFACTURERS" 
   (	"MANUFACTURERID" NUMBER, 
	"MANUFACTURERNAME" VARCHAR2(100 BYTE), 
	"CONTACTNAME" VARCHAR2(100 BYTE), 
	"CONTACTEMAIL" VARCHAR2(100 BYTE), 
	"CONTACTPHONE" VARCHAR2(20 BYTE), 
	"WEBSITE" VARCHAR2(100 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE "C##APP"."PAYMENTS" 
   (	"PAYMENTID" NUMBER, 
	"SALEID" NUMBER, 
	"PAYMENTDATE" DATE, 
	"AMOUNT" NUMBER(14,2), 
	"PAYMENTMETHOD" VARCHAR2(50 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "C##APP"."PRODUCTS" 
   (	"PRODUCTID" NUMBER, 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"CATEGORYID" NUMBER, 
	"PRICE" NUMBER(14,2), 
	"INSTOCK" NUMBER, 
	"MANUFACTURERID" NUMBER, 
	"SUPPLIERID" NUMBER, 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6), 
	"WEIGHT" NUMBER, 
	"WEIGHTTYPE" VARCHAR2(20 BYTE), 
	"DIMENSIONSTYPE" VARCHAR2(20 BYTE), 
	"LENGTH" NUMBER, 
	"WIDTH" NUMBER, 
	"HEIGHT" NUMBER, 
	"BARCODE" VARCHAR2(50 BYTE), 
	"WARRANTYPERIOD" VARCHAR2(50 BYTE), 
	"NOTES" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SALEITEMS
--------------------------------------------------------

  CREATE TABLE "C##APP"."SALEITEMS" 
   (	"SALEITEMID" NUMBER, 
	"SALEID" NUMBER, 
	"PRODUCTID" NUMBER, 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"QUANTITY" NUMBER(14,2), 
	"UNITPRICE" NUMBER(14,2), 
	"TOTALDISCOUNT" NUMBER(14,2), 
	"TOTALPRICE" NUMBER, 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table SALES
--------------------------------------------------------

  CREATE TABLE "C##APP"."SALES" 
   (	"SALEID" NUMBER, 
	"CUSTOMERID" NUMBER, 
	"SALEDATE" DATE, 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table SHIPPINGADDRESSES
--------------------------------------------------------

  CREATE TABLE "C##APP"."SHIPPINGADDRESSES" 
   (	"ADDRESSID" NUMBER, 
	"SALEID" NUMBER, 
	"SHIPPINGADDRESS" VARCHAR2(255 BYTE), 
	"SHIPPINGCITY" VARCHAR2(100 BYTE), 
	"SHIPPINGSTATE" VARCHAR2(50 BYTE), 
	"SHIPPINGZIPCODE" VARCHAR2(20 BYTE), 
	"SHIPPINGCOUNTRY" VARCHAR2(100 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table SUPPLIERS
--------------------------------------------------------

  CREATE TABLE "C##APP"."SUPPLIERS" 
   (	"SUPPLIERID" NUMBER, 
	"SUPPLIERNAME" VARCHAR2(100 BYTE), 
	"CONTACTNAME" VARCHAR2(100 BYTE), 
	"CONTACTEMAIL" VARCHAR2(100 BYTE), 
	"CONTACTPHONE" VARCHAR2(20 BYTE), 
	"WEBSITE" VARCHAR2(100 BYTE), 
	"CREATEDAT" TIMESTAMP (6), 
	"UPDATEDAT" TIMESTAMP (6)
   ) ;

--------------------------------------------------------
--  DDL for View VW_CUSTOMERS_SALES
--------------------------------------------------------
select 
  c.customerid,
  c.firstname,
  count(distinct s.saleid) order_qty,
  sum(si.totalprice) order_total
from 
  customers c inner join sales s on c.customerid = s.customerid
  left join saleitems si on si.saleid = s.saleid
group by 
  c.customerid,c.firstname
order by 3 desc
	
--------------------------------------------------------
--  DDL for View VW_CUSTOMERS
--------------------------------------------------------
select 
  concat(customers.firstname, ' ' || customers.lastname) as name,
  extract(month from birthday) as month,
  extract(day from birthday) as day,
  address.address,
  address.city,
  address.state,
  address.zipcode,
  address.country
from customers inner join address on customers.customerid=address.customerid;

--------------------------------------------------------
--  DDL for View VW_PRODUCTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##APP"."VW_PRODUCTS" ("PRODUCTID", "PRODUCTNAME", "PRICE", "INSTOCK", "STOCKSTATUS", "ACTION", "CATEGORYID", "CATEGORYNAME", "SUPPLIERID", "SUPPLIERNAME", "CONTACTNAME", "WEBSITE") AS 
  select
products.productid,
products.productname,
products.price,
products.instock,
GETSTOCKSTATUS(products.instock).StockStatus as StockStatus,
GETSTOCKSTATUS(products.instock).Action as Action,
categories.categoryid,
categories.categoryname,
suppliers.supplierid,
suppliers.suppliername,
suppliers.contactname,
suppliers.website
from products left join categories
on products.categoryid = categories.categoryid
left join suppliers on suppliers.supplierid = products.supplierid
;
--------------------------------------------------------
--  DDL for View VW_SALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##APP"."VW_SALES" ("SALEID", "SALEDATE", "CUSTOMERID", "FIRSTNAME", "LASTNAME", "DOCUMENT", "EMAIL", "PRODUCTID", "PRODUCTNAME", "QUANTITY", "UNITPRICE", "TOTALPRICE", "TOTALDISCOUNT") AS 
  select 
sales.saleid,
sales.saledate,
customers.customerid,
customers.firstname,
customers.lastname,
customers.document,
customers.email,
saleitems.productid,
saleitems.productname,
saleitems.quantity,
saleitems.unitprice,
saleitems.totalprice,
saleitems.totaldiscount
from 
sales left join saleitems on sales.saleid = saleitems.saleid
left join customers on sales.customerid=customers.customerid
;
REM INSERTING into C##APP.ADDRESS
SET DEFINE OFF;
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('1','1','Avenida Esbertalina Barbosa Damiani','São Mateus','ES','29946490','Brazil',null,'Delivery',to_timestamp('23/08/23 23:10:40,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:35:32,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('2','1','Avenida São João','Jundiaí','SP','13216000','Brazil',null,'Billing',to_timestamp('23/08/23 23:35:32,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:36:35,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('3','2','Rua Paracatu','São Paulo','SP','04302021','Brazil',null,'Delivery',to_timestamp('23/08/23 23:36:35,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:36:50,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('4','3','Rua Tenente-Coronel Cardoso','Campos dos Goytacazes','RJ','28035042','Brazil',null,'Delivery',to_timestamp('23/08/23 23:36:50,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:37:26,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('5','4','Avenida Rio Branco','Rio de Janeiro','RJ','20040002','Brazil',null,'Delivery',to_timestamp('23/08/23 23:37:58,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:39:01,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('6','5','Avenida Esbertalina Barbosa Damiani','São Mateus','ES','29946490','Brazil',null,'Delivery',to_timestamp('23/08/23 23:37:58,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:39:30,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.ADDRESS (ADDRESSID,CUSTOMERID,ADDRESS,CITY,STATE,ZIPCODE,COUNTRY,COMPLEMENT,ADDRESSTYPE,CREATEDAT,UPDATEDAT) values ('7','6','QE 11 Área Especial C','Brasília','DF','71020631','Brazil',null,'Delivery',to_timestamp('23/08/23 23:37:58,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 23:39:59,000000000','DD/MM/RR HH24:MI:SSXFF'));
REM INSERTING into C##APP.CATEGORIES
SET DEFINE OFF;
Insert into C##APP.CATEGORIES (CATEGORYID,CATEGORYNAME,DESCRIPTION,CREATEDAT,UPDATEDAT) values ('1','Laptops & Computers',null,to_timestamp('23/08/23 16:16:37,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.CATEGORIES (CATEGORYID,CATEGORYNAME,DESCRIPTION,CREATEDAT,UPDATEDAT) values ('2','Smartphones',null,to_timestamp('23/08/23 16:16:55,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.CATEGORIES (CATEGORYID,CATEGORYNAME,DESCRIPTION,CREATEDAT,UPDATEDAT) values ('3','Books',null,to_timestamp('23/08/23 16:17:13,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.CATEGORIES (CATEGORYID,CATEGORYNAME,DESCRIPTION,CREATEDAT,UPDATEDAT) values ('4','Video Games',null,to_timestamp('23/08/23 16:17:23,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
REM INSERTING into C##APP.CUSTOMERS
SET DEFINE OFF;
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('1','Marcio','Teixeira',to_date('07/03/79','DD/MM/RR'),to_timestamp('21/08/23 18:43:19,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 15:57:54,000000000','DD/MM/RR HH24:MI:SSXFF'),'marcio@gmail.com','12345678','M');
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('2','Anotio','dos Santos',to_date('30/10/90','DD/MM/RR'),to_timestamp('21/08/23 18:43:40,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 22:58:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'antonio.silva@gmail.com','2222222','M');
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('3','Carlos','Pereira',to_date('01/01/81','DD/MM/RR'),to_timestamp('21/08/23 18:52:59,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 22:58:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'carlos.pereira@gmail.com','3333333','M');
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('4','Maria','Aparecida da Silva',to_date('28/02/85','DD/MM/RR'),to_timestamp('21/08/23 19:09:38,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 22:58:22,000000000','DD/MM/RR HH24:MI:SSXFF'),'maria.aparecida@gmail.com','4444444','F');
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('5','Carla','Machado',to_date('31/12/75','DD/MM/RR'),to_timestamp('22/08/23 21:40:24,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 22:58:22,000000000','DD/MM/RR HH24:MI:SSXFF'),'carla.machado@gmail.com','5555555','F');
Insert into C##APP.CUSTOMERS (CUSTOMERID,FIRSTNAME,LASTNAME,BIRTHDAY,CREATEDAT,UPDATEDAT,EMAIL,DOCUMENT,GENDER) values ('6','Rafael','Silva',to_date('06/06/86','DD/MM/RR'),to_timestamp('22/08/23 21:40:48,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('23/08/23 22:58:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'rafael.silva@gmail.com','6666666','M');
REM INSERTING into C##APP.GENERICLOG
SET DEFINE OFF;
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('62','Customers','Update','1',to_timestamp('23/08/23 15:57:54,382000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('63','Customers','Update','2',to_timestamp('23/08/23 22:54:59,218000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('64','Customers','Update','3',to_timestamp('23/08/23 22:54:59,221000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('65','Customers','Update','4',to_timestamp('23/08/23 22:54:59,223000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('66','Customers','Update','5',to_timestamp('23/08/23 22:54:59,225000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('67','Customers','Update','6',to_timestamp('23/08/23 22:54:59,227000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('68','Customers','Update','2',to_timestamp('23/08/23 22:58:07,261000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('69','Customers','Update','3',to_timestamp('23/08/23 22:58:07,263000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('70','Customers','Update','4',to_timestamp('23/08/23 22:58:07,264000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('71','Customers','Update','5',to_timestamp('23/08/23 22:58:07,266000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('72','Customers','Update','6',to_timestamp('23/08/23 22:58:07,268000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('61','Customers','Update','1',to_timestamp('23/08/23 15:57:32,711000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('73','ShippingAddresses','Delete','3',to_timestamp('24/08/23 10:26:33,132000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('74','ShippingAddresses','Delete','4',to_timestamp('24/08/23 10:26:42,785000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('75','ShippingAddresses','Delete','5',to_timestamp('24/08/23 10:26:42,786000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('76','ShippingAddresses','Delete','6',to_timestamp('24/08/23 10:26:42,788000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('77','ShippingAddresses','Delete','7',to_timestamp('24/08/23 10:26:42,789000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('78','ShippingAddresses','Delete','8',to_timestamp('24/08/23 10:26:42,790000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('79','ShippingAddresses','Delete','9',to_timestamp('24/08/23 10:26:42,791000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('80','ShippingAddresses','Delete','10',to_timestamp('24/08/23 10:26:42,792000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('81','ShippingAddresses','Delete','11',to_timestamp('24/08/23 10:26:42,793000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('82','ShippingAddresses','Delete','12',to_timestamp('24/08/23 10:26:42,796000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('83','ShippingAddresses','Delete','13',to_timestamp('24/08/23 10:26:42,797000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('84','ShippingAddresses','Delete','14',to_timestamp('24/08/23 10:26:42,798000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('85','ShippingAddresses','Delete','15',to_timestamp('24/08/23 10:26:42,798000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('86','ShippingAddresses','Delete','16',to_timestamp('24/08/23 10:26:42,799000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('87','ShippingAddresses','Delete','17',to_timestamp('24/08/23 10:26:42,808000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('88','ShippingAddresses','Delete','18',to_timestamp('24/08/23 10:26:42,810000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('89','ShippingAddresses','Delete','19',to_timestamp('24/08/23 10:26:42,811000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('90','ShippingAddresses','Delete','20',to_timestamp('24/08/23 10:26:42,812000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('91','ShippingAddresses','Delete','23',to_timestamp('24/08/23 10:26:42,814000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('92','ShippingAddresses','Delete','1',to_timestamp('24/08/23 10:26:42,815000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('93','ShippingAddresses','Delete','2',to_timestamp('24/08/23 10:26:42,816000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('94','ShippingAddresses','Insert','1',to_timestamp('24/08/23 10:52:09,887000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('95','ShippingAddresses','Insert','2',to_timestamp('24/08/23 10:52:09,892000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('96','ShippingAddresses','Insert','3',to_timestamp('24/08/23 10:52:09,894000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
Insert into C##APP.GENERICLOG (LOGID,TABLENAME,ACTION,RECORDID,CREATEDAT,USERID) values ('97','ShippingAddresses','Insert','4',to_timestamp('24/08/23 10:52:09,896000000','DD/MM/RR HH24:MI:SSXFF'),'C##APP');
REM INSERTING into C##APP.MANUFACTURERS
SET DEFINE OFF;
Insert into C##APP.MANUFACTURERS (MANUFACTURERID,MANUFACTURERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('1','DELL','Michael S Dell','michael.dell@dell.com','+1 203 222 3333','www.dell.com',to_timestamp('24/08/23 10:21:17,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.MANUFACTURERS (MANUFACTURERID,MANUFACTURERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('2','Apple','Steve Jobs','steve.jobs@apple.com','+1 203 333 2222','www.apple.com',to_timestamp('24/08/23 10:21:17,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.MANUFACTURERS (MANUFACTURERID,MANUFACTURERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('3','LG','John Carter','john.carter@lg.com','+1 202 345 3456','www.lg.com',to_timestamp('24/08/23 10:21:17,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.MANUFACTURERS (MANUFACTURERID,MANUFACTURERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('4','Samsung','Xien Zao','xien.zao@samsung.com','+1 100 456 6778','www.samsung.com',to_timestamp('24/08/23 10:21:17,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.MANUFACTURERS (MANUFACTURERID,MANUFACTURERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('5','Microsoft','Bill Gates','bill.gates@microsoft.com','+1 089 728 7568','www.microsoft.com',to_timestamp('24/08/23 10:25:56,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
REM INSERTING into C##APP.PAYMENTS
SET DEFINE OFF;
Insert into C##APP.PAYMENTS (PAYMENTID,SALEID,PAYMENTDATE,AMOUNT,PAYMENTMETHOD,CREATEDAT,UPDATEDAT) values ('1','1',to_date('22/08/23','DD/MM/RR'),'2754,23','Cash',to_timestamp('24/08/23 11:14:30,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:19:40,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.PAYMENTS (PAYMENTID,SALEID,PAYMENTDATE,AMOUNT,PAYMENTMETHOD,CREATEDAT,UPDATEDAT) values ('2','2',to_date('24/08/23','DD/MM/RR'),'799','Credit Card',to_timestamp('24/08/23 11:14:30,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:19:40,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.PAYMENTS (PAYMENTID,SALEID,PAYMENTDATE,AMOUNT,PAYMENTMETHOD,CREATEDAT,UPDATEDAT) values ('3','3',to_date('24/08/23','DD/MM/RR'),'750','Credit Card',to_timestamp('24/08/23 11:14:30,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:19:40,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.PAYMENTS (PAYMENTID,SALEID,PAYMENTDATE,AMOUNT,PAYMENTMETHOD,CREATEDAT,UPDATEDAT) values ('4','4',to_date('24/08/23','DD/MM/RR'),'1000','Cash',to_timestamp('24/08/23 11:14:30,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:19:40,000000000','DD/MM/RR HH24:MI:SSXFF'));
REM INSERTING into C##APP.PRODUCTS
SET DEFINE OFF;
Insert into C##APP.PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,CATEGORYID,PRICE,INSTOCK,MANUFACTURERID,SUPPLIERID,CREATEDAT,UPDATEDAT,WEIGHT,WEIGHTTYPE,DIMENSIONSTYPE,LENGTH,WIDTH,HEIGHT,BARCODE,WARRANTYPERIOD,NOTES) values ('1','Laptop Dell','Laptop Core i7','1','754,23','253','1','1',to_timestamp('23/08/23 15:54:54,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:29:23,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,null,null,null,null,'789345567',null,null);
Insert into C##APP.PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,CATEGORYID,PRICE,INSTOCK,MANUFACTURERID,SUPPLIERID,CREATEDAT,UPDATEDAT,WEIGHT,WEIGHTTYPE,DIMENSIONSTYPE,LENGTH,WIDTH,HEIGHT,BARCODE,WARRANTYPERIOD,NOTES) values ('2','Apple 14 Pro','Apple Smartphone','2','1200','123','2','2',to_timestamp('24/08/23 10:25:03,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:29:38,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,null,null,null,null,'789123456',null,null);
Insert into C##APP.PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,CATEGORYID,PRICE,INSTOCK,MANUFACTURERID,SUPPLIERID,CREATEDAT,UPDATEDAT,WEIGHT,WEIGHTTYPE,DIMENSIONSTYPE,LENGTH,WIDTH,HEIGHT,BARCODE,WARRANTYPERIOD,NOTES) values ('3','XBox Series S','XBox 512GB','4','800','0','5','2',to_timestamp('24/08/23 10:25:03,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:29:38,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,null,null,null,null,null,null,null);
REM INSERTING into C##APP.SALEITEMS
SET DEFINE OFF;
Insert into C##APP.SALEITEMS (SALEITEMID,SALEID,PRODUCTID,PRODUCTNAME,QUANTITY,UNITPRICE,TOTALDISCOUNT,TOTALPRICE,CREATEDAT,UPDATEDAT) values ('2','1','1','Laptop Dell','1','754,23','0','754,23',to_timestamp('23/08/23 15:56:07,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:50:09,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SALEITEMS (SALEITEMID,SALEID,PRODUCTID,PRODUCTNAME,QUANTITY,UNITPRICE,TOTALDISCOUNT,TOTALPRICE,CREATEDAT,UPDATEDAT) values ('3','1','2','Apple 14 Pro','2','1000','0','2000',to_timestamp('24/08/23 10:48:18,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.SALEITEMS (SALEITEMID,SALEID,PRODUCTID,PRODUCTNAME,QUANTITY,UNITPRICE,TOTALDISCOUNT,TOTALPRICE,CREATEDAT,UPDATEDAT) values ('4','2','3','XBox Series S','1','799','1','799',to_timestamp('24/08/23 10:49:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:50:09,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SALEITEMS (SALEITEMID,SALEID,PRODUCTID,PRODUCTNAME,QUANTITY,UNITPRICE,TOTALDISCOUNT,TOTALPRICE,CREATEDAT,UPDATEDAT) values ('5','3','1','Laptop Dell','1','750','0','750',to_timestamp('24/08/23 10:49:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:50:09,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SALEITEMS (SALEITEMID,SALEID,PRODUCTID,PRODUCTNAME,QUANTITY,UNITPRICE,TOTALDISCOUNT,TOTALPRICE,CREATEDAT,UPDATEDAT) values ('6','4','2','Apple 14 Pro','1','1000','50','950',to_timestamp('24/08/23 10:49:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:50:09,000000000','DD/MM/RR HH24:MI:SSXFF'));
REM INSERTING into C##APP.SALES
SET DEFINE OFF;
Insert into C##APP.SALES (SALEID,CUSTOMERID,SALEDATE,CREATEDAT,UPDATEDAT) values ('1','1',to_date('22/08/23','DD/MM/RR'),to_timestamp('22/08/23 10:47:07,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:47:26,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SALES (SALEID,CUSTOMERID,SALEDATE,CREATEDAT,UPDATEDAT) values ('2','1',to_date('23/08/23','DD/MM/RR'),to_timestamp('24/08/23 10:47:07,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.SALES (SALEID,CUSTOMERID,SALEDATE,CREATEDAT,UPDATEDAT) values ('3','2',to_date('23/08/23','DD/MM/RR'),to_timestamp('24/08/23 10:47:07,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
Insert into C##APP.SALES (SALEID,CUSTOMERID,SALEDATE,CREATEDAT,UPDATEDAT) values ('4','3',to_date('24/08/23','DD/MM/RR'),to_timestamp('24/08/23 10:47:07,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
REM INSERTING into C##APP.SHIPPINGADDRESSES
SET DEFINE OFF;
Insert into C##APP.SHIPPINGADDRESSES (ADDRESSID,SALEID,SHIPPINGADDRESS,SHIPPINGCITY,SHIPPINGSTATE,SHIPPINGZIPCODE,SHIPPINGCOUNTRY,CREATEDAT,UPDATEDAT) values ('1','1','Avenida Esbertalina Barbosa Damiani','São Mateus','ES','29946490','Brazil',to_timestamp('24/08/23 10:52:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:12:14,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SHIPPINGADDRESSES (ADDRESSID,SALEID,SHIPPINGADDRESS,SHIPPINGCITY,SHIPPINGSTATE,SHIPPINGZIPCODE,SHIPPINGCOUNTRY,CREATEDAT,UPDATEDAT) values ('2','2','Avenida São João','Jundiaí','SP','13216000','Brazil',to_timestamp('24/08/23 10:52:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:13:08,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SHIPPINGADDRESSES (ADDRESSID,SALEID,SHIPPINGADDRESS,SHIPPINGCITY,SHIPPINGSTATE,SHIPPINGZIPCODE,SHIPPINGCOUNTRY,CREATEDAT,UPDATEDAT) values ('3','3','Rua Paracatu','São Paulo','SP','04302021','Brazil',to_timestamp('24/08/23 10:52:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:13:19,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SHIPPINGADDRESSES (ADDRESSID,SALEID,SHIPPINGADDRESS,SHIPPINGCITY,SHIPPINGSTATE,SHIPPINGZIPCODE,SHIPPINGCOUNTRY,CREATEDAT,UPDATEDAT) values ('4','4','Rua Tenente-Coronel Cardoso','Campos dos Goytacazes','RJ','28035042','Brazil',to_timestamp('24/08/23 10:52:09,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 11:11:54,000000000','DD/MM/RR HH24:MI:SSXFF'));
REM INSERTING into C##APP.SUPPLIERS
SET DEFINE OFF;
Insert into C##APP.SUPPLIERS (SUPPLIERID,SUPPLIERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('1','SAMSUNG','ELVIS PRESLEY','elvis.presley@samsung.com','+1 210 978 1010','samsung.com',to_timestamp('23/08/23 16:25:16,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('24/08/23 10:28:56,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into C##APP.SUPPLIERS (SUPPLIERID,SUPPLIERNAME,CONTACTNAME,CONTACTEMAIL,CONTACTPHONE,WEBSITE,CREATEDAT,UPDATEDAT) values ('2','Supplier of everything','Adam Smith','adam.smith@sup.com','+1 150 768 4713','www.sup.com',to_timestamp('24/08/23 10:28:56,000000000','DD/MM/RR HH24:MI:SSXFF'),null);
--------------------------------------------------------
--  DDL for Index ADDRESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."ADDRESS_PK" ON "C##APP"."ADDRESS" ("ADDRESSID") 
  ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."CATEGORY_PK" ON "C##APP"."CATEGORIES" ("CATEGORYID") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."CUSTOMER_PK" ON "C##APP"."CUSTOMERS" ("CUSTOMERID") 
  ;
--------------------------------------------------------
--  DDL for Index LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."LOG_PK" ON "C##APP"."GENERICLOG" ("LOGID") 
  ;
--------------------------------------------------------
--  DDL for Index MANUFACTURER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."MANUFACTURER_PK" ON "C##APP"."MANUFACTURERS" ("MANUFACTURERID") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."PAYMENT_PK" ON "C##APP"."PAYMENTS" ("PAYMENTID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."PRODUCT_PK" ON "C##APP"."PRODUCTS" ("PRODUCTID") 
  ;
--------------------------------------------------------
--  DDL for Index SALEITEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."SALEITEM_PK" ON "C##APP"."SALEITEMS" ("SALEITEMID") 
  ;
--------------------------------------------------------
--  DDL for Index SALE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."SALE_PK" ON "C##APP"."SALES" ("SALEID") 
  ;
--------------------------------------------------------
--  DDL for Index SHIPPINGADDRESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."SHIPPINGADDRESS_PK" ON "C##APP"."SHIPPINGADDRESSES" ("ADDRESSID") 
  ;
--------------------------------------------------------
--  DDL for Index SUPPLIER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."SUPPLIER_PK" ON "C##APP"."SUPPLIERS" ("SUPPLIERID") 
  ;
--------------------------------------------------------
--  DDL for Index CATEGORIES_INDEX1
--------------------------------------------------------

  CREATE INDEX "C##APP"."CATEGORIES_INDEX1" ON "C##APP"."CATEGORIES" ("CATEGORYNAME") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCTS_INDEX1
--------------------------------------------------------

  CREATE INDEX "C##APP"."PRODUCTS_INDEX1" ON "C##APP"."PRODUCTS" ("PRODUCTNAME") 
  ;
--------------------------------------------------------
--  DDL for Index SALEITEMS_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."SALEITEMS_INDEX1" ON "C##APP"."SALEITEMS" ("SALEID", "PRODUCTID") 
  ;
--------------------------------------------------------
--  DDL for Index GENERICLOG_INDEX1
--------------------------------------------------------

  CREATE INDEX "C##APP"."GENERICLOG_INDEX1" ON "C##APP"."GENERICLOG" ("TABLENAME") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMERS_INDEX2
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##APP"."CUSTOMERS_INDEX2" ON "C##APP"."CUSTOMERS" ("DOCUMENT") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMERS_INDEX1
--------------------------------------------------------

  CREATE INDEX "C##APP"."CUSTOMERS_INDEX1" ON "C##APP"."CUSTOMERS" ("FIRSTNAME") 
  ;
--------------------------------------------------------
--  DDL for Index SUPPLIERS_INDEX1
--------------------------------------------------------

  CREATE INDEX "C##APP"."SUPPLIERS_INDEX1" ON "C##APP"."SUPPLIERS" ("SUPPLIERNAME") 
  ;
--------------------------------------------------------
--  DDL for Index GENERICLOG_INDEX2
--------------------------------------------------------

  CREATE INDEX "C##APP"."GENERICLOG_INDEX2" ON "C##APP"."GENERICLOG" ("USERID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ADDRESS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."ADDRESS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON ADDRESS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."ADDRESS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CATEGORIES_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."CATEGORIES_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON CATEGORIES
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."CATEGORIES_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUSTOMERS_LOG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."CUSTOMERS_LOG" 
AFTER INSERT OR UPDATE OR DELETE ON Customers
FOR EACH ROW
DECLARE
    v_Action VARCHAR2(10);
    v_UserName VARCHAR2(100); 
    v_clob CLOB;
    v_Updated BOOLEAN := false;
BEGIN
    IF INSERTING THEN
        v_Action := 'Insert';
    ELSIF UPDATING THEN
        v_Action := 'Update';
    ELSIF DELETING THEN
        v_Action := 'Delete';
    END IF;

    v_clob := '{"Customers":{';

    IF INSERTING THEN
        v_clob := v_clob || '"CustomerId":{"new": ' || to_char(:NEW.CustomerId) || '},';
        v_clob := v_clob || '"FirstName":{"new": ' || to_char(:NEW.FirstName) || '},';
        v_clob := v_clob || '"LastName":{"new": "' || to_char(:NEW.LastName) || '"},';
        v_clob := v_clob || '"EMail":{"new": "' || to_char(:NEW.EMail) || '"},';
        v_clob := v_clob || '"Document":{"new": "' || to_char(:NEW.Document) || '"},';
    END IF;
    IF UPDATING THEN
        IF :OLD.CustomerId != :NEW.CustomerId THEN
            v_clob := v_clob || '"CustomerId":{"old": "' || to_char(:OLD.CustomerId) || '", "new": "' || to_char(:NEW.CustomerId) || '"},';
            v_Updated := true;
        END IF;
        IF :OLD.FirstName != :NEW.FirstName THEN
            v_clob := v_clob || '"FirstName":{"old": "' || to_char(:OLD.FirstName) || '", "new": "' || to_char(:NEW.FirstName) || '"},';
            v_Updated := true;
        END IF;
        IF :OLD.LastName != :NEW.LastName THEN
            v_clob := v_clob || '"LastName":{"old": "' || to_char(:OLD.LastName) || '", "new": "' || to_char(:NEW.LastName) || '"},';
            v_Updated := true;
        END IF;
        IF :OLD.EMail != :NEW.EMail THEN
            v_clob := v_clob || '"EMail":{"old": "' || to_char(:OLD.EMail) || '", "new": "' || to_char(:NEW.EMail) || '"},';
            v_Updated := true;
        END IF;
        IF :OLD.Document != :NEW.Document THEN
            v_clob := v_clob || '"Document":{"old": "' || to_char(:OLD.Document) || '", "new": "' || to_char(:NEW.Document) || '"},';
            v_Updated := true;
        END IF;
        -- Add more fields
    END IF;
    IF DELETING THEN
        v_clob := v_clob || '"CustomerId": ' || to_char(:OLD.CustomerId) || ',';
    END IF;

    v_clob := SUBSTR(v_clob, 1, LENGTH(v_clob) -1) || '}}';

    -- Get the user name from the context
    SELECT USER INTO v_UserName FROM DUAL;

    -- Insert log entry
    IF v_Updated = true OR INSERTING OR DELETING THEN
        INSERT INTO GenericLog (LogID, TableName, Action, RecordID, ChangedFields, CreatedAt, UserID)
        VALUES (SEQ_LOG.NEXTVAL, 'Customers', v_Action, 
                CASE v_Action 
                    WHEN 'Insert' THEN :NEW.CustomerId
                    ELSE :OLD.CustomerId
                END,
                v_clob, SYSTIMESTAMP, v_UserName);
    END IF;
END;
/
ALTER TRIGGER "C##APP"."CUSTOMERS_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUSTOMER_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."CUSTOMER_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON CUSTOMERS 

for each row
BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."CUSTOMER_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MANUFACTURERS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."MANUFACTURERS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON MANUFACTURERS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."MANUFACTURERS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENTS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."PAYMENTS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON PAYMENTS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."PAYMENTS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCTS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."PRODUCTS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON PRODUCTS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."PRODUCTS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SALEITEMS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."SALEITEMS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON SALEITEMS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."SALEITEMS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SALES_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."SALES_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON SALES
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."SALES_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SHIPPINGADDRESSES_LOG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."SHIPPINGADDRESSES_LOG" 
AFTER INSERT OR UPDATE OR DELETE ON ShippingAddresses
FOR EACH ROW
DECLARE
    v_Action VARCHAR2(10);
    v_UserName VARCHAR2(100); 
    v_clob CLOB;
    v_Updated BOOLEAN := false;
BEGIN
    IF INSERTING THEN
        v_Action := 'Insert';
    ELSIF UPDATING THEN
        v_Action := 'Update';
    ELSIF DELETING THEN
        v_Action := 'Delete';
    END IF;

    v_clob := '{"ShippingAddress":{';

    IF INSERTING THEN
        v_clob := v_clob || '"AddressId":{"new": ' || to_char(:NEW.AddressId) || '},';
        v_clob := v_clob || '"SaleId":{"new": ' || to_char(:NEW.SaleId) || '},';
        v_clob := v_clob || '"ShippingAddress":{"new": "' || to_char(:NEW.ShippingAddress) || '"},';
        v_clob := v_clob || '"ShippingCity":{"new": "' || to_char(:NEW.ShippingCity) || '"},';
        v_clob := v_clob || '"ShippingState":{"new": "' || to_char(:NEW.ShippingState) || '"},';
        v_clob := v_clob || '"ShippingZipcode":{"new": "' || to_char(:NEW.ShippingZipcode) || '"},';
        v_clob := v_clob || '"ShippingCountry":{"new": "' || to_char(:NEW.ShippingCountry) || '"},';
    END IF;
    IF UPDATING THEN
        IF :OLD.ShippingAddress != :NEW.ShippingAddress THEN
            v_clob := v_clob || '"ShippingAddress":{"old": "' || to_char(:OLD.ShippingAddress) || '", "new": "' || to_char(:NEW.ShippingAddress) || '"},';
            v_Updated := true;
        END IF;
        IF :OLD.ShippingCity != :NEW.ShippingCity THEN
            v_clob := v_clob || '"ShippingCity":{"old": "' || to_char(:OLD.ShippingCity) || '", "new": "' || to_char(:NEW.ShippingCity) || '"},';
            v_Updated := true;
        END IF;
        -- Add more fields
    END IF;
    IF DELETING THEN
        v_clob := v_clob || '"addressid": ' || to_char(:OLD.addressid) || ',';
    END IF;
    
    v_clob := SUBSTR(v_clob, 1, LENGTH(v_clob) -1) || '}}';
    
    -- Get the user name from the context
    SELECT USER INTO v_UserName FROM DUAL;

    -- Insert log entry
    IF v_Updated = true OR INSERTING OR DELETING THEN
        INSERT INTO GenericLog (LogID, TableName, Action, RecordID, ChangedFields, CreatedAt, UserID)
        VALUES (SEQ_LOG.NEXTVAL, 'ShippingAddresses', v_Action, 
                CASE v_Action 
                    WHEN 'Insert' THEN :NEW.AddressID
                    ELSE :OLD.AddressID
                END,
                v_clob, SYSTIMESTAMP, v_UserName);
    END IF;
END;
/
ALTER TRIGGER "C##APP"."SHIPPINGADDRESSES_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SHIPPINGADDRESSES_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."SHIPPINGADDRESSES_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON SHIPPINGADDRESSES
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."SHIPPINGADDRESSES_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SUPPLIERS_TIME_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##APP"."SUPPLIERS_TIME_EVENTS" 
BEFORE INSERT OR UPDATE ON SUPPLIERS
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        :NEW.CreatedAt := sysdate;
    ELSE
        :NEW.UpdatedAt := sysdate;
    END IF;
END;
/
ALTER TRIGGER "C##APP"."SUPPLIERS_TIME_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Procedure DELETEOLDLOGS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##APP"."DELETEOLDLOGS" AS
BEGIN
    DELETE FROM GenericLog
    WHERE CreatedAt < SYSTIMESTAMP - INTERVAL '24' HOUR;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Old logs deleted.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error deleting old logs: ' || SQLERRM);
        ROLLBACK;
END DeleteOldLogs;

/
--------------------------------------------------------
--  DDL for Function GETSTOCKSTATUS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##APP"."GETSTOCKSTATUS" (InStock NUMBER) RETURN StockStatusType IS
    StockStatus VARCHAR2(50);
    Action VARCHAR2(100);
    Result StockStatusType; -- User-defined type instance
BEGIN
    IF InStock < 0 THEN
        StockStatus := 'Negative Balance';
        Action := 'Perform Inventory Count';
    ELSIF InStock = 0 THEN
        StockStatus := 'Zero Balance';
        Action := 'Check Validity of Product';
    ELSIF InStock > 0 AND InStock <= 20 THEN
        StockStatus := 'Healthy Balance';
        Action := 'No Action Required';
    ELSE
        StockStatus := 'Excessive Balance';
        Action := 'Check for Stagnant Inventory';
    END IF;

    -- Assign values to the user-defined type
    Result := StockStatusType(StockStatus, Action);

    RETURN Result;
END;

/
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "C##APP"."CATEGORIES" ADD PRIMARY KEY ("CATEGORYID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."CATEGORY_PK" ON "C##APP"."CATEGORIES" ("CATEGORYID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "C##APP"."CUSTOMERS" ADD PRIMARY KEY ("CUSTOMERID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."CUSTOMER_PK" ON "C##APP"."CUSTOMERS" ("CUSTOMERID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENERICLOG
--------------------------------------------------------

  ALTER TABLE "C##APP"."GENERICLOG" ADD PRIMARY KEY ("LOGID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."LOG_PK" ON "C##APP"."GENERICLOG" ("LOGID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "C##APP"."PAYMENTS" ADD PRIMARY KEY ("PAYMENTID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."PAYMENT_PK" ON "C##APP"."PAYMENTS" ("PAYMENTID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "C##APP"."ADDRESS" MODIFY ("ADDRESSID" NOT NULL ENABLE);
  ALTER TABLE "C##APP"."ADDRESS" ADD CONSTRAINT "ADDRESS_PK" PRIMARY KEY ("ADDRESSID")
  USING INDEX "C##APP"."ADDRESS_PK"  ENABLE;
  ALTER TABLE "C##APP"."ADDRESS" ADD CONSTRAINT "CHK_ADDRESSTYPE" CHECK (ADDRESSTYPE IN ('Delivery', 'Billing')) ENABLE;
--------------------------------------------------------
--  Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "C##APP"."SALES" ADD PRIMARY KEY ("SALEID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."SALE_PK" ON "C##APP"."SALES" ("SALEID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "C##APP"."PRODUCTS" ADD CONSTRAINT "CHK_WEIGHTTYPE" CHECK (WeightType IN ('Kilograms', 'Pounds', 'Grams')) ENABLE;
  ALTER TABLE "C##APP"."PRODUCTS" ADD CONSTRAINT "CHK_DIMENSIONSTYPE" CHECK (DimensionsType IN ('Inches', 'Centimeters', 'Millimeters', 'Meters')) ENABLE;
  ALTER TABLE "C##APP"."PRODUCTS" ADD PRIMARY KEY ("PRODUCTID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."PRODUCT_PK" ON "C##APP"."PRODUCTS" ("PRODUCTID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table MANUFACTURERS
--------------------------------------------------------

  ALTER TABLE "C##APP"."MANUFACTURERS" ADD PRIMARY KEY ("MANUFACTURERID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."MANUFACTURER_PK" ON "C##APP"."MANUFACTURERS" ("MANUFACTURERID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALEITEMS
--------------------------------------------------------

  ALTER TABLE "C##APP"."SALEITEMS" ADD PRIMARY KEY ("SALEITEMID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."SALEITEM_PK" ON "C##APP"."SALEITEMS" ("SALEITEMID") 
  )  ENABLE;
  ALTER TABLE "C##APP"."SALEITEMS" MODIFY ("SALEID" NOT NULL ENABLE);
  ALTER TABLE "C##APP"."SALEITEMS" MODIFY ("PRODUCTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHIPPINGADDRESSES
--------------------------------------------------------

  ALTER TABLE "C##APP"."SHIPPINGADDRESSES" ADD PRIMARY KEY ("ADDRESSID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."SHIPPINGADDRESS_PK" ON "C##APP"."SHIPPINGADDRESSES" ("ADDRESSID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "C##APP"."SUPPLIERS" ADD PRIMARY KEY ("SUPPLIERID")
  USING INDEX (CREATE UNIQUE INDEX "C##APP"."SUPPLIER_PK" ON "C##APP"."SUPPLIERS" ("SUPPLIERID") 
  )  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "C##APP"."ADDRESS" ADD CONSTRAINT "FK_CUSTOMER" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "C##APP"."CUSTOMERS" ("CUSTOMERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "C##APP"."PAYMENTS" ADD CONSTRAINT "FK_SALEPAYMENTS" FOREIGN KEY ("SALEID")
	  REFERENCES "C##APP"."SALES" ("SALEID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "C##APP"."PRODUCTS" ADD FOREIGN KEY ("CATEGORYID")
	  REFERENCES "C##APP"."CATEGORIES" ("CATEGORYID") ENABLE;
  ALTER TABLE "C##APP"."PRODUCTS" ADD FOREIGN KEY ("MANUFACTURERID")
	  REFERENCES "C##APP"."MANUFACTURERS" ("MANUFACTURERID") ENABLE;
  ALTER TABLE "C##APP"."PRODUCTS" ADD FOREIGN KEY ("SUPPLIERID")
	  REFERENCES "C##APP"."SUPPLIERS" ("SUPPLIERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEITEMS
--------------------------------------------------------

  ALTER TABLE "C##APP"."SALEITEMS" ADD CONSTRAINT "FK_SALE" FOREIGN KEY ("SALEID")
	  REFERENCES "C##APP"."SALES" ("SALEID") ENABLE;
  ALTER TABLE "C##APP"."SALEITEMS" ADD CONSTRAINT "FK_PRODUCT" FOREIGN KEY ("PRODUCTID")
	  REFERENCES "C##APP"."PRODUCTS" ("PRODUCTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "C##APP"."SALES" ADD CONSTRAINT "FK_SALESCUSTOMER" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "C##APP"."CUSTOMERS" ("CUSTOMERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SHIPPINGADDRESSES
--------------------------------------------------------

  ALTER TABLE "C##APP"."SHIPPINGADDRESSES" ADD CONSTRAINT "FK_SALESHIPPINGADDERESS" FOREIGN KEY ("SALEID")
	  REFERENCES "C##APP"."SALES" ("SALEID") ENABLE;
