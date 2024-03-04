-- Calculate the total doctor charges.
SELECT SUM(doctorCharge) AS TotalDoctorCharges FROM Billing;

-- Calculate the average prescription charge.
SELECT AVG(prescriptionCharge) AS AvgPrescriptionCharge FROM Billing;

-- Find the maximum room charge.
SELECT MAX(roomCharge) AS MaxRoomCharge FROM Billing;

-- Format the billingDate as Day, Month DD, YYYY.
SELECT BILLINGID, TO_CHAR(billingDate, 'Day, Month DD, YYYY') AS FormattedBillingDate FROM Billing;

-- Calculate the months between a fixed date and billingDate.
SELECT MONTHS_BETWEEN(DATE '2020-01-01', billingDate) AS MonthsSinceBilling FROM Billing;

-- Round the insurance coverage percentage.
SELECT ROUND(insuranceCoveragePercentage) AS RoundedInsuranceCoverage FROM Billing;

-- Classify room charges into categories.
SELECT billingID, roomCharge, 
CASE 
    WHEN roomCharge = 0 THEN 'No Charge' 
    WHEN roomCharge > 0 AND roomCharge <= 100 THEN 'Standard' 
    ELSE 'Premium' 
END AS RoomChargeCategory 
FROM Billing;

-- Count the number of billings.
SELECT COUNT(*) AS NumberOfBillings FROM Billing;

-- Extract the last three digits of the BILLINGID.
SELECT SUBSTR(TO_CHAR(BILLINGID), -3) AS LastThreeDigits FROM Billing;

-- Add 3 months to the billing date.
SELECT BILLINGID, ADD_MONTHS(billingDate, 3) AS NewBillingDate FROM Billing;

-- Round up the doctor charge to the next whole number.
SELECT CEIL(doctorCharge) AS RoundedUpDoctorCharge FROM Billing;

-- Find the minimum prescription charge.
SELECT MIN(prescriptionCharge) AS MinPrescriptionCharge FROM Billing
