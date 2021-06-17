--Group By Clause

select DeptID,COUNT(*) NumberOfEmp from EMPLOYEE group by DeptID

select DeptID,SUM(Salary) TotalSal from EMPLOYEE group by DeptID

select DeptID, Max(Salary) MaxSal, Min(Salary) MinSal, Avg(Salary) AvgSal from EMPLOYEE group by DeptID

select DeptID,COUNT(*) NumberOfEmp,Salary from EMPLOYEE group by DeptID,Salary		--more than one column

--Having Clause

select DeptID,COUNT(*) NumberOfEmp from EMPLOYEE group by DeptID having COUNT(*)>3

select EmpAddress,sum(Salary) TotalSal from EMPLOYEE where DeptID= 10 group by EmpAddress having EmpAddress='HYD'

select * from EMPLOYEE

--Top n Clause

select top(2) * from Employee

SELECT TOP(2) EmpID, EmpName, Salary, DeptID, EmpAddress FROM Employee WHERE EmpAddress='HYD' order by EmpID

SELECT TOP(2) EmpID, EmpName, Salary, DeptID, EmpAddress FROM Employee WHERE EmpAddress='HYD' order by EmpID desc

SELECT TOP(10) percent EmpID, EmpName, Salary, DeptID, EmpAddress FROM Employee WHERE EmpAddress='HYD' order by EmpID

SELECT TOP(2) WITH TIES EmpName FROM Employee ORDER BY EmpName ASC

select * from Employee

--Order by clause

SELECT * FROM Employee ORDER BY EmpName

SELECT * FROM Employee ORDER BY EmpName desc

SELECT * FROM Employee WHERE Salary>20000 ORDER BY 1				--1 is EmpID

SELECT * FROM Employee WHERE Salary>20000 ORDER BY 2				--2 is EmpName

SELECT * FROM Employee ORDER BY EmpName OFFSET 5 ROWS				--It will skip the first 5 records

SELECT * FROM Employee ORDER BY EmpName OFFSET 3 ROWS FETCH NEXT 2 ROWS ONLY	--It will skip the first 3 records & display next 2 records

SELECT * FROM Employee ORDER BY EmpName								

SELECT * FROM Employee

--WHERE Clause

SELECT * FROM Employee WHERE EmpAddress = 'HYD'

SELECT * FROM Employee WHERE DeptID=10 AND EmpAddress = 'HYD'

SELECT * FROM Employee WHERE EmpAddress = 'HYD' OR Salary > 20000

SELECT * FROM Employee WHERE (DeptID=10 AND EmpAddress = 'HYD') OR (Salary = 20000)

UPDATE Employee SET Salary = 37000  WHERE EmpID= 104

DELETE FROM Employee WHERE EmpID=103

SELECT * FROM Employee



