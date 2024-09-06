CREATE TABLE EMPLOYEE (
    Emp_id INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Emp_Address VARCHAR(255),
    Emp_designation VARCHAR(100),
    Emp_department VARCHAR(100),
    Emp_Phone_No VARCHAR(15),
    Emp_Basicpay DECIMAL(10, 2),
    Emp_HRA DECIMAL(10, 2),
    Emp_DA DECIMAL(10, 2),
    Emp_TA DECIMAL(10, 2),
    Emp_Salary DECIMAL(10, 2)
);

INSERT INTO EMPLOYEE (Emp_id, Emp_Name, Emp_Address, Emp_designation, Emp_department, Emp_Phone_No, Emp_Basicpay, Emp_HRA, Emp_DA, Emp_TA, Emp_Salary) 
VALUES 
(1, 'Dharun', '123  St', 'Manager', 'Sales', '1234567890', 50000, 0, 0, 0, 0),
(2, 'Siva', '456 St', 'Sales Executive', 'Sales', '2345678901', 30000, 0, 0, 0, 0),
(3, 'Sivam', '789 St', 'Manager', 'HR', '3456789012', 55000, 0, 0, 0, 0),
(4, 'Abdul', '101 St', 'HR Executive', 'HR', '4567890123', 32000, 0, 0, 0, 0),
(5, 'Dharun', '202 St', 'Developer', 'IT', '5678901234', 60000, 0, 0, 0, 0),
(6, 'Kirthi', '303 St', 'IT Executive', 'IT', '6789012345', 35000, 0, 0, 0, 0);


UPDATE EMPLOYEE
SET Emp_HRA = Emp_Basicpay * 0.10,
    Emp_DA = Emp_Basicpay * 0.02,
    Emp_TA = Emp_Basicpay * 0.02,
    Emp_Salary = Emp_Basicpay + (Emp_Basicpay * 0.10) + (Emp_Basicpay * 0.02) + (Emp_Basicpay * 0.02);


SELECT Emp_id, Emp_Name, Emp_department, Emp_Salary
FROM EMPLOYEE
WHERE (Emp_department, Emp_Salary) IN (
    SELECT Emp_department, MAX(Emp_Salary)
    FROM EMPLOYEE
    GROUP BY Emp_department
);

