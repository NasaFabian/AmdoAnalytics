/* CREATE A DATABASE SYSTEM TO MANAGE AMDOR ANALYTICS TRAINING*/
--Entities
--1. Students
--StudenID
--Firstname
--MiddleName
--LastName
--Gender
--Email
--PhoneNumber
--DatedAt
--2. Cohort
--CohortID
--Cohort
--CohortDate
--3. Courses
--CourseID
--CourseName

--CreatedAt
--4. Facilitators
--facilitatorID
--FacilitatorName
--CourseID
--5. Enrollement
--EnrollmentID
--StudentID
--CohortID
--Amount
--DiscountApplied
--DateAt
--6. Satus
--StatusID
--StatusName

--create database--
create Database AmadoranalyticsDB
--Create Cohort Table--
Create Table cohorts(
CohortID int not null primary key identity(1,1),
CohortName varchar(50) not null,
CohortDate date not null
)
--Create Courses Table--
use AmadoranalyticsDB
Create table Courses(
CourseID int not null primary key identity (100,1),
CourseName Varchar(250) not null,
CreatedAt date not null
)
--Create facilitator table--
Create Table Facilitator(
FacilitatorID int not null primary key identity (001,1),
FacilitatorName varchar(250) not null,
CourseID int not null,
foreign key (CourseID) references courses (CourseID)
)

--Create Enrollment Table
Create Table Enrollement(
EnrollmentID int not null primary key identity (001,1),
StudentID int not null,
foreign key (StudentID) references student (StudentID),
CohortID int not null,
foreign key (CohortID) references Cohorts (CohortID),
Amount int not null,
DiscounteApplied bit,
Datedat date not null

)
--create Status table
create table status(
StatusID int not null primary key identity (1,1),
StatusName varchar(50) not null
)
--Delete column StatusID from StudentTable--
Alter Table student
Drop column StatusID
--Create StudentStatusID
create table StudentStatus (
StudentStatusID int not null primary key identity (001,1),
StatusID int not null,
StudentID int not null,
DatedAt date
)

--View column--
exec sp_columns 'student'
select*
From Student
--Insert Data--

insert into status values('Enrolled')
insert into status values ('Not Enrolled')

--View Date--
select statusID, statusName 
From Status

--Select all--
Select *
From status

--Insert data
insert into Status  values('Enrolled')
insert into status values ('Not Enrolled')
insert into status values ('Dropped Out')
insert into status values ('Completed')

--delete Row--
Delete from status
Where StatusID in (3,4,5)


Select * from student
insert into student values ('Nasa', 'Nnenna','Fabian',  'F', 'nasbella@gmail.com', '080551223','2024-02-11','2024-02-11')

Select * from Courses

Insert into Courses values ('powerBi','2022-10-15')
Insert into Courses values ('pyhton','2022-10-15')
Insert into Courses values ('SQL','2022-10-15')
Insert into Courses values ('Excel','2022-10-15')

SELECT TOP (1000) [StudentID]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Gender]
      ,[Email]
      ,[PhoneNumber]
      ,[DatedAt]
      ,[Updated]
  FROM [AmadoranalyticsDB].[dbo].[Student]
