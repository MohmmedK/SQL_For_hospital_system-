

-- SELECT USING baisc where 
SELECT * from admin WHERE departmentname = 'Dermatology' 




-- SELECT USING !=  

SELECT * from admin WHERE departmentname != 'Dermatology' 



-- where using BETWEEN
--- and Using TO_CHAR 
SELECT BILLINGID ,
BILLINGDATE,
TO_CHAR(BILLINGDATE,'YYYY mon day') AFTER
FROM Billing
WHERE billingDate BETWEEN DATE '2019-09-09' AND DATE '2019-11-11';