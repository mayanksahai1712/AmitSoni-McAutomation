USE [master]
GO
/****** Object:  Database [IARTDBempty]    Script Date: 23-09-2018 22:53:08 ******/
CREATE DATABASE [IARTDBempty]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IARTDBempty', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\IARTDBempty.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IARTDBempty_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\IARTDBempty_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IARTDBempty] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IARTDBempty].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IARTDBempty] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IARTDBempty] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IARTDBempty] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IARTDBempty] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IARTDBempty] SET ARITHABORT OFF 
GO
ALTER DATABASE [IARTDBempty] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IARTDBempty] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IARTDBempty] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IARTDBempty] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IARTDBempty] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IARTDBempty] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IARTDBempty] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IARTDBempty] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IARTDBempty] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IARTDBempty] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IARTDBempty] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IARTDBempty] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IARTDBempty] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IARTDBempty] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IARTDBempty] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IARTDBempty] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IARTDBempty] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IARTDBempty] SET RECOVERY FULL 
GO
ALTER DATABASE [IARTDBempty] SET  MULTI_USER 
GO
ALTER DATABASE [IARTDBempty] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IARTDBempty] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IARTDBempty] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IARTDBempty] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [IARTDBempty] SET DELAYED_DURABILITY = DISABLED 
GO
USE [IARTDBempty]
GO
/****** Object:  Table [dbo].[AllowanceMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowanceMaster](
	[AllowanceId] [int] IDENTITY(1,1) NOT NULL,
	[AllowanceType] [nvarchar](50) NULL,
	[ValueMethod] [nvarchar](20) NULL,
	[AllowanceHead] [nvarchar](50) NULL,
	[AllowanceAmount] [decimal](18, 0) NULL,
	[IsActive] [bit] NULL,
	[IsCreated] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_AllowanceMaster] PRIMARY KEY CLUSTERED 
(
	[AllowanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnnualLeave]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnualLeave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[OtherNames] [nvarchar](250) NOT NULL,
	[Faculty] [nvarchar](100) NULL,
	[Department] [nvarchar](max) NULL,
	[Maritalstatus] [nvarchar](50) NULL,
	[Nationality] [nvarchar](100) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Fileno] [nvarchar](20) NULL,
	[PresentStatus] [nvarchar](100) NULL,
	[Salaryperannum] [nvarchar](50) NULL,
	[Proposedannualleave] [nvarchar](50) NULL,
	[LeavefromDate] [date] NULL,
	[LeavetoDate] [date] NULL,
	[Totalworkingday] [nvarchar](10) NULL,
	[IsLeave] [nvarchar](10) NULL,
	[IsLeavefromDate] [date] NULL,
	[IsLeavetoDate] [date] NULL,
	[OutstandingLeaveDays] [nvarchar](10) NULL,
	[IsPublicService] [nvarchar](10) NULL,
	[IsHOD] [nvarchar](10) NULL,
	[ActOfficer] [nvarchar](250) NULL,
	[IApprove] [nvarchar](10) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_AnnualLeave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankMaster](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](60) NOT NULL,
	[BankTypeId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_BankMaster] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankTypeMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankTypeMaster](
	[BankTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BankTypeName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_BankTypeMaster] PRIMARY KEY CLUSTERED 
(
	[BankTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CadreMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CadreMaster](
	[CadreId] [int] IDENTITY(1,1) NOT NULL,
	[CadreName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_CadreMaster] PRIMARY KEY CLUSTERED 
(
	[CadreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CasualLeave]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasualLeave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Department] [nvarchar](250) NULL,
	[Post] [nvarchar](100) NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[Reason] [nvarchar](max) NULL,
	[ResponsiblePerson] [nvarchar](250) NULL,
	[HodComment] [nvarchar](max) NULL,
	[AnyLeaveDays] [nvarchar](10) NULL,
	[OfficeInChargeName] [nvarchar](250) NULL,
	[ApprovedDays] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_CasualLeave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CentralStores]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentralStores](
	[Id] [int] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[Price] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_CentralStores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChemicalStores]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChemicalStores](
	[Id] [int] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ChemicalStores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[IsDeleted] [bit] NULL CONSTRAINT [DF_CityMaster_IsDeleted]  DEFAULT ((0)),
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ClassNumber] [int] NOT NULL,
	[ClassName] [nvarchar](100) NULL,
	[ClassStatus] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ClassMaster] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COUNTRYLIST]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUNTRYLIST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ISO] [char](2) NOT NULL,
	[NAME] [varchar](80) NOT NULL,
	[NICENAME] [varchar](80) NOT NULL,
	[ISO3] [char](3) NULL,
	[NUMCODE] [int] NULL,
	[PHONECODE] [int] NOT NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CrivVoucher]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrivVoucher](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CRIVVoucherId] [int] NULL,
	[DepartmentId] [nvarchar](500) NULL,
	[Store] [nvarchar](500) NULL,
	[Item] [nvarchar](500) NULL,
	[Class] [nvarchar](500) NULL,
	[Uom] [nvarchar](500) NULL,
	[Qunatity] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[TotalValue] [nvarchar](500) NULL,
	[BatchDetail] [nvarchar](500) NULL,
	[RequisitionOfficer] [nvarchar](500) NULL,
	[RecivingPerson] [nvarchar](500) NULL,
	[Remarks] [nvarchar](500) NULL,
	[TotalCost] [nvarchar](500) NULL,
	[AmtWord] [nvarchar](500) NULL,
	[Name1] [nvarchar](500) NULL,
	[Sign1] [nvarchar](500) NULL,
	[Fac1] [nvarchar](500) NULL,
	[Date1] [datetime] NULL,
	[Sign2] [nvarchar](500) NULL,
	[Date2] [datetime] NULL,
	[Name3] [nvarchar](500) NULL,
	[Fac3] [nvarchar](500) NULL,
	[Date3] [datetime] NULL,
	[DateIns] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_CrivVoucher] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerMaster](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeGIId] [int] NOT NULL,
	[LoginUserId] [int] NOT NULL,
	[OrgName] [nvarchar](250) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[ContactPerson] [nvarchar](250) NULL,
	[OrgLogoUrl] [nvarchar](max) NULL,
	[CountryLogoIrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerMaster] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeductionsMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeductionsMaster](
	[DeductionId] [int] IDENTITY(1,1) NOT NULL,
	[DeductionType] [nvarchar](50) NULL,
	[ValueMethod] [nvarchar](20) NULL,
	[DeductionHead] [nvarchar](50) NULL,
	[DeductionAmount] [decimal](18, 0) NULL,
	[IsActive] [bit] NULL,
	[IsCreated] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_DeductionsMaster] PRIMARY KEY CLUSTERED 
(
	[DeductionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpAIAssociation]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpAIAssociation](
	[AssociationsId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[IDnumber] [nvarchar](20) NULL,
	[AttendedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmpAIAssociation] PRIMARY KEY CLUSTERED 
(
	[AssociationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpAIConference]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpAIConference](
	[ConferenceId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[AttendedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmpAIConference] PRIMARY KEY CLUSTERED 
(
	[ConferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeAI]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAI](
	[EmployeeAIId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[InstitutionAttended1] [nvarchar](max) NULL,
	[InstitutionAttended2] [nvarchar](max) NULL,
	[InstitutionAttended3] [nvarchar](max) NULL,
	[Qualification1] [nvarchar](10) NULL,
	[Qualification2] [nvarchar](10) NULL,
	[Qualification3] [nvarchar](10) NULL,
	[YearOfGraduation1] [nvarchar](10) NULL,
	[YearOfGraduation2] [nvarchar](10) NULL,
	[YearOfGraduation3] [nvarchar](10) NULL,
	[ProfessionalAssociationsTitle] [nvarchar](max) NULL,
	[ProfessionalAssociationsIdNo] [nvarchar](50) NULL,
	[ProfessionalAssociationsDate] [date] NULL,
	[ConferenceAttendedName] [nvarchar](max) NULL,
	[ConferenceAttendedTitle] [nvarchar](max) NULL,
	[ConferenceAttendedDate] [date] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmployeeAI] PRIMARY KEY CLUSTERED 
(
	[EmployeeAIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeAttendance]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAttendance](
	[EmployeeCode] [int] NOT NULL,
	[OnDate] [date] NOT NULL,
	[LoginTime] [datetime] NOT NULL,
	[LogoutTime] [datetime] NOT NULL,
	[Status] [nvarchar](20) NULL,
	[CustomerId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeGI]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeGI](
	[EmployeeGIId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[Rank] [nvarchar](100) NULL,
	[File_No] [nvarchar](50) NULL,
	[Grade_Level] [int] NULL,
	[Step] [int] NULL,
	[Cadre] [nvarchar](150) NULL,
	[Title] [nvarchar](50) NULL,
	[First_Name] [nvarchar](250) NULL,
	[Middle_Name] [nvarchar](250) NULL,
	[Surname] [nvarchar](250) NULL,
	[Sex] [nvarchar](10) NULL,
	[DateOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](max) NULL,
	[Marital_Status] [nvarchar](50) NULL,
	[Maiden_Name] [nvarchar](max) NULL,
	[Spouse_Name] [nvarchar](250) NULL,
	[StateOfOrigin] [nvarchar](100) NULL,
	[LGA] [nvarchar](100) NULL,
	[Home_Town] [nvarchar](100) NULL,
	[Religion] [nvarchar](20) NULL,
	[ContactHomeAddress] [nvarchar](max) NULL,
	[FirstAppointmentDate] [datetime] NULL,
	[FirstAppointmentLocation] [nvarchar](250) NULL,
	[ConfirmationDate] [datetime] NULL,
	[DateOfRetirement] [datetime] NOT NULL,
	[LastPromotionDate] [datetime] NULL,
	[Unit_Research] [nvarchar](100) NULL,
	[Section] [nvarchar](50) NULL,
	[LeaveDays] [int] NULL,
	[Leave_fromDate] [datetime] NULL,
	[Leave_ToDate] [datetime] NULL,
	[EmployeePhoto] [nvarchar](30) NULL,
	[StationOfDeployment] [nvarchar](50) NULL,
	[Programmes] [nvarchar](100) NULL,
	[Unit_Services] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmployeeGI] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeMI]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMI](
	[EmployeeMIId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[NhisNo] [nvarchar](50) NULL,
	[NhisProvider] [nvarchar](max) NULL,
	[BloodGroup] [nvarchar](10) NULL,
	[BloodGenotype] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmployeeMI] PRIMARY KEY CLUSTERED 
(
	[EmployeeMIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeePI]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePI](
	[EmployeePIId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[EmpEmailId] [nvarchar](50) NULL,
	[PermanentAddress] [nvarchar](150) NULL,
	[MobileNo] [nvarchar](10) NULL,
	[EmailIdKin] [nvarchar](50) NULL,
	[KinName] [nvarchar](30) NULL,
	[AddressNextOfKin] [nvarchar](150) NULL,
	[StateNextOfKin] [nvarchar](30) NULL,
	[LGAextOfKin] [nvarchar](30) NULL,
	[Relation] [nvarchar](30) NULL,
	[PhoneNoNextOfKin] [nvarchar](10) NULL,
	[NameOfStaffBenificiary] [nvarchar](50) NULL,
	[PhoneOfStaffBenificiary] [nvarchar](10) NULL,
	[AddressOfStaffBenificiary] [nvarchar](150) NULL,
	[EmployeeStatus] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmployeePI] PRIMARY KEY CLUSTERED 
(
	[EmployeePIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSI]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSI](
	[EmployeeSIId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[CurrentPosting] [nvarchar](100) NULL,
	[BankType] [nvarchar](50) NULL,
	[NameOfBanks] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](200) NULL,
	[AccountType] [nvarchar](10) NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[AccountName] [nvarchar](100) NULL,
	[PFA] [nvarchar](100) NULL,
	[RSAPinNo] [nvarchar](50) NULL,
	[SalaryScale] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_EmployeeSI] PRIMARY KEY CLUSTERED 
(
	[EmployeeSIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FertilizerStores]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FertilizerStores](
	[Id] [int] NOT NULL,
	[Item] [nvarchar](max) NULL,
	[Class] [nvarchar](50) NULL,
	[Price] [decimal](18, 18) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_FertilizerStores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraduateAttachmentForm]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraduateAttachmentForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NULL,
	[OurRef] [nvarchar](50) NULL,
	[YourRef] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Name] [nvarchar](250) NULL,
	[LetterDated] [nvarchar](20) NULL,
	[FromDate] [nvarchar](20) NULL,
	[ToDate] [nvarchar](20) NULL,
	[OfficerInCharge] [nvarchar](250) NULL,
	[PrincipalAccountant] [nvarchar](250) NULL,
	[ReinstatePayment] [nvarchar](50) NULL,
	[PaymentToDate] [nvarchar](20) NULL,
	[PaymentFromDate] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_GraduateAttachmentForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NULL,
	[ClassId] [int] NULL,
	[ItemName] [nvarchar](500) NULL,
	[ItemCat] [nvarchar](500) NULL,
	[UomId] [int] NULL,
	[VendorId] [int] NULL,
	[ItemRate] [nvarchar](500) NULL,
	[ItemTax] [nvarchar](500) NULL,
	[ItemImage] [nvarchar](500) NULL,
	[StatusId] [int] NULL,
	[ItemDesc] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveApplication]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveApplication](
	[LeaveAccId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[LeaveTypeName] [nvarchar](20) NOT NULL,
	[LeaveFromDate] [date] NOT NULL,
	[LeaveToDate] [date] NOT NULL,
	[NoOfDays] [decimal](18, 0) NOT NULL,
	[AppDate] [date] NULL,
	[Status] [nvarchar](15) NULL,
	[IsApproved] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_LeaveApplication] PRIMARY KEY CLUSTERED 
(
	[LeaveAccId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveLedger]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveLedger](
	[LeaveLogId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[LeaveType] [nvarchar](20) NOT NULL,
	[ConsumedLeaves] [decimal](18, 0) NOT NULL,
	[BalanceLeaves] [decimal](18, 0) NOT NULL,
	[FiscalYear] [nvarchar](15) NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_LeaveLedger] PRIMARY KEY CLUSTERED 
(
	[LeaveLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveMaster](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[LeaveCount] [int] NOT NULL,
	[CalenderYear] [nvarchar](10) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[IsCreated] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveRoasterJuniorStaff]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveRoasterJuniorStaff](
	[Id] [int] NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[SNo] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[NoOfDay] [int] NULL,
	[FromDate] [nvarchar](20) NULL,
	[ToDate] [nvarchar](20) NULL,
	[FileNo] [nvarchar](50) NULL,
	[Contiss] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_LeaveRoasterJuniorStaff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveTypeMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveTypeMaster](
	[LeaveTypeId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeName] [nvarchar](30) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_LeaveTypeMaster] PRIMARY KEY CLUSTERED 
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Usertype] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LoginDate] [datetime] NULL,
	[SystemIp] [nvarchar](100) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NyscFinalClearance]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NyscFinalClearance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NULL,
	[OurRef] [nvarchar](50) NULL,
	[YourRef] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Name] [nvarchar](50) NULL,
	[NYSC_Code] [nvarchar](50) NULL,
	[EffectDate] [date] NULL,
	[BankAccountNo] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_NyscFinalClearance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NyscMonthlyClearance]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NyscMonthlyClearance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NULL,
	[OurRef] [nvarchar](50) NULL,
	[YourRef] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Name] [nvarchar](250) NULL,
	[NYSC_Code] [nvarchar](50) NULL,
	[SatisfactoryMonth] [nvarchar](50) NULL,
	[AllowanceMonth] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_NyscMonthlyClearance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PFAMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PFAMaster](
	[PFAId] [int] IDENTITY(1,1) NOT NULL,
	[PFAName] [nvarchar](150) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_PFAMaster] PRIMARY KEY CLUSTERED 
(
	[PFAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrequalificationScoring]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrequalificationScoring](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ProjectTitle] [nvarchar](max) NULL,
	[LotNo] [nvarchar](50) NOT NULL,
	[ContractorName] [nvarchar](max) NULL,
	[EvidofReg_Cac] [nvarchar](10) NULL,
	[TaxClearanceCertificate] [nvarchar](10) NULL,
	[EvidofReg_Bureau] [nvarchar](10) NULL,
	[AudittedAccount] [nvarchar](50) NULL,
	[ClearanceCert_Itf] [nvarchar](50) NULL,
	[ClearanceCert_Pencom] [nvarchar](50) NULL,
	[ClearanceCert_Nsitf] [nvarchar](50) NULL,
	[StaffStrength] [nvarchar](50) NULL,
	[CurrentFinStatus] [nvarchar](50) NULL,
	[EquipmentList] [nvarchar](max) NULL,
	[EvidPreSimJob] [nvarchar](max) NULL,
	[ExpCompt] [nvarchar](max) NULL,
	[FinalScore] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_PrequalificationScoring] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintForms]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintForms](
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[FormType] [nvarchar](50) NULL,
	[IsApproved] [bit] NULL,
	[IsIssued] [bit] NULL,
	[AppDate] [date] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_PrintForms] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProgrammeMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammeMaster](
	[ProgrammeId] [int] IDENTITY(1,1) NOT NULL,
	[ProgrammeName] [nvarchar](80) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ProgrammeMaster] PRIMARY KEY CLUSTERED 
(
	[ProgrammeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](500) NULL,
	[VendorId] [int] NULL,
	[ItemId] [int] NULL,
	[ItemQunt] [nvarchar](500) NULL,
	[ItemTax] [nvarchar](500) NULL,
	[DeliLoc] [nvarchar](500) NULL,
	[Terms] [nvarchar](500) NULL,
	[StatusId] [int] NULL,
	[ItemDesc] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QualificationMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualificationMaster](
	[QualificationId] [int] IDENTITY(1,1) NOT NULL,
	[QualificationName] [nvarchar](50) NOT NULL,
	[Duration] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_QualificationMaster] PRIMARY KEY CLUSTERED 
(
	[QualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RankMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RankMaster](
	[RankId] [int] IDENTITY(1,1) NOT NULL,
	[RankName] [nvarchar](50) NOT NULL,
	[RankDescription] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_RankMaster] PRIMARY KEY CLUSTERED 
(
	[RankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaryPayment]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPayment](
	[SalaryPaymId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[SalaryAmount] [decimal](18, 0) NOT NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[DeductionAmount] [decimal](18, 0) NULL,
	[AllowanceAmount] [decimal](18, 0) NULL,
	[OtherDeduction] [decimal](18, 0) NULL,
	[OtherAllowance] [decimal](18, 0) NULL,
	[PaymentDate] [datetime] NULL,
	[IsPaid] [bit] NULL,
	[IsSalarySlipPrint] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_SalaryPayment] PRIMARY KEY CLUSTERED 
(
	[SalaryPaymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaryStructureMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalaryStructureMaster](
	[SalaryScaleId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryScale] [nvarchar](50) NULL,
	[GradeLevel] [int] NULL,
	[Step] [int] NULL,
	[SalaryAmount] [decimal](18, 0) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ScaleYear] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_SalaryStructure] PRIMARY KEY CLUSTERED 
(
	[SalaryScaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SectionMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionMaster](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_SectionMaster] PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_StateMaster_IsDeleted]  DEFAULT ((0)),
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StationaryStores]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationaryStores](
	[Id] [int] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StationaryStores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StationMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationMaster](
	[StationId] [int] IDENTITY(1,1) NOT NULL,
	[StationName] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StationMaster] PRIMARY KEY CLUSTERED 
(
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK_StatusMaster] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NULL,
	[ClassId] [int] NULL,
	[ItemId] [int] NULL,
	[BatchNo] [nvarchar](500) NULL,
	[Quantity] [nvarchar](500) NULL,
	[UomId] [int] NULL,
	[VendorId] [int] NULL,
	[PInvoiceNo] [nvarchar](500) NULL,
	[ReciveDate] [datetime] NULL,
	[TotalPrice] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StockMaster] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreCreditVoucher]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreCreditVoucher](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CVoucherId] [nvarchar](500) NULL,
	[RVoucherId] [nvarchar](500) NULL,
	[DepartmentId] [nvarchar](500) NULL,
	[Store] [nvarchar](500) NULL,
	[DateIns] [datetime] NULL,
	[Item] [nvarchar](500) NULL,
	[Vendor] [nvarchar](500) NULL,
	[Uom] [nvarchar](500) NULL,
	[Qunatity] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[TotalValue] [nvarchar](500) NULL,
	[BatchDetail] [nvarchar](500) NULL,
	[StoreOfficer] [nvarchar](500) NULL,
	[RecivingPerson] [nvarchar](500) NULL,
	[Sign1] [nvarchar](500) NULL,
	[Date1] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[int] [int] NULL,
 CONSTRAINT [PK_StoreCreditVoucher] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreGateVoucher]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreGateVoucher](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherTo] [nvarchar](500) NULL,
	[LPONo] [nvarchar](500) NULL,
	[VoucherFrom] [nvarchar](500) NULL,
	[VoucherId] [nvarchar](500) NULL,
	[Store] [nvarchar](500) NULL,
	[DateIns] [datetime] NULL,
	[Deliver] [nvarchar](500) NULL,
	[vehcileNo] [nvarchar](500) NULL,
	[Item] [nvarchar](500) NULL,
	[Vendor] [nvarchar](500) NULL,
	[Uom] [nvarchar](500) NULL,
	[Qunatity] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[TotalValue] [nvarchar](500) NULL,
	[Sign1] [nvarchar](500) NULL,
	[OutOfStock] [nvarchar](500) NULL,
	[LowStock] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Fund] [nvarchar](500) NULL,
	[ShortSupply] [nvarchar](500) NULL,
	[Reciving] [nvarchar](500) NULL,
	[Fac] [nvarchar](500) NULL,
	[Depart] [nvarchar](500) NULL,
	[Date1] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StoreGateVoucher] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[StoreNumber] [int] NOT NULL,
	[StoreName] [nvarchar](100) NULL,
	[StoreDesc] [nvarchar](500) NULL,
	[StoreImgName] [nvarchar](100) NULL,
	[StoreStatus] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreReciptVoucher]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreReciptVoucher](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherId] [nvarchar](500) NULL,
	[DepartmentId] [nvarchar](500) NULL,
	[Store] [nvarchar](500) NULL,
	[DateIns] [datetime] NULL,
	[ReceviedFrom] [nvarchar](500) NULL,
	[Item] [nvarchar](500) NULL,
	[Vendor] [nvarchar](500) NULL,
	[Uom] [nvarchar](500) NULL,
	[Qunatity] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[TotalValue] [nvarchar](500) NULL,
	[BatchDetail] [nvarchar](500) NULL,
	[StoreOfficer] [nvarchar](500) NULL,
	[RecivingPerson] [nvarchar](500) NULL,
	[Sign1] [nvarchar](500) NULL,
	[Date1] [datetime] NULL,
	[Sign2] [nvarchar](500) NULL,
	[Date2] [datetime] NULL,
	[Sign3] [nvarchar](500) NULL,
	[Date3] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StoreReciptVoucher] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreTallyVoucher]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreTallyVoucher](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](500) NULL,
	[LEDGERFOLIO] [nvarchar](500) NULL,
	[TVoucherId] [nvarchar](500) NULL,
	[RVoucherId] [nvarchar](500) NULL,
	[Store] [nvarchar](500) NULL,
	[DateIns] [datetime] NULL,
	[Item] [nvarchar](500) NULL,
	[Vendor] [nvarchar](500) NULL,
	[Uom] [nvarchar](500) NULL,
	[Qunatity] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[TotalValue] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_StoreTallyVoucher] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperAdmin]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperAdmin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_SuperAdmin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TendererInformation]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TendererInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[LotNo] [nvarchar](50) NOT NULL,
	[ProjectTitle] [nvarchar](max) NULL,
	[RepresentativeName] [nvarchar](250) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[SubmissionDate] [date] NULL,
	[YearofProject] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_TendererInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TenderOpening]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TenderOpening](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RepresentativeName] [nvarchar](250) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[AmountQuoted] [decimal](18, 0) NULL,
	[CompletionPeriodFrom] [date] NULL,
	[CompletionPeriodTo] [date] NULL,
	[Remarks] [nvarchar](max) NULL,
	[LotNo] [nvarchar](50) NULL,
	[ProjectTitle] [nvarchar](max) NULL,
	[YearofProject] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_TenderOpening] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitResearchMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitResearchMaster](
	[UnitResearchId] [int] IDENTITY(1,1) NOT NULL,
	[UnitResearchName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_UnitResearchMaster] PRIMARY KEY CLUSTERED 
(
	[UnitResearchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitServicesMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitServicesMaster](
	[UnitServicesId] [int] IDENTITY(1,1) NOT NULL,
	[UnitServicesName] [nvarchar](60) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_UnitServicesMaster] PRIMARY KEY CLUSTERED 
(
	[UnitServicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UomMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UomMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[UOMCode] [nvarchar](100) NULL,
	[UOMName] [nvarchar](100) NULL,
	[UOMDesc] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UOMStatus] [int] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_UomMaster] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[EmailId] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](250) NULL,
	[UserKeyId] [nvarchar](30) NULL,
	[OrganizationName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[LastLoginDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorMaster]    Script Date: 23-09-2018 22:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorMaster](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](100) NULL,
	[VendorOrg] [nvarchar](500) NULL,
	[VendorMob] [nvarchar](500) NULL,
	[VendorAMob] [nvarchar](500) NULL,
	[VendorEmail] [nvarchar](500) NULL,
	[VendorRepDesc] [nvarchar](500) NULL,
	[VendorAdd1] [nvarchar](500) NULL,
	[VendorAdd2] [nvarchar](500) NULL,
	[VendorCity] [int] NULL,
	[VendorState] [int] NULL,
	[VendorCountry] [int] NULL,
	[VendorZipCode] [nvarchar](500) NULL,
	[VendorTaxDet] [nvarchar](500) NULL,
	[VendorDesc] [nvarchar](100) NULL,
	[VendorStatus] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BankTypeMaster] ON 

INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-13 17:08:55.570' AS DateTime), 0, 1)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Commercial Banks', CAST(N'2018-09-13 17:08:55.570' AS DateTime), 0, 1)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Retail Banks', CAST(N'2018-09-13 17:08:55.570' AS DateTime), 0, 1)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Microfinance Banks', CAST(N'2018-09-13 17:08:55.570' AS DateTime), 0, 1)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Mortgage Banks', CAST(N'2018-09-13 17:08:55.570' AS DateTime), 0, 1)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-13 17:44:45.713' AS DateTime), 0, 2)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Commercial Banks', CAST(N'2018-09-13 17:44:45.713' AS DateTime), 0, 2)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Retail Banks', CAST(N'2018-09-13 17:44:45.713' AS DateTime), 0, 2)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Microfinance Banks', CAST(N'2018-09-13 17:44:45.713' AS DateTime), 0, 2)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Mortgage Banks', CAST(N'2018-09-13 17:44:45.713' AS DateTime), 0, 2)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Commercial Banks', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Retail Banks', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Microfinance Banks', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Mortgage Banks', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Commercial Banks', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Retail Banks', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Microfinance Banks', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Mortgage Banks', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Commercial Banks', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Retail Banks', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Microfinance Banks', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Mortgage Banks', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Commercial Banks', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Retail Banks', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Microfinance Banks', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Mortgage Banks', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Commercial Banks', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Retail Banks', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Microfinance Banks', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Mortgage Banks', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Commercial Banks', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Retail Banks', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Microfinance Banks', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (40, N'Mortgage Banks', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (41, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (42, N'Commercial Banks', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (43, N'Retail Banks', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (44, N'Microfinance Banks', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (45, N'Mortgage Banks', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (46, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (47, N'Commercial Banks', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (48, N'Retail Banks', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (49, N'Microfinance Banks', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (50, N'Mortgage Banks', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (51, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (52, N'Commercial Banks', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (53, N'Retail Banks', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (54, N'Microfinance Banks', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (55, N'Mortgage Banks', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (56, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (57, N'Commercial Banks', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (58, N'Retail Banks', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (59, N'Microfinance Banks', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (60, N'Mortgage Banks', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (61, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (62, N'Commercial Banks', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (63, N'Retail Banks', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (64, N'Microfinance Banks', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (65, N'Mortgage Banks', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1011, N'Central Bank of Nigeria (CBN)', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1012, N'Commercial Banks', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1013, N'Retail Banks', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1014, N'Microfinance Banks', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[BankTypeMaster] ([BankTypeId], [BankTypeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1015, N'Mortgage Banks', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[BankTypeMaster] OFF
SET IDENTITY_INSERT [dbo].[CadreMaster] ON 

INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Academic Staff', CAST(N'2018-09-13 17:08:55.547' AS DateTime), 0, 1)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Non-Academic Senior Staff', CAST(N'2018-09-13 17:08:55.550' AS DateTime), 0, 1)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Academic Staff', CAST(N'2018-09-13 17:44:45.657' AS DateTime), 0, 2)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Non-Academic Senior Staff', CAST(N'2018-09-13 17:44:45.663' AS DateTime), 0, 2)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Academic Staff', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Academic Staff', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Academic Staff', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Academic Staff', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Academic Staff', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Academic Staff', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Academic Staff', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Non-Academic Senior Staff', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Academic Staff', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Non-Academic Senior Staff', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Academic Staff', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Non-Academic Senior Staff', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Academic Staff', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Non-Academic Senior Staff', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Academic Staff', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Non-Academic Senior Staff', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1005, N'Academic Staff', CAST(N'2018-09-23 13:16:57.937' AS DateTime), 0, 1003)
INSERT [dbo].[CadreMaster] ([CadreId], [CadreName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1006, N'Non-Academic Senior Staff', CAST(N'2018-09-23 13:16:57.937' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[CadreMaster] OFF
SET IDENTITY_INSERT [dbo].[CityMaster] ON 

INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (1, N'Aba North LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (2, N'Aba South LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (3, N'Arochukwu LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (4, N'Bende LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (5, N'Isiala Ngwa LGA South', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (6, N'Ikwuano LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (7, N'Isiala LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (8, N'Ngwa North LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (9, N'Isukwuato LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (10, N'Ukwa West LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (11, N'Ukwa East LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (12, N'Umuahia LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (13, N'Umuahia South LGA', 1, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (14, N'Demsa LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (15, N'Fufore LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (16, N'Ganye LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (17, N'Girei LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (18, N'Gombi LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (19, N'Jada LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (20, N'Yola North LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (21, N'Lamurde LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (22, N'Madagali LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (23, N'Maiha LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (24, N'Mayo-Belwa LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (25, N'Michika LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (26, N'Mubi South LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (27, N'Numna  LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (28, N'Shelleng LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (29, N'Song LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (30, N'Toungo LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (31, N'Jimeta LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (32, N'Yola South LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (33, N'Hung LGA', 2, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (34, N'Aguata LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (35, N'Anambra LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (36, N'Anambra West LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (37, N'Anaocha LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (38, N'Awka South LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (39, N'Awka North LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (40, N'Ogbaru LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (41, N'Onitsha South LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (42, N'Onitsha North LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (43, N'Orumba North LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (44, N'Orumba South LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (45, N'Oyi. LGA', 3, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (46, N'Abak LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (47, N'Eastern Obolo LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (48, N'Eket LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (49, N'Essien Udim LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (50, N'Etimekpo LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (51, N'Etinan LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (52, N'Ibeno LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (53, N'Ibesikpo Asutan LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (54, N'Ibiono Ibom LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (55, N'Ika LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (56, N'Ikono LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (57, N'Ikot Abasi LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (58, N'Ikot Ekpene LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (59, N'Ini LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (60, N'Itu LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (61, N'Mbo LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (62, N'Mkpat Enin', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (63, N'Nsit Ibom LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (64, N'Nsit Ubium LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (65, N'Obot Akara LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (66, N'Okobo LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (67, N'Onna LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (68, N'Orukanam LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (69, N'Oron LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (70, N'Udung Uko LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (71, N'Ukanafun LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (72, N'Esit Eket LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (73, N'Uruan LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (74, N'Urue Offoung LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (75, N'Oruko Ete LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (76, N'Uyo. LGA', 4, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (77, N'Alkaleri LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (78, N'Bauchi LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (79, N'Bogoro LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (80, N'Darazo LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (81, N'Dass LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (82, N'Gamawa LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (83, N'Ganjuwa LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (84, N'Giade LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (85, N'Jama`are LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (86, N'Katagum LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (87, N'Kirfi LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (88, N'Misau LGA ', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (89, N'Ningi LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (90, N'Hira LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (91, N'Tafawa Balewa LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (92, N'Itas gadau LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (93, N'Toro LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (94, N'Warji LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (95, N'Zaki LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (96, N'Dambam. LGA', 5, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (97, N'Brass LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (98, N'Ekeremor LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (99, N'Kolok/Opokuma LGA', 6, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (100, N'Nembe LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (101, N'Ogbia LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (102, N'Sagbama LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (103, N'Southern Ijaw LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (104, N'Yenagoa LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (105, N'Membe. LGA', 6, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (106, N'Ador LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (107, N'Agatu LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (108, N'Apa LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (109, N'Buruku LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (110, N'Gboko LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (111, N'Guma LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (112, N'Gwer east LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (113, N'Gwer west LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (114, N'Kastina,-ala LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (115, N'Konshisha LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (116, N'Kwande LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (117, N'Logo LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (118, N'Makurdii LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (119, N'Obi LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (120, N'Ogbadibo LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (121, N'Ohimini LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (122, N'Oju LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (123, N'Okpokwu LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (124, N'Oturkpo LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (125, N'Tarka Ukum LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (126, N'Vandekya LGA', 7, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (127, N'Abadan LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (128, N'Askira/Uba LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (129, N'Bama LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (130, N'Bayo LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (131, N'Biu LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (132, N'Chibok LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (133, N'Damboa LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (134, N'Dikwagubio LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (135, N'Guzamala LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (136, N'Gwoza LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (137, N'Hawul LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (138, N'Jere LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (139, N'Kaga LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (140, N'Kalka/Balge LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (141, N'Konduga LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (142, N'Kukawa LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (143, N'Kwaya-ku LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (144, N'Mafa LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (145, N'Magumeri LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (146, N'Maiduguri LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (147, N'Marte LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (148, N'Mobbar LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (149, N'Monguno LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (150, N'Ngala LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (151, N'Nganzai LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (152, N'Shani. LGA', 8, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (153, N'Abia LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (154, N'Akampa LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (155, N'Akpabuyo LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (156, N'Bakassi LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (157, N'Bekwara LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (158, N'Biase LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (159, N'Boki LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (160, N'Calabar south LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (161, N'Etung LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (162, N'Ikom LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (163, N'Obanliku LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (164, N'Obubra LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (165, N'Obudu LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (166, N'Odukpani LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (167, N'Ogoja LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (168, N'Ugep north LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (169, N'Yala LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (170, N'Yarkur. LGA', 9, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (171, N'Aniocha south LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (172, N'Anioha LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (173, N'Bomadi LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (174, N'Burutu LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (175, N'Ethiope west LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (176, N'Ethiope east LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (177, N'Ika south LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (178, N'Ika north east LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (179, N'Isoko south LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (180, N'Isoko north LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (181, N'Ndokwa east LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (182, N'Ndokwa west LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (183, N'Okpe LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (184, N'Oshimili north LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (185, N'Oshimili south LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (186, N'Patani LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (187, N'Sapele LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (188, N'Udu LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (189, N'Ughelli south LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (190, N'Ughelli north LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (191, N'Ukwuani LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (192, N'Uviwie LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (193, N'Warri central LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (194, N'Warri north LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (195, N'Warri south. LGA', 10, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (196, N'Abakaliki LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (197, N'Afikpo south LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (198, N'Afikpo north LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (199, N'Ebonyi LGA', 11, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (200, N'Ezza LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (201, N'Ezza south LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (202, N'Ikwo LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (203, N'Ishielu LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (204, N'Ivo LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (205, N'Ohaozara LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (206, N'Ohaukwu LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (207, N'Onicha LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (208, N'Izzi. LGA', 11, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (209, N'Akoko-Edo LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (210, N'Egor LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (211, N'Essann east LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (212, N'Esan south east LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (213, N'Esan central LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (214, N'Esan west LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (215, N'Etsako central LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (216, N'Etsako east LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (217, N'Etsako LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (218, N'Orhionwon LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (219, N'Ivia north LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (220, N'Ovia south west LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (221, N'Owan west LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (222, N'Owan south LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (223, N'Uhunwonde. LGA', 12, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (224, N'Ado Ekiti LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (225, N'Effon Alaiye LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (226, N'Ekiti south west LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (227, N'Ekiti west LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (228, N'Ekiti east LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (229, N'Emure/ise LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (230, N'Orun LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (231, N'Ido LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (232, N'Osi LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (233, N'Ijero LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (234, N'Ikere LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (235, N'Ikole LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (236, N'Ilejemeje LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (237, N'Irepodun LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (238, N'Ise/Orun LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (239, N'Moba LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (240, N'Oye LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (241, N'Aiyekire. LGA', 13, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (242, N'Awgu LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (243, N'Aninri LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (244, N'Enugu east LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (245, N'Enugu south LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (246, N'Enugu north LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (247, N'Ezeagu LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (248, N'Igbo Eze north LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (249, N'Igbi etiti LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (250, N'Nsukka LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (251, N'Oji river LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (252, N'Undenu LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (253, N'Uzo Uwani LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (254, N'Udi. LGA', 14, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (255, N'Akko LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (256, N'Balanga LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (257, N'Billiri LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (258, N'Dukku LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (259, N'Dunakaye LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (260, N'Gombe LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (261, N'Kaltungo LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (262, N'Kwami LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (263, N'Nafada/Bajoga LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (264, N'Shomgom LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (265, N'Yamaltu/Deba. LGA', 15, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (266, N'Aboh-mbaise LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (267, N'Ahiazu-Mbaise LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (268, N'Ehime-Mbaino LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (269, N'Ezinhite LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (270, N'Ideato North LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (271, N'Ideato south LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (272, N'Ihitte/Uboma LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (273, N'Ikeduru LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (274, N'Isiala LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (275, N'Isu LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (276, N'Mbaitoli LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (277, N'Ngor Okpala LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (278, N'Njaba LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (279, N'Nwangele LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (280, N'Nkwere LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (281, N'Obowo LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (282, N'Aguta LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (283, N'Ohaji Egbema LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (284, N'Okigwe LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (285, N'Onuimo LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (286, N'Orlu LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (287, N'Orsu LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (288, N'Oru west LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (289, N'Oru LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (290, N'Owerri LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (291, N'Owerri North LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (292, N'Owerri south. LGA', 16, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (293, N'Auyo LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (294, N'Babura LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (295, N'Birnin- Kudu LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (296, N'Birniwa LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (297, N'Buji LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (298, N'Dute LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (299, N'Garki LGA', 17, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (300, N'Gagarawa LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (301, N'Gumel LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (302, N'Guri LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (303, N'Gwaram LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (304, N'Gwiwa LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (305, N'Hadeji LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (306, N'Jahun LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (307, N'Kafin-Hausa LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (308, N'Kaugama LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (309, N'Kazaure LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (310, N'Kirikisamma LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (311, N'Birnin-magaji LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (312, N'Maigatari LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (313, N'Malamaduri LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (314, N'Miga LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (315, N'Ringim LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (316, N'Roni LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (317, N'Sule Tankarka LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (318, N'Taura LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (319, N'Yankwasi. LGA', 17, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (320, N'Brnin Gwari LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (321, N'Chukun LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (322, N'Giwa LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (323, N'Kajuru LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (324, N'Igabi LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (325, N'Ikara LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (326, N'Jaba LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (327, N'Jema`a LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (328, N'Kachia LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (329, N'Kaduna North LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (330, N'Kaduna south LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (331, N'Kagarok LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (332, N'Kauru LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (333, N'Kabau LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (334, N'Kudan LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (335, N'Kere LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (336, N'Makarfi LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (337, N'Sabongari LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (338, N'Sanga LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (339, N'Soba LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (340, N'Zangon-Kataf LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (341, N'Zaria. LGA', 18, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (342, N'Abaji LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (343, N'Abuja Municipal LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (344, N'Bwari LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (345, N'Gwagwalada LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (346, N'Kuje LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (347, N'Kwali. LGA', 19, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (348, N'Ajigi LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (349, N'Albasu LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (350, N'Bagwai LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (351, N'Bebeji LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (352, N'Bichi LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (353, N'Bunkure LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (354, N'Dala LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (355, N'Dambatta LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (356, N'Dawakin kudu LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (357, N'Dawakin tofa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (358, N'Doguwa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (359, N'Fagge LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (360, N'Gabasawa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (361, N'Garko LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (362, N'Garun mallam LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (363, N'Gaya LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (364, N'Gezawa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (365, N'Gwale LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (366, N'Gwarzo LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (367, N'Kano LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (368, N'Karay LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (369, N'Kibiya LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (370, N'Kiru LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (371, N'Kumbtso LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (372, N'Kunch LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (373, N'Kura LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (374, N'Maidobi LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (375, N'Makoda LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (376, N'MInjibir Nassarawa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (377, N'Rano LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (378, N'Rimin LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (379, N'Gado LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (380, N'Rogo LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (381, N'Shanono LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (382, N'Sumaila LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (383, N'Takai LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (384, N'Tarauni LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (385, N'Tofa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (386, N'Tsanyawa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (387, N'Tudunwada LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (388, N'Ungogo LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (389, N'Warawa LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (390, N'Wudil. LGA', 20, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (391, N'Bakori LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (392, N'Batagarawa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (393, N'Batsari LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (394, N'Baure LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (395, N'Bindawa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (396, N'Charanchi LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (397, N'Dan- Musa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (398, N'Dandume LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (399, N'Danja LGA', 21, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (400, N'Daura LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (401, N'Dutsi LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (402, N'Dutsin `ma LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (403, N'Faskar LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (404, N'Funtua LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (405, N'Ingawa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (406, N'Jibiya LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (407, N'Kafur LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (408, N'Kaita LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (409, N'Kankara LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (410, N'Kankiya LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (411, N'Katsina LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (412, N'Furfi LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (413, N'Kusada LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (414, N'Mai aduwa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (415, N'Malumfashi LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (416, N'Mani LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (417, N'Mash LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (418, N'Matazu LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (419, N'Musawa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (420, N'Rimi LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (421, N'Sabuwa LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (422, N'Safana LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (423, N'Sandamu LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (424, N'Zango. LGA', 21, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (425, N'Aliero LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (426, N'Arewa Dandi LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (427, N'Argungu LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (428, N'Augie LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (429, N'Bagudo LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (430, N'Birnin Kebbi LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (431, N'Bunza LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (432, N'Dandi LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (433, N'Danko LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (434, N'Fakai LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (435, N'Gwandu LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (436, N'Jeda LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (437, N'Kalgo LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (438, N'Koko-besse LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (439, N'Maiyaama LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (440, N'Ngaski LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (441, N'Sakaba LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (442, N'Shanga LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (443, N'Suru LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (444, N'Wasugu LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (445, N'Yauri LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (446, N'Zuru. LGA', 22, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (447, N'Adavi LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (448, N'Ajaokuta LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (449, N'Ankpa LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (450, N'Bassa LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (451, N'Dekina LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (452, N'Yagba east LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (453, N'Ibaji LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (454, N'Idah LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (455, N'Igalamela LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (456, N'Ijumu LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (457, N'Kabba bunu LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (458, N'Kogi LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (459, N'Mopa muro LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (460, N'Ofu LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (461, N'Ogori magongo LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (462, N'Okehi LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (463, N'Okene LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (464, N'Olamaboro LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (465, N'Omala LGA', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (466, N'Yagba west LGA.', 23, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (467, N'Asa LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (468, N'Baruten LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (469, N'Edu LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (470, N'Ekiti LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (471, N'Ifelodun LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (472, N'Ilorin south LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (473, N'Ilorin west LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (474, N'Ilorin east LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (475, N'Irepodun LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (476, N'Isin LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (477, N'Kaiama LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (478, N'Moro LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (479, N'Offa LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (480, N'Oke ero LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (481, N'Oyun LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (482, N'Pategi. LGA', 24, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (483, N'Agege LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (484, N'Alimosho Ifelodun LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (485, N'Alimosho LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (486, N'Amuwo-Odofin LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (487, N'Apapa LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (488, N'Badagry LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (489, N'Epe LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (490, N'Eti-Osa LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (491, N'Ibeju- Lekki LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (492, N'Ifako/Ijaye LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (493, N'Ikeja LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (494, N'Ikorodu LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (495, N'Kosofe LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (496, N'Lagos Island LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (497, N'Lagos Mainland LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (498, N'Mushin LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (499, N'Ojo LGA', 25, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (500, N'Oshodi –Isolo LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (501, N'Shomolu LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (502, N'Surulere. LGA', 25, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (503, N'Akwanga LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (504, N'Awe LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (505, N'Doma LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (506, N'Karu LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (507, N'Keana LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (508, N'Keffi LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (509, N'Kokona LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (510, N'Lafia LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (511, N'Nassarawa LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (512, N'Nassarawa/Eggon LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (513, N'Obi LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (514, N'Toto LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (515, N'Wamba. LGA', 26, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (516, N'Agaie LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (517, N'Agwara LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (518, N'Bida LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (519, N'Borgu LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (520, N'Bosso LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (521, N'Chanchanga LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (522, N'Edati LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (523, N'Gbako LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (524, N'Gurara LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (525, N'Kitcha LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (526, N'Kontagora LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (527, N'Lapai LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (528, N'Lavun LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (529, N'Magama LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (530, N'Mariga LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (531, N'Mokwa LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (532, N'Moshegu LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (533, N'Muya LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (534, N'Paiko LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (535, N'Rafi LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (536, N'Shiroro LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (537, N'Suleija LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (538, N'Tawa-Wushishi. LGA', 27, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (539, N'Abeokuta south LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (540, N'Abeokuta north LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (541, N'Ado-odo/otta LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (542, N'Agbado south LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (543, N'Agbado north LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (544, N'Ewekoro LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (545, N'Idarapo LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (546, N'Ifo LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (547, N'Ijebu east LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (548, N'Ijebu north LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (549, N'Ikenne LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (550, N'Ilugun Alaro LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (551, N'Imeko afon LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (552, N'Ipokia LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (553, N'Obafemi/owode LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (554, N'Odeda LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (555, N'Odogbolu LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (556, N'Ogun waterside LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (557, N'Sagamu. LGA', 28, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (558, N'Akoko north LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (559, N'Akoko north east LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (560, N'Akoko south east LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (561, N'Akoko south LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (562, N'Akure northwest LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (563, N'Akure LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (564, N'Idanre LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (565, N'Ifedore LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (566, N'Ese odo LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (567, N'Ilaje LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (568, N'Ilaje oke-igbo LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (569, N'Irele LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (570, N'Odigbo LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (571, N'Okitipupa LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (572, N'Ondo LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (573, N'Ondo east LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (574, N'Ose LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (575, N'Owo. LGA', 29, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (576, N'Atakumosa west LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (577, N'Atakumosa east LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (578, N'Ayeda-ade LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (579, N'Ayedire LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (580, N'Bolawaduro LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (581, N'Boripe LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (582, N'Ede LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (583, N'Ede north LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (584, N'Egbedore LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (585, N'Ejigbo LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (586, N'Ife north LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (587, N'Ife central LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (588, N'Ife south LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (589, N'Ife east LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (590, N'Ifedayo LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (591, N'Ifelodun LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (592, N'Ilesha west LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (593, N'Ila- orangun LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (594, N'Ilesah east LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (595, N'Irepodun LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (596, N'Irewole LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (597, N'Isokan LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (598, N'Iwo LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (599, N'Obokun LGA', 30, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (600, N'Odo-otin LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (601, N'ola oluwa LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (602, N'olorunda LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (603, N'Oriade LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (604, N'Orolu LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (605, N'Osogbo. LGA', 30, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (606, N'Afijio LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (607, N'Akinyele LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (608, N'Atiba LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (609, N'Atigbo LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (610, N'Egbeda LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (611, N'Ibadan north east LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (612, N'Ibadan central LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (613, N'Ibadan south east LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (614, N'Ibadan west south LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (615, N'Ibarapa east LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (616, N'Ibarapa north LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (617, N'Ido LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (618, N'Ifedapo LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (619, N'Ifeloju LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (620, N'Irepo LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (621, N'Iseyin LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (622, N'Itesiwaju LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (623, N'Iwajowa LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (624, N'Iwajowa olorunshogo LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (625, N'Kajola LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (626, N'Lagelu LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (627, N'Ogbomosho north LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (628, N'Ogbomosho south LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (629, N'Ogo oluwa LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (630, N'Oluyole LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (631, N'Ona ara LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (632, N'Ore lope LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (633, N'Orire LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (634, N'Oyo east LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (635, N'Oyo west LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (636, N'Saki east LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (637, N'Saki west LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (638, N'Surulere. LGA', 31, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (639, N'Barkin/ladi LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (640, N'Bassa LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (641, N'Bokkos LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (642, N'Jos north LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (643, N'Jos east LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (644, N'Jos south LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (645, N'Kanam LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (646, N'Kiyom LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (647, N'Langtang north LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (648, N'Langtang south LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (649, N'Mangu LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (650, N'Mikang LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (651, N'Pankshin LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (652, N'Qua`an pan LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (653, N'Shendam LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (654, N'Wase. LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (655, N'RIVERS STATE ', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (656, N'Abua/Odial LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (657, N'Ahoada west LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (658, N'Akuku toru LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (659, N'Andoni LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (660, N'Asari toru LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (661, N'Bonny LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (662, N'Degema LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (663, N'Eleme LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (664, N'Emohua LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (665, N'Etche LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (666, N'Gokana LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (667, N'Ikwerre LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (668, N'Oyigbo LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (669, N'Khana LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (670, N'Obio/Akpor LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (671, N'Ogba east /Edon LGA i', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (672, N'Ogu/bolo LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (673, N'Okrika LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (674, N'Omumma LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (675, N'Opobo/Nkoro LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (676, N'Portharcourt LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (677, N'Tai. LGA', 32, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (678, N'Binji LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (679, N'Bodinga LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (680, N'Dange/shuni LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (681, N'Gada LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (682, N'Goronyo LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (683, N'Gudu LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (684, N'Gwadabaw LGA a', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (685, N'Illella LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (686, N'Kebbe LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (687, N'Kware LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (688, N'Rabah LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (689, N'Sabon –Birni LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (690, N'Shagari LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (691, N'Silame LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (692, N'Sokoto south LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (693, N'Sokoto north LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (694, N'Tambuwal LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (695, N'Tangaza LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (696, N'Tureta LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (697, N'Wamakko LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (698, N'Wurno LGA', 33, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (699, N'Yabo. LGA', 33, 0, NULL)
GO
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (700, N'Akdo –kola LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (701, N'Bali LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (702, N'Donga LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (703, N'Gashaka LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (704, N'Gassol LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (705, N'Ibi LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (706, N'Jalingo LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (707, N'K/Lamido LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (708, N'Kurmi LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (709, N'Lan LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (710, N'Sardauna LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (711, N'Tarum LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (712, N'Ussa LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (713, N'Wukari LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (714, N'Yorro LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (715, N'Zing. LGA', 34, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (716, N'Borsari LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (717, N'Damaturu LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (718, N'Fika LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (719, N'Fune LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (720, N'Geidam LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (721, N'Gogaram LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (722, N'Gujba LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (723, N'Gulani LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (724, N'Jakusko LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (725, N'Karasuwa LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (726, N'Machina LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (727, N'Nagere LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (728, N'Nguru LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (729, N'Potiskum LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (730, N'Tarmua LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (731, N'Yunusari LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (732, N'Yusufari LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (733, N'G ashua. LGA', 35, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (734, N'Anka LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (735, N'Bukkuyum LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (736, N'Dungudu LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (737, N'Chafe LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (738, N'Gummi LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (739, N'Gusau LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (740, N'Isa LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (741, N'Kaura/Namoda LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (742, N'Mradun LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (743, N'Maru LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (744, N'Shinkafi LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (745, N'Talata/Mafara LGA', 36, 0, NULL)
INSERT [dbo].[CityMaster] ([Id], [City], [StateId], [IsDeleted], [CustomerId]) VALUES (746, N'Zumi. LGA', 36, 0, NULL)
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
SET IDENTITY_INSERT [dbo].[CustomerMaster] ON 

INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (2, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (3, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (4, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (5, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (6, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (8, 0, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (9, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (10, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (11, 11, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (12, 12, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (13, 13, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (14, 14, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CustomerMaster] ([CustomerId], [EmployeeGIId], [LoginUserId], [OrgName], [Address], [PhoneNumber], [Email], [ContactPerson], [OrgLogoUrl], [CountryLogoIrl]) VALUES (1003, 1006, 1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerMaster] OFF
SET IDENTITY_INSERT [dbo].[EmployeeGI] ON 

INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1005, 210, N'NoName', N'18', 11, 12, N'Academic Staff', N'Mrs', N'32132132', N'1321321', N'321', N'Male', CAST(N'1999-08-20 00:00:00.000' AS DateTime), N'sdfafsd', N'Widowed', N'321', N'N/A', N'Akwa Ibom State ', N'Eket LGA', N'ASDFQF', N'Others', N'ASDFAS', CAST(N'2010-09-25 00:00:00.000' AS DateTime), N'ASDFQ', CAST(N'2006-10-30 00:00:00.000' AS DateTime), CAST(N'2017-10-29 00:00:00.000' AS DateTime), CAST(N'1998-11-30 00:00:00.000' AS DateTime), N'Library & Documentation Unit', N'Audit', NULL, NULL, NULL, N'IMG_22012018_130438_0.png', N'Kishi', N'Kenaf & Jute Improvement Program', N'Health Center ', 0, CAST(N'2018-09-23 00:00:00.000' AS DateTime), 14)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1, 1000, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'Mohit', N'Kr', N'Gurg', N'Male', CAST(N'2008-09-28 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'maiden Name', NULL, N'Jigawa State', N'Kaugama LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-13 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-14 00:00:00.000' AS DateTime), CAST(N'2038-09-13 17:08:54.037' AS DateTime), CAST(N'2018-09-13 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (2, 1001, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'Jon', NULL, N'Mac', N'Male', CAST(N'2013-09-28 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'Maiden Name', NULL, N'Akwa Ibom State ', N'Aguata LGA', N'Enter your home town', N'Islam', N'Please enter you contact home address', CAST(N'2018-09-13 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-14 00:00:00.000' AS DateTime), CAST(N'2038-09-13 17:44:41.293' AS DateTime), CAST(N'2018-09-13 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (3, 1002, N'NoName', N'1', 1, 1, N'Senior', N'Mrs.', N'Karishma', NULL, N'Tanna', N'Female', CAST(N'1988-09-19 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'Maiden', NULL, N'Anambra State', N'Anaocha LGA', N'Enter your home town', N'Others', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:13:54.483' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (4, 1003, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'Mohit', NULL, N'Gurg', N'Male', CAST(N'2006-04-22 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'maiden', NULL, N'Anambra State', N'Anambra West LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:31:04.903' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (5, 1004, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'asdfasdf', N'kjhgkjhg', N'ghkjhgkjh', N'Male', CAST(N'2018-12-29 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'safgsdfg', NULL, N'Adamawa State', N'Fufore LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:31:36.970' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (6, 1005, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'asdfasdf', N'asdfasdf', N'asdfasdf', N'Male', CAST(N'2017-10-29 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'asdfasdf', NULL, N'Abia State ', N'Aba North LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:47:51.103' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (8, 1006, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'3213', N'2132132132', N'131321321', N'Male', CAST(N'1990-12-31 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'fdasdfa', NULL, N'Abia State ', N'Aba North LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:50:08.890' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (9, 1007, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'3213', N'13213213', N'21321321', N'Male', CAST(N'2016-10-30 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'32131', NULL, N'Abia State ', N'Aba North LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:53:59.593' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (10, 1008, N'Rank1', N'1', 1, 1, N'Senior', N'Mr.', N'Mayank', N'Kr', N'Sahai', N'Male', CAST(N'2017-11-30 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'MaidenName', NULL, N'Abia State ', N'Aba North LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 10:56:07.000' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (11, 1009, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'Rohit', N'Gor', N'Maliyya', N'Male', CAST(N'1988-03-23 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'Hindi Maiden', NULL, N'Akwa Ibom State ', N'Aguata LGA', N'Enter your home town', N'Others', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 23:39:52.650' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (12, 1010, N'NoName', N'1', 1, 1, N'Senior', N'Dr.', N'Ro', N'Go', N'Ma', N'Other', CAST(N'1982-03-13 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'ASDFASDF', NULL, N'Benue State', N'Buruku LGA', N'Enter your home town', N'Others', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 23:41:33.630' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (13, 1011, N'NoName', N'1', 1, 1, N'Senior', N'Dr.', N'Ro', N'Go', N'Ma', N'Other', CAST(N'1982-03-13 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'ASDFASDF', NULL, N'Benue State', N'Umuahia LGA', N'Enter your home town', N'Others', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 23:42:16.890' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (14, 1012, N'Rank1', N'1', 1, 1, N'Senior', N'Mr.', N'R.R.', N'Intitute Of Modern', N'Technology', N'Male', CAST(N'2002-07-20 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'B_Tech Form', NULL, N'Akwa Ibom State ', N'Aba North LGA', N'Enter your home town', N'Christian', N'Please enter you contact home address', CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-16 00:00:00.000' AS DateTime), CAST(N'2038-09-15 23:43:32.000' AS DateTime), CAST(N'2018-09-15 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1004, 5000, N'NoName', N'1', 2, 3, N'Academic Staff', N'Mr', N'321', N'321', N'321', N'Female', CAST(N'1997-06-19 00:00:00.000' AS DateTime), N'546545', N'Married', N'321', N'4654', N'Adamawa State', N'Fufore LGA', N'654564', N'Islam', N'654456', CAST(N'2017-10-29 00:00:00.000' AS DateTime), N'56565', CAST(N'2014-12-30 00:00:00.000' AS DateTime), CAST(N'2018-12-30 00:00:00.000' AS DateTime), CAST(N'2014-12-30 00:00:00.000' AS DateTime), N'Library & Documentation Unit', N'Audit', NULL, NULL, NULL, N'IMG_22012018_130438_0.png', N'Ikenne', N'Land & Water Resources Management Program', N'Physical Plant & Services Unit', 0, CAST(N'2018-09-23 00:00:00.000' AS DateTime), 14)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1003, 9990, N'NoName', N'20', 15, 13, N'Non-Academic Senior Staff', N'Mrs', N'Ank', N'kki', N'sa', N'Male', CAST(N'1996-09-23 00:00:00.000' AS DateTime), N'Lko', N'Married', N'Rek', N'Sh', N'Abia State ', N'Aba North LGA', N'Lko', N'Christian', N'asdf', CAST(N'2008-10-28 00:00:00.000' AS DateTime), N'asdf', CAST(N'2011-10-30 00:00:00.000' AS DateTime), CAST(N'2013-10-29 00:00:00.000' AS DateTime), CAST(N'2010-05-28 00:00:00.000' AS DateTime), N'Biotech Unit', N'Audit', NULL, NULL, NULL, N'2018-06-08.png', N'Amakama', N'Kenaf & Jute Improvement Program', N'Health Center ', 0, CAST(N'2018-09-23 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[EmployeeGI] ([EmployeeGIId], [EmployeeCode], [Rank], [File_No], [Grade_Level], [Step], [Cadre], [Title], [First_Name], [Middle_Name], [Surname], [Sex], [DateOfBirth], [PlaceOfBirth], [Marital_Status], [Maiden_Name], [Spouse_Name], [StateOfOrigin], [LGA], [Home_Town], [Religion], [ContactHomeAddress], [FirstAppointmentDate], [FirstAppointmentLocation], [ConfirmationDate], [DateOfRetirement], [LastPromotionDate], [Unit_Research], [Section], [LeaveDays], [Leave_fromDate], [Leave_ToDate], [EmployeePhoto], [StationOfDeployment], [Programmes], [Unit_Services], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1006, 9991, N'NoName', N'1', 1, 1, N'Senior', N'Mr.', N'OrgName', N'phone', N'email', N'Male', CAST(N'2013-11-28 00:00:00.000' AS DateTime), N'Fill your place of birth', N'Single', N'mname', NULL, N'Anambra State', N'Aguata LGA', N'Enter your home town', N'Others', N'Please enter you contact home address', CAST(N'2018-09-23 00:00:00.000' AS DateTime), N'Please fill appointment location', CAST(N'2018-09-24 00:00:00.000' AS DateTime), CAST(N'2038-09-23 13:16:56.967' AS DateTime), CAST(N'2018-09-23 00:00:00.000' AS DateTime), N'Information Technology Unit', N'Admin', NULL, NULL, NULL, NULL, N'Ibadan', NULL, NULL, NULL, NULL, 1003)
SET IDENTITY_INSERT [dbo].[EmployeeGI] OFF
SET IDENTITY_INSERT [dbo].[PFAMaster] ON 

INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'AIICO Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'APT Pension Fund Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'ARM Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'AXA Mansard Pension Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Fidelity Pension Managers', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'First Guarantee Pension Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Investment One Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Leadway Pensure PFA Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Legacy Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'NPF Pensions Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'OAK Pensions Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Pensions Alliance Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Premium Pension Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Sigma Pensions Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-13 17:08:55.577' AS DateTime), 0, 1)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'AIICO Pension Managers Limited', CAST(N'2018-09-13 17:44:45.717' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'APT Pension Fund Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'ARM Pension Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'AXA Mansard Pension Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Fidelity Pension Managers', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'First Guarantee Pension Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Investment One Pension Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Leadway Pensure PFA Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Legacy Pension Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'NPF Pensions Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'OAK Pensions Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Pensions Alliance Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Premium Pension Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Sigma Pensions Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (40, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-13 17:44:45.720' AS DateTime), 0, 2)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (41, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (42, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (43, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (44, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (45, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (46, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (47, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (48, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (49, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (50, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (51, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (52, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (53, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (54, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (55, N'NPF Pensions Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (56, N'OAK Pensions Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (57, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (58, N'Premium Pension Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (59, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (60, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:13:55.653' AS DateTime), 0, 3)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (61, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (62, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (63, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (64, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (65, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (66, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (67, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (68, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (69, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (70, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (71, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (72, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (73, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (74, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (75, N'NPF Pensions Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (76, N'OAK Pensions Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (77, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (78, N'Premium Pension Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (79, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (80, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (81, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (82, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (83, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (84, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (85, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (86, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (87, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (88, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (89, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (90, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (91, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (92, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (93, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (94, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (95, N'NPF Pensions Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (96, N'OAK Pensions Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (97, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (98, N'Premium Pension Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (99, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
GO
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (100, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (101, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (102, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (103, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (104, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (105, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (106, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (107, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (108, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (109, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (110, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (111, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (112, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (113, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (114, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (115, N'NPF Pensions Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (116, N'OAK Pensions Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (117, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (118, N'Premium Pension Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (119, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (120, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:48:00.883' AS DateTime), 0, 6)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (121, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (122, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (123, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (124, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (125, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (126, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (127, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (128, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (129, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (130, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (131, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (132, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (133, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (134, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (135, N'NPF Pensions Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (136, N'OAK Pensions Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (137, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (138, N'Premium Pension Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (139, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (140, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (141, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (142, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (143, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (144, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (145, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (146, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (147, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (148, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (149, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (150, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (151, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (152, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (153, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (154, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (155, N'NPF Pensions Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (156, N'OAK Pensions Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (157, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (158, N'Premium Pension Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (159, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (160, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (161, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (162, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (163, N'ARM Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (164, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (165, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (166, N'Fidelity Pension Managers', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (167, N'First Guarantee Pension Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (168, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (169, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (170, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (171, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (172, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (173, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (174, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (175, N'NPF Pensions Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (176, N'OAK Pensions Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (177, N'Pensions Alliance Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (178, N'Premium Pension Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (179, N'Sigma Pensions Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (180, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (181, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (182, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (183, N'ARM Pension Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (184, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (185, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (186, N'Fidelity Pension Managers', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (187, N'First Guarantee Pension Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (188, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (189, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (190, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (191, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (192, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (193, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (194, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (195, N'NPF Pensions Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (196, N'OAK Pensions Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (197, N'Pensions Alliance Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (198, N'Premium Pension Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (199, N'Sigma Pensions Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
GO
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (200, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 23:39:53.387' AS DateTime), 0, 11)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (201, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (202, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (203, N'ARM Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (204, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (205, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (206, N'Fidelity Pension Managers', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (207, N'First Guarantee Pension Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (208, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (209, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (210, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (211, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (212, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (213, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (214, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (215, N'NPF Pensions Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (216, N'OAK Pensions Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (217, N'Pensions Alliance Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (218, N'Premium Pension Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (219, N'Sigma Pensions Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (220, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (221, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (222, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (223, N'ARM Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (224, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (225, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (226, N'Fidelity Pension Managers', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (227, N'First Guarantee Pension Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (228, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (229, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (230, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (231, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (232, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (233, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (234, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (235, N'NPF Pensions Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (236, N'OAK Pensions Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (237, N'Pensions Alliance Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (238, N'Premium Pension Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (239, N'Sigma Pensions Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (240, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (241, N'AIICO Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (242, N'APT Pension Fund Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (243, N'ARM Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (244, N'AXA Mansard Pension Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (245, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (246, N'Fidelity Pension Managers', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (247, N'First Guarantee Pension Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (248, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (249, N'Investment One Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (250, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (251, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (252, N'Leadway Pensure PFA Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (253, N'Legacy Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (254, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (255, N'NPF Pensions Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (256, N'OAK Pensions Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (257, N'Pensions Alliance Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (258, N'Premium Pension Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (259, N'Sigma Pensions Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (260, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1041, N'AIICO Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1042, N'APT Pension Fund Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1043, N'ARM Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1044, N'AXA Mansard Pension Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1045, N'Crusader Sterling Pensions Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1046, N'Fidelity Pension Managers', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1047, N'First Guarantee Pension Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1048, N'Future Unity Glanvils Pensions Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1049, N'Investment One Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1050, N'IEI-Anchor Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1051, N'IGI Pension Fund Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1052, N'Leadway Pensure PFA Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1053, N'Legacy Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1054, N'NLPC Pension Fund Administrators Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1055, N'NPF Pensions Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1056, N'OAK Pensions Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1057, N'Pensions Alliance Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1058, N'Premium Pension Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1059, N'Sigma Pensions Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
INSERT [dbo].[PFAMaster] ([PFAId], [PFAName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1060, N'Stanbic IBTC Pension Managers Limited', CAST(N'2018-09-23 13:16:57.953' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[PFAMaster] OFF
SET IDENTITY_INSERT [dbo].[ProgrammeMaster] ON 

INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Land & Water Resources Management Program', CAST(N'2018-09-13 17:08:55.553' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'South West Farming Systems & Extension Program', CAST(N'2018-09-13 17:08:55.557' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-13 17:08:55.557' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-13 17:08:55.557' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-13 17:08:55.557' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Product Development Program', CAST(N'2018-09-13 17:08:55.557' AS DateTime), 0, 1)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Land & Water Resources Management Program', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'South West Farming Systems & Extension Program', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Product Development Program', CAST(N'2018-09-13 17:44:45.687' AS DateTime), 0, 2)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Product Development Program', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Product Development Program', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Product Development Program', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Product Development Program', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (40, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (41, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (42, N'Product Development Program', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (43, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (44, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (45, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (46, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (47, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (48, N'Product Development Program', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (49, N'Land & Water Resources Management Program', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (50, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (51, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (52, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (53, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (54, N'Product Development Program', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (55, N'Land & Water Resources Management Program', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (56, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (57, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (58, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (59, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (60, N'Product Development Program', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (61, N'Land & Water Resources Management Program', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (62, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (63, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (64, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (65, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (66, N'Product Development Program', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (67, N'Land & Water Resources Management Program', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (68, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (69, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (70, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (71, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (72, N'Product Development Program', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (73, N'Land & Water Resources Management Program', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (74, N'South West Farming Systems & Extension Program', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (75, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (76, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (77, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (78, N'Product Development Program', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1013, N'Land & Water Resources Management Program', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1014, N'South West Farming Systems & Extension Program', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1015, N'Kenaf & Jute Improvement Program', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1016, N'Maize Improvement Program for Southern Ecologies', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1017, N'Trypanotolerant Livestock Improvement Program', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
INSERT [dbo].[ProgrammeMaster] ([ProgrammeId], [ProgrammeName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1018, N'Product Development Program', CAST(N'2018-09-23 13:16:57.940' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[ProgrammeMaster] OFF
SET IDENTITY_INSERT [dbo].[RankMaster] ON 

INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'NoName', N'', CAST(N'2018-09-13 17:08:55.540' AS DateTime), 0, 1)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'NoName', N'', CAST(N'2018-09-13 17:44:45.613' AS DateTime), 0, 2)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'NoName', N'', CAST(N'2018-09-15 10:13:55.640' AS DateTime), 0, 3)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'NoName', N'', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'NoName', N'', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'NoName', N'', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'NoName', N'', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'NoName', N'', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'NoName', N'', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'NoName', N'', CAST(N'2018-09-15 23:39:53.373' AS DateTime), 0, 11)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'NoName', N'', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'NoName', N'', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'NoName', N'', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[RankMaster] ([RankId], [RankName], [RankDescription], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1003, N'NoName', N'', CAST(N'2018-09-23 13:16:57.933' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[RankMaster] OFF
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 

INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1, N'Admin', N'for Admin only', NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (2, N'Mid Level Admin', N'middle level', NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (3, N'Low Level Admin', N'low level admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (4, N'Employee', N'for Employee', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
SET IDENTITY_INSERT [dbo].[SectionMaster] ON 

INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-13 17:08:55.567' AS DateTime), 0, 1)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Bursary', CAST(N'2018-09-13 17:08:55.567' AS DateTime), 0, 1)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Audit', CAST(N'2018-09-13 17:08:55.567' AS DateTime), 0, 1)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-13 17:44:45.710' AS DateTime), 0, 2)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Bursary', CAST(N'2018-09-13 17:44:45.710' AS DateTime), 0, 2)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Audit', CAST(N'2018-09-13 17:44:45.710' AS DateTime), 0, 2)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Bursary', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Audit', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, 3)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Bursary', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Audit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Bursary', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Audit', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, 5)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Bursary', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Audit', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, 6)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Bursary', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Audit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Bursary', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Audit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Bursary', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Audit', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, 10)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Bursary', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Audit', CAST(N'2018-09-15 23:39:53.383' AS DateTime), 0, 11)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Bursary', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Audit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Bursary', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Audit', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Bursary', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Audit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1007, N'Admin (Senior Staff matters, Junior Staff Matters, Corporate Services Unit and Staff Records and Statistics Unit)', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1008, N'Bursary', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
INSERT [dbo].[SectionMaster] ([SectionId], [SectionName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1009, N'Audit', CAST(N'2018-09-23 13:16:57.950' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[SectionMaster] OFF
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (1, N'Abia State ', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (2, N'Adamawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (3, N'Anambra State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (4, N'Akwa Ibom State ', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (5, N'Bauchi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (6, N'Bayelsa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (7, N'Benue State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (8, N'Borno State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (9, N'Cross River State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (10, N'Delta State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (11, N'Ebonyi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (12, N'EDO State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (13, N'Ekiti State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (14, N'Enugu State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (15, N'Gombe State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (16, N'IMO State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (17, N'Jigawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (18, N'Kaduna State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (19, N'Federal Capital Territory', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (20, N'Kano State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (21, N'Kastina State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (22, N'Kebbi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (23, N'Kogi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (24, N'Kwara State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (25, N'Lagos State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (26, N'Nassarawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (27, N'Niger State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (28, N'Ogun State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (29, N'Ondo State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (30, N'Osun State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (31, N'Oyo State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (32, N'Plateau State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (33, N'Sokoto State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (34, N'Taraba State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (35, N'Yobe State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (36, N'Zamfara State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (37, N'Abia State ', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (38, N'Adamawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (39, N'Anambra State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (40, N'Akwa Ibom State ', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (41, N'Bauchi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (42, N'Bayelsa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (43, N'Benue State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (44, N'Borno State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (45, N'Cross River State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (46, N'Delta State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (47, N'Ebonyi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (48, N'EDO State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (49, N'Ekiti State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (50, N'Enugu State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (51, N'Gombe State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (52, N'IMO State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (53, N'Jigawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (54, N'Kaduna State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (55, N'Federal Capital Territory', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (56, N'Kano State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (57, N'Kastina State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (58, N'Kebbi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (59, N'Kogi State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (60, N'Kwara State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (61, N'Lagos State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (62, N'Nassarawa State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (63, N'Niger State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (64, N'Ogun State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (65, N'Ondo State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (66, N'Osun State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (67, N'Oyo State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (68, N'Plateau State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (69, N'Sokoto State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (70, N'Taraba State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (71, N'Yobe State', 0, NULL)
INSERT [dbo].[StateMaster] ([Id], [State], [IsDeleted], [CustomerId]) VALUES (72, N'Zamfara State', 0, NULL)
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
SET IDENTITY_INSERT [dbo].[StationMaster] ON 

INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Ibadan', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Ikenne', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Amakama', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Ile-Ife', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Ballah', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Kishi', CAST(N'2018-09-13 11:56:09.813' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Ibadan', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Ikenne', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Amakama', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Ile-Ife', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Ballah', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Kishi', CAST(N'2018-09-13 11:58:43.260' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Ibadan', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Ikenne', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Amakama', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Ile-Ife', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Ballah', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Kishi', CAST(N'2018-09-13 12:21:07.787' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Ibadan', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Ikenne', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Amakama', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Ile-Ife', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Ballah', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Kishi', CAST(N'2018-09-13 13:27:43.847' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Ibadan', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Ikenne', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Amakama', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Ile-Ife', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Ballah', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Kishi', CAST(N'2018-09-13 13:33:54.167' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Ibadan', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Ikenne', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Amakama', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Ile-Ife', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Ballah', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Kishi', CAST(N'2018-09-13 13:34:20.297' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Ibadan', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Ikenne', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Amakama', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (40, N'Ile-Ife', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (41, N'Ballah', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (42, N'Kishi', CAST(N'2018-09-13 13:56:02.637' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (43, N'Ibadan', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (44, N'Ikenne', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (45, N'Amakama', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (46, N'Ile-Ife', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (47, N'Ballah', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (48, N'Kishi', CAST(N'2018-09-13 13:57:32.990' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (49, N'Ibadan', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (50, N'Ikenne', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (51, N'Amakama', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (52, N'Ile-Ife', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (53, N'Ballah', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (54, N'Kishi', CAST(N'2018-09-13 13:59:24.920' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (55, N'Ibadan', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (56, N'Ikenne', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (57, N'Amakama', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (58, N'Ile-Ife', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (59, N'Ballah', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (60, N'Kishi', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (61, N'Ibadan', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (62, N'Ikenne', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (63, N'Amakama', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (64, N'Ile-Ife', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (65, N'Ballah', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (66, N'Kishi', CAST(N'2018-09-13 17:44:45.707' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (67, N'Ibadan', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (68, N'Ikenne', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (69, N'Amakama', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (70, N'Ile-Ife', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (71, N'Ballah', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (72, N'Kishi', CAST(N'2018-09-15 10:13:55.650' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (73, N'Ibadan', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (74, N'Ikenne', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (75, N'Amakama', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (76, N'Ile-Ife', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (77, N'Ballah', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (78, N'Kishi', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (79, N'Ibadan', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (80, N'Ikenne', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (81, N'Amakama', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (82, N'Ile-Ife', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (83, N'Ballah', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (84, N'Kishi', CAST(N'2018-09-15 10:31:39.010' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (85, N'Ibadan', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (86, N'Ikenne', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (87, N'Amakama', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (88, N'Ile-Ife', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (89, N'Ballah', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (90, N'Kishi', CAST(N'2018-09-15 10:48:00.880' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (91, N'Ibadan', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (92, N'Ikenne', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (93, N'Amakama', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (94, N'Ile-Ife', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (95, N'Ballah', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (96, N'Kishi', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (97, N'Ibadan', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (98, N'Ikenne', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (99, N'Amakama', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
GO
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (100, N'Ile-Ife', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (101, N'Ballah', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (102, N'Kishi', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (103, N'Ibadan', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (104, N'Ikenne', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (105, N'Amakama', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (106, N'Ile-Ife', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (107, N'Ballah', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (108, N'Kishi', CAST(N'2018-09-15 10:56:08.027' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (109, N'Ibadan', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (110, N'Ikenne', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (111, N'Amakama', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (112, N'Ile-Ife', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (113, N'Ballah', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (114, N'Kishi', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (115, N'Ibadan', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (116, N'Ikenne', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (117, N'Amakama', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (118, N'Ile-Ife', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (119, N'Ballah', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (120, N'Kishi', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (121, N'Ibadan', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (122, N'Ikenne', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (123, N'Amakama', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (124, N'Ile-Ife', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (125, N'Ballah', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (126, N'Kishi', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (127, N'Ibadan', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (128, N'Ikenne', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (129, N'Amakama', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (130, N'Ile-Ife', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (131, N'Ballah', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (132, N'Kishi', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1067, N'Ibadan', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1068, N'Ikenne', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1069, N'Amakama', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1070, N'Ile-Ife', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1071, N'Ballah', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
INSERT [dbo].[StationMaster] ([StationId], [StationName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1072, N'Kishi', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[StationMaster] OFF
SET IDENTITY_INSERT [dbo].[SuperAdmin] ON 

INSERT [dbo].[SuperAdmin] ([Id], [LoginName], [Password], [Name], [Email], [Phone]) VALUES (1, N'SuperAdmin', N'SuperAdmin', N'Super Admin', N'superAdmin@iart.com', N'9415151515')
SET IDENTITY_INSERT [dbo].[SuperAdmin] OFF
SET IDENTITY_INSERT [dbo].[UnitResearchMaster] ON 

INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Information Technology Unit', CAST(N'2018-09-13 17:08:55.560' AS DateTime), 0, 1)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Library & Documentation Unit', CAST(N'2018-09-13 17:08:55.560' AS DateTime), 0, 1)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Biotech Unit', CAST(N'2018-09-13 17:08:55.560' AS DateTime), 0, 1)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-13 17:08:55.560' AS DateTime), 0, 1)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Crop Production Unit', CAST(N'2018-09-13 17:08:55.560' AS DateTime), 0, 1)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Information Technology Unit', CAST(N'2018-09-13 17:44:45.693' AS DateTime), 0, 2)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Library & Documentation Unit', CAST(N'2018-09-13 17:44:45.693' AS DateTime), 0, 2)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Biotech Unit', CAST(N'2018-09-13 17:44:45.693' AS DateTime), 0, 2)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-13 17:44:45.693' AS DateTime), 0, 2)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Crop Production Unit', CAST(N'2018-09-13 17:44:45.693' AS DateTime), 0, 2)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Information Technology Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Library & Documentation Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Biotech Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Crop Production Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Information Technology Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Library & Documentation Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Biotech Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Crop Production Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Information Technology Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Library & Documentation Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Biotech Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Crop Production Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Information Technology Unit', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Library & Documentation Unit', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Biotech Unit', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Crop Production Unit', CAST(N'2018-09-15 10:48:00.873' AS DateTime), 0, 6)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Information Technology Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Library & Documentation Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Biotech Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Crop Production Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Information Technology Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Library & Documentation Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Biotech Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (40, N'Crop Production Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (41, N'Information Technology Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (42, N'Library & Documentation Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (43, N'Biotech Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (44, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (45, N'Crop Production Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (46, N'Information Technology Unit', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (47, N'Library & Documentation Unit', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (48, N'Biotech Unit', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (49, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (50, N'Crop Production Unit', CAST(N'2018-09-15 23:39:53.377' AS DateTime), 0, 11)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (51, N'Information Technology Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (52, N'Library & Documentation Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (53, N'Biotech Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (54, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (55, N'Crop Production Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (56, N'Information Technology Unit', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (57, N'Library & Documentation Unit', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (58, N'Biotech Unit', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (59, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (60, N'Crop Production Unit', CAST(N'2018-09-15 23:42:16.957' AS DateTime), 0, 13)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (61, N'Information Technology Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (62, N'Library & Documentation Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (63, N'Biotech Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (64, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (65, N'Crop Production Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1011, N'Information Technology Unit', CAST(N'2018-09-23 13:16:57.943' AS DateTime), 0, 1003)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1012, N'Library & Documentation Unit', CAST(N'2018-09-23 13:16:57.943' AS DateTime), 0, 1003)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1013, N'Biotech Unit', CAST(N'2018-09-23 13:16:57.943' AS DateTime), 0, 1003)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1014, N'Agricultural& Environmental Engineering unit', CAST(N'2018-09-23 13:16:57.943' AS DateTime), 0, 1003)
INSERT [dbo].[UnitResearchMaster] ([UnitResearchId], [UnitResearchName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1015, N'Crop Production Unit', CAST(N'2018-09-23 13:16:57.943' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[UnitResearchMaster] OFF
SET IDENTITY_INSERT [dbo].[UnitServicesMaster] ON 

INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1, N'Physical Plant & Services Unit', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, 1)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (2, N'Transport & Maintenance Unit', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, 1)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (3, N'Health Center ', CAST(N'2018-09-13 17:08:55.563' AS DateTime), 0, 1)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (4, N'Physical Plant & Services Unit', CAST(N'2018-09-13 17:44:45.697' AS DateTime), 0, 2)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (5, N'Transport & Maintenance Unit', CAST(N'2018-09-13 17:44:45.703' AS DateTime), 0, 2)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (6, N'Health Center ', CAST(N'2018-09-13 17:44:45.703' AS DateTime), 0, 2)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (7, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (8, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (9, N'Health Center ', CAST(N'2018-09-15 10:13:55.647' AS DateTime), 0, 3)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (10, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (11, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (12, N'Health Center ', CAST(N'2018-09-15 10:31:06.750' AS DateTime), 0, 4)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (13, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (14, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (15, N'Health Center ', CAST(N'2018-09-15 10:31:39.007' AS DateTime), 0, 5)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (16, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:48:00.877' AS DateTime), 0, 6)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (17, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:48:00.877' AS DateTime), 0, 6)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (18, N'Health Center ', CAST(N'2018-09-15 10:48:00.877' AS DateTime), 0, 6)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (19, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (20, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (21, N'Health Center ', CAST(N'2018-09-15 10:53:18.697' AS DateTime), 0, 8)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (22, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (23, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (24, N'Health Center ', CAST(N'2018-09-15 10:54:48.117' AS DateTime), 0, 9)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (25, N'Physical Plant & Services Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (26, N'Transport & Maintenance Unit', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (27, N'Health Center ', CAST(N'2018-09-15 10:56:08.023' AS DateTime), 0, 10)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (28, N'Physical Plant & Services Unit', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, 11)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (29, N'Transport & Maintenance Unit', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, 11)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (30, N'Health Center ', CAST(N'2018-09-15 23:39:53.380' AS DateTime), 0, 11)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (31, N'Physical Plant & Services Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (32, N'Transport & Maintenance Unit', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (33, N'Health Center ', CAST(N'2018-09-15 23:41:34.107' AS DateTime), 0, 12)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (34, N'Physical Plant & Services Unit', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (35, N'Transport & Maintenance Unit', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (36, N'Health Center ', CAST(N'2018-09-15 23:42:16.960' AS DateTime), 0, 13)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (37, N'Physical Plant & Services Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (38, N'Transport & Maintenance Unit', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (39, N'Health Center ', CAST(N'2018-09-15 23:43:32.547' AS DateTime), 0, 14)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1007, N'Physical Plant & Services Unit', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, 1003)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1008, N'Transport & Maintenance Unit', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, 1003)
INSERT [dbo].[UnitServicesMaster] ([UnitServicesId], [UnitServicesName], [CreatedDate], [IsDeleted], [CustomerId]) VALUES (1009, N'Health Center ', CAST(N'2018-09-23 13:16:57.947' AS DateTime), 0, 1003)
SET IDENTITY_INSERT [dbo].[UnitServicesMaster] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1, 1000, N'Update Your Mail Id', N'1000', N'Pwd1000', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (2, 1001, N'Update Your Mail Id', N'1001', N'Pwd1001', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (3, 1002, N'Update Your Mail Id', N'1002', N'Pwd1002', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (4, 1003, N'Update Your Mail Id', N'1003', N'Pwd1003', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (5, 1003, N'Update Your Mail Id', N'1003', N'Pwd1003', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (6, 1004, N'Update Your Mail Id', N'1004', N'Pwd1004', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (7, 1005, N'Update Your Mail Id', N'1005', N'Pwd1005', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (8, 1005, N'Update Your Mail Id', N'1005', N'Pwd1005', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (9, 1005, N'Update Your Mail Id', N'1005', N'Pwd1005', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (10, 1006, N'Update Your Mail Id', N'1006', N'Pwd1006', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (11, 1006, N'Update Your Mail Id', N'1006', N'Pwd1006', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (12, 1007, N'Update Your Mail Id', N'1007', N'Pwd1007', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (13, 1008, N'Update Your Mail Id', N'1008', N'Pwd1008', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (14, 1009, N'Update Your Mail Id', N'1009', N'Pwd1009', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (15, 1010, N'Update Your Mail Id', N'1010', N'Pwd1010', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (16, 1011, N'Update Your Mail Id', N'1011', N'Pwd1011', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (17, 1012, N'Update Your Mail Id', N'1012', N'Pwd1012', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[UserMaster] ([UserId], [EmployeeCode], [EmailId], [UserName], [Password], [RoleId], [RoleName], [UserKeyId], [OrganizationName], [IsActive], [LastLoginDate], [IsDeleted], [CreatedDate], [CustomerId]) VALUES (1003, 9991, N'Update Your Mail Id', N'9991', N'Pwd9991', 1, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 1003)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
/****** Object:  Index [UQ__CrivVouc__FBDF78E8ED0DAB2A]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[CrivVoucher] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ItemMast__FBDF78E8914CDB09]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[ItemMaster] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Purchase__FBDF78E8019A33EA]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StatusMa__FBDF78E8F9E1BBD4]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StatusMaster] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StockMas__FBDF78E8549F462E]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StockMaster] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StoreCre__FBDF78E844838460]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StoreCreditVoucher] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StoreGat__FBDF78E8ED589E6B]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StoreGateVoucher] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StoreMas__FBDF78E8080E4F42]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StoreMaster] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StoreRec__FBDF78E8BBF59EA9]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StoreReciptVoucher] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StoreTal__FBDF78E854543BAD]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[StoreTallyVoucher] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__VendorMa__FBDF78E877485FBF]    Script Date: 23-09-2018 22:53:09 ******/
ALTER TABLE [dbo].[VendorMaster] ADD UNIQUE NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnnualLeave] ADD  CONSTRAINT [DF_AnnualLeave_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AnnualLeave] ADD  CONSTRAINT [DF_AnnualLeave_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CasualLeave] ADD  CONSTRAINT [DF_CasualLeave_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CasualLeave] ADD  CONSTRAINT [DF_CasualLeave_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CentralStores] ADD  CONSTRAINT [DF_CentralStores_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CentralStores] ADD  CONSTRAINT [DF_CentralStores_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ChemicalStores] ADD  CONSTRAINT [DF_ChemicalStores_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ChemicalStores] ADD  CONSTRAINT [DF_ChemicalStores_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ClassMaster] ADD  CONSTRAINT [DF_ClassMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ClassMaster] ADD  CONSTRAINT [DF_ClassMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[COUNTRYLIST] ADD  DEFAULT (NULL) FOR [ISO3]
GO
ALTER TABLE [dbo].[COUNTRYLIST] ADD  DEFAULT (NULL) FOR [NUMCODE]
GO
ALTER TABLE [dbo].[CrivVoucher] ADD  CONSTRAINT [DF_CrivVoucher_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FertilizerStores] ADD  CONSTRAINT [DF_FertilizerStores_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FertilizerStores] ADD  CONSTRAINT [DF_FertilizerStores_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[GraduateAttachmentForm] ADD  CONSTRAINT [DF_GraduateAttachmentForm_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GraduateAttachmentForm] ADD  CONSTRAINT [DF_GraduateAttachmentForm_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LeaveRoasterJuniorStaff] ADD  CONSTRAINT [DF_LeaveRoasterJuniorStaff_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[LeaveRoasterJuniorStaff] ADD  CONSTRAINT [DF_LeaveRoasterJuniorStaff_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Table_1_CreatedDate]  DEFAULT (getdate()) FOR [LoginDate]
GO
ALTER TABLE [dbo].[NyscFinalClearance] ADD  CONSTRAINT [DF_NyscFinalClearance_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NyscFinalClearance] ADD  CONSTRAINT [DF_NyscFinalClearance_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[NyscMonthlyClearance] ADD  CONSTRAINT [DF_NyscClearance_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NyscMonthlyClearance] ADD  CONSTRAINT [DF_NyscClearance_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[PrequalificationScoring] ADD  CONSTRAINT [DF_PrequalificationScoring_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PrequalificationScoring] ADD  CONSTRAINT [DF_PrequalificationScoring_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[StationaryStores] ADD  CONSTRAINT [DF_StationaryStores_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StationaryStores] ADD  CONSTRAINT [DF_StationaryStores_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[StoreCreditVoucher] ADD  CONSTRAINT [DF_StoreCreditVoucher_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoreMaster] ADD  CONSTRAINT [DF_StoreMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoreReciptVoucher] ADD  CONSTRAINT [DF_StoreReciptVoucher_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoreTallyVoucher] ADD  CONSTRAINT [DF_StoreTallyVoucher_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TendererInformation] ADD  CONSTRAINT [DF_TendererInformation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TendererInformation] ADD  CONSTRAINT [DF_TendererInformation_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UomMaster] ADD  CONSTRAINT [DF_UomMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AnnualLeave]  WITH CHECK ADD  CONSTRAINT [FK__AnnualLea__Emplo__4F7CD00D] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[AnnualLeave] CHECK CONSTRAINT [FK__AnnualLea__Emplo__4F7CD00D]
GO
ALTER TABLE [dbo].[AnnualLeave]  WITH CHECK ADD  CONSTRAINT [FK__AnnualLea__Emplo__5812160E] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[AnnualLeave] CHECK CONSTRAINT [FK__AnnualLea__Emplo__5812160E]
GO
ALTER TABLE [dbo].[CasualLeave]  WITH CHECK ADD  CONSTRAINT [FK__CasualLea__Emplo__5070F446] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[CasualLeave] CHECK CONSTRAINT [FK__CasualLea__Emplo__5070F446]
GO
ALTER TABLE [dbo].[CasualLeave]  WITH CHECK ADD  CONSTRAINT [FK__CasualLea__Emplo__59063A47] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[CasualLeave] CHECK CONSTRAINT [FK__CasualLea__Emplo__59063A47]
GO
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD  CONSTRAINT [FK_CustomerMaster_UserMaster] FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[UserMaster] ([UserId])
GO
ALTER TABLE [dbo].[CustomerMaster] CHECK CONSTRAINT [FK_CustomerMaster_UserMaster]
GO
ALTER TABLE [dbo].[EmployeeAI]  WITH CHECK ADD  CONSTRAINT [FK__EmployeeA__Emplo__07020F21] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[EmployeeAI] CHECK CONSTRAINT [FK__EmployeeA__Emplo__07020F21]
GO
ALTER TABLE [dbo].[EmployeeGI]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGI_CustomerMaster] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([CustomerId])
GO
ALTER TABLE [dbo].[EmployeeGI] CHECK CONSTRAINT [FK_EmployeeGI_CustomerMaster]
GO
ALTER TABLE [dbo].[EmployeeMI]  WITH CHECK ADD  CONSTRAINT [FK__EmployeeM__Emplo__08EA5793] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[EmployeeMI] CHECK CONSTRAINT [FK__EmployeeM__Emplo__08EA5793]
GO
ALTER TABLE [dbo].[EmployeePI]  WITH CHECK ADD  CONSTRAINT [FK__EmployeeP__Emplo__07F6335A] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[EmployeePI] CHECK CONSTRAINT [FK__EmployeeP__Emplo__07F6335A]
GO
ALTER TABLE [dbo].[EmployeeSI]  WITH CHECK ADD  CONSTRAINT [FK__EmployeeS__Emplo__09DE7BCC] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[EmployeeSI] CHECK CONSTRAINT [FK__EmployeeS__Emplo__09DE7BCC]
GO
ALTER TABLE [dbo].[GraduateAttachmentForm]  WITH CHECK ADD  CONSTRAINT [FK__GraduateA__Emplo__4CA06362] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[GraduateAttachmentForm] CHECK CONSTRAINT [FK__GraduateA__Emplo__4CA06362]
GO
ALTER TABLE [dbo].[GraduateAttachmentForm]  WITH CHECK ADD  CONSTRAINT [FK__GraduateA__Emplo__5441852A] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[GraduateAttachmentForm] CHECK CONSTRAINT [FK__GraduateA__Emplo__5441852A]
GO
ALTER TABLE [dbo].[LeaveRoasterJuniorStaff]  WITH CHECK ADD  CONSTRAINT [FK__LeaveRoas__Emplo__5535A963] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[LeaveRoasterJuniorStaff] CHECK CONSTRAINT [FK__LeaveRoas__Emplo__5535A963]
GO
ALTER TABLE [dbo].[NyscFinalClearance]  WITH CHECK ADD  CONSTRAINT [FK__NyscFinal__Emplo__4D94879B] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[NyscFinalClearance] CHECK CONSTRAINT [FK__NyscFinal__Emplo__4D94879B]
GO
ALTER TABLE [dbo].[NyscFinalClearance]  WITH CHECK ADD  CONSTRAINT [FK__NyscFinal__Emplo__5629CD9C] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[NyscFinalClearance] CHECK CONSTRAINT [FK__NyscFinal__Emplo__5629CD9C]
GO
ALTER TABLE [dbo].[NyscMonthlyClearance]  WITH CHECK ADD  CONSTRAINT [FK__NyscMonth__Emplo__4E88ABD4] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[NyscMonthlyClearance] CHECK CONSTRAINT [FK__NyscMonth__Emplo__4E88ABD4]
GO
ALTER TABLE [dbo].[NyscMonthlyClearance]  WITH CHECK ADD  CONSTRAINT [FK__NyscMonth__Emplo__571DF1D5] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[EmployeeGI] ([EmployeeCode])
GO
ALTER TABLE [dbo].[NyscMonthlyClearance] CHECK CONSTRAINT [FK__NyscMonth__Emplo__571DF1D5]
GO
USE [master]
GO
ALTER DATABASE [IARTDBempty] SET  READ_WRITE 
GO
