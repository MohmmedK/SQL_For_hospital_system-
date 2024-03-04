	-- SELECT USING AND + OR 
	SELECT doctor_id from diagnosis
	where DIAGNOSISID = 100000022
	AND DOCTOR_ID = 2 
	OR PATIENT_ID = 3
	
	
	-- The best practice here to use ()
	-- cuz it may lead to wrong output if we don't.  
	
	
SELECT doctor_id from diagnosis
where (DIAGNOSISID = 100000022 AND DOCTOR_ID = 2)  
OR PATIENT_ID = 3




-- ORDER by
-- BY DEFAULT It is ASC 
-- so we don't need to writ it  

SELECT * from diagnosis
ORDER by  DIAGNOSISID DESC



Sort retrieved rows with the ORDER BY clause:
ASC: ascending order, default
DESC: descending order
The ORDER BY clause comes last in the SELECT statement:


