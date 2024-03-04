1. GROUP BY
Operation: Calculate the average charge by department for doctors.


						SELECT departmentName, AVG(charge) AS averageCharge
						FROM Doctor
						GROUP BY departmentName;
						
						
	
	
	2. Indexes
Operation: Create an index on the lastName column in the Patient table.


			CREATE INDEX idx_patient_lastname ON PATIENT(lastName);




3. Analytic Functions
				Operation: Rank doctors by their years of practice within their department.

					SELECT doctor_ID, firstName, lastName, departmentName, yearsOfPractice,
					RANK() OVER (PARTITION BY departmentName ORDER BY yearsOfPractice DESC) AS rankInDepartment
					FROM Doctor;
	
	
	
	4. Cursor
	
						DECLARE
					  CURSOR patient_cursor IS SELECT firstName, lastName FROM PATIENT;
					  patient_record patient_cursor%ROWTYPE;
					BEGIN
					  OPEN patient_cursor;
					  LOOP
						FETCH patient_cursor INTO patient_record;
						EXIT WHEN patient_cursor%NOTFOUND;
						DBMS_OUTPUT.PUT_LINE(patient_record.firstName || ' ' || patient_record.lastName);
					  END LOOP;
					  CLOSE patient_cursor;
					END;

--
--Explanation: This PL/SQL block declares a cursor that selects first and last names from the PATIENT table.
-- It then loops through each row, printing the names of patients until there are no more rows to fetch.






5. View
-- Operation: Create a view to display patient details along with their attending doctor's name.

					CREATE VIEW PatientDoctorDetails AS
					SELECT p.patient_ID, p.firstName AS patientFirstName, p.lastName AS patientLastName, d.firstName AS doctorFirstName, d.lastName AS doctorLastName
					FROM PATIENT p
					JOIN Doctor d ON p.doctor_ID = d.doctor_ID;

6. Materialized View
Operation: Create a materialized view to store the result of the average doctor charges per department.



					CREATE MATERIALIZED VIEW AvgDoctorChargeDept AS
					SELECT departmentName, AVG(charge) AS averageCharge
					FROM Doctor
					GROUP BY departmentName;

7. Trigger


				CREATE OR REPLACE TRIGGER UpdatePatientAge
				BEFORE INSERT OR UPDATE OF DOB ON PATIENT
				FOR EACH ROW
				BEGIN
				  :NEW.age := TRUNC(MONTHS_BETWEEN(SYSDATE, :NEW.DOB) / 12);
				END;
8. Sequence

		CREATE SEQUENCE patient_id_seq
		START WITH 1
		INCREMENT BY 1;



9. Function
Operation: Create a function to calculate the full charge for a patient visit.


		CREATE OR REPLACE FUNCTION CalculateFullCharge(patient_id INT)
				RETURN NUMERIC IS
				  totalCharge NUMERIC;
				BEGIN
				  SELECT doctorCharge + prescriptionCharge + roomCharge INTO totalCharge
				  FROM billing
				  WHERE patient_ID = patient_id;
				  RETURN totalCharge;
				END;

10. Procedure


	CREATE OR REPLACE PROCEDURE AdmitPatient(patient_id INT, room_id INT) AS
	BEGIN
	  INSERT INTO inpatient (inpatientID, admitDate)
	  VALUES (patient_id, SYSDATE);
	  
	  UPDATE Room
	  SET roomStatus = 'Occupied'
	  WHERE roomID = room_id;
	END;



