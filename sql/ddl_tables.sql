-- DDL Script to provision all required source and target structures

CREATE TABLE dbo.NYC_Payroll_Data (
    FiscalYear INT,
    PayrollNumber INT,
    AgencyID VARCHAR(10),
    AgencyName VARCHAR(100),
    EmployeeID VARCHAR(20),
    LastName VARCHAR(100),
    FirstName VARCHAR(100),
    AgencyStartDt DATE,
    WorkLocationBoro VARCHAR(50),
    TitleCode VARCHAR(10),
    TitleDescription VARCHAR(100),
    LeaveStatusasofJune30 VARCHAR(50),
    BaseSalary DECIMAL(18,2),
    PayBasis VARCHAR(50),
    RegularHours DECIMAL(18,2),
    RegularGrossPaid DECIMAL(18,2),
    OTHours DECIMAL(18,2),
    TotalOTPaid DECIMAL(18,2),
    TotalOtherPay DECIMAL(18,2)
);

CREATE TABLE dbo.AgencyMaster (
    AgencyID VARCHAR(10),
    AgencyName VARCHAR(100)
);

CREATE TABLE dbo.EmpMaster (
    EmployeeID VARCHAR(20),
    LastName VARCHAR(100),
    FirstName VARCHAR(100)
);

CREATE TABLE dbo.TitleMaster (
    TitleCode VARCHAR(10),
    TitleDescription VARCHAR(100)
);

CREATE TABLE dbo.NYC_Payroll_Summary (
    FiscalYear INT,
    AgencyName VARCHAR(100),
    TotalPaid DECIMAL(18,2)
);
