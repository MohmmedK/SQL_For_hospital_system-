--1. INNER JOIN 
--New Syntax:

SELECT * FROM Patient
INNER JOIN APPORINTMENT ON Patient.patient_ID = APPORINTMENT.patient_ID;


--Old Syntax:
SELECT * FROM Patient, APPORINTMENT
WHERE Patient.patient_ID = APPORINTMENT.patient_ID;

-----------------------------
-- LEFT OUTER JOIN
--New Syntax:
SELECT * FROM Doctor
LEFT JOIN APPORINTMENT ON Doctor.doctor_ID = APPORINTMENT.doctor_ID;


-- Old Syntax:
SELECT * FROM Doctor, APPORINTMENT
WHERE Doctor.doctor_ID = APPORINTMENT.doctor_ID(+);

--4. FULL OUTER JOIN (Returns all records when there is a match in either left or right table)

SELECT * FROM Patient
FULL OUTER JOIN APPORINTMENT ON Patient.patient_ID = APPORINTMENT.patient_ID;
--5. CROSS JOIN (Returns a Cartesian product of the two tables)
SELECT * FROM Doctor
CROSS JOIN Department; 


-- self Join Needs to Alias !!!!!!!!!! 
-- new Syntax
SELECT A.adminID AS Admin1, B.adminID AS Admin2
FROM Admin A
INNER JOIN Admin B ON A.departmentName = B.departmentName AND A.adminID != B.adminID;

-- old Syntax
SELECT A.adminID AS Admin1, B.adminID AS Admin2
FROM Admin A, Admin B
WHERE A.departmentName = B.departmentName AND A.adminID != B.adminID;







