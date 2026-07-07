-- Create Master Employee Table
CREATE TABLE [dbo].[NYC_Payroll_EMP_MD] (
    [EmployeeID] [varchar](10) NULL,
    [LastName] [varchar](30) NULL,
    [FirstName] [varchar](30) NULL
);

-- Create Master Job Title Table
CREATE TABLE [dbo].[NYC_Payroll_TITLE_MD] (
    [TitleCode] [varchar](10) NULL,
    [TitleDescription] [varchar](100) NULL
);

-- Create Master Agency Table
CREATE TABLE [dbo].[NYC_Payroll_AGENCY_MD] (
    [AgencyID] [varchar](10) NULL,
    [AgencyName] [varchar](50) NULL
);

-- Create Main Transactional Payroll Table
CREATE TABLE [dbo].[NYC_Payroll_Data] (
    [FiscalYear] [int] NULL,
    [AgencyID] [varchar](10) NULL,
    [AgencyName] [varchar](50) NULL,
    [EmployeeID] [varchar](10) NULL,
    [LastName] [varchar](30) NULL,
    [FirstName] [varchar](30) NULL,
    [AgencyStartDate] [date] NULL,
    [WorkLocationBorough] [varchar](50) NULL,
    [TitleCode] [varchar](10) NULL,
    [TitleDescription] [varchar](100) NULL,
    [LeaveStatusasofJune30] [varchar](50) NULL,
    [BaseSalary] [decimal](18, 2) NULL,
    [PayRate] [varchar](10) NULL,
    [RegularHours] [decimal](18, 2) NULL,
    [RegularGrossPaid] [decimal](18, 2) NULL,
    [OTHours] [decimal](18, 2) NULL,
    [OTPaid] [decimal](18, 2) NULL,
    [TotalOtherPay] [decimal](18, 2) NULL
);

-- Create Aggregated Summary Destination Table
CREATE TABLE [dbo].[NYC_Payroll_Summary] (
    [FiscalYear] [int] NULL,
    [AgencyName] [varchar](50) NULL,
    [TotalPaid] [decimal](18, 2) NULL
);
