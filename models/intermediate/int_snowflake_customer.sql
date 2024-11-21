with customer as (
    select 
C_CURRENT_ADDR_SK,
C_FIRST_SHIPTO_DATE_SK,
C_FIRST_SALES_DATE_SK,
C_SALUTATION,
C_FIRST_NAME,
C_LAST_NAME,
C_PREFERRED_CUST_FLAG,
C_BIRTH_DAY,
C_BIRTH_MONTH,
C_BIRTH_YEAR,
C_BIRTH_COUNTRY,
C_LOGIN,
C_EMAIL_ADDRESS,
C_LAST_REVIEW_DATE
 
 from {{ref("stg_snowflake__customer")}}
)


select * from customer


