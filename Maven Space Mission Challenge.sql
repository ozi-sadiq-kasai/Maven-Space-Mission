--HOW MANY COMPANIES 
SELECT Top 10 Company,COUNT(Company) AS Number_Of_Missions
FROM [Space Mission]
GROUP BY Company
ORDER BY Number_Of_Missions DESC

--HOW MANY RETIRED AND ACTIVE ROCKETS
SELECT COUNT(RocketStatus) As Retired_Rockest
FROM [Space Mission]
WHERE RocketStatus = 'Retired';

SELECT COUNT(RocketStatus) As Active_Rockest
FROM [Space Mission]
WHERE RocketStatus = 'Active' 

--COUNTY OF TYPES OF ROCKETS
SELECT COUNT(DISTINCT(Rocket)) As Count_Rocket_Type
FROM [Space Mission];

--HOW MANY 'SUCCESS','FAILURE','PARTIAL FAILURE' AND 'PRELAUNCH FAILURE' MISSION
SELECT COUNT(MissionStatus) As Count_Success
FROM [Space Mission]
WHERE MissionStatus = 'Success'

SELECT COUNT(MissionStatus) As Count_Failure
FROM [Space Mission]
WHERE MissionStatus = 'Failure'

SELECT COUNT(MissionStatus) As Count_Partial_Failure
FROM [Space Mission]
WHERE MissionStatus = 'Partial Failure'

SELECT COUNT(MissionStatus) As Count_Prelaunch_Failure
FROM [Space Mission]
WHERE MissionStatus = 'Prelaunch Failure'

--COUNT TOTAL MISSION
SELECT COUNT(Mission) AS Total_Mission
FROM [Space Mission];

--WHAT COMPANIES HAD THE MOST SUCCESS
SELECT TOP 10 Company,count(Company) AS Success_Count
FROM [Space Mission]
WHERE MissionStatus = 'Success'
GROUP BY Company
ORDER BY Success_Count DESC

--POPULAR ROCKETS USED IN SPACE MISSION
SELECT TOP 5 Rocket,COUNT(Mission) AS Rocket_Count
FROM [Space Mission]
GROUP BY Rocket
ORDER BY Rocket_Count DESC

--Number of space explorations by years
SELECT Company,Date,count(Company) over(partition by DATEPART(year, [Date]))
FROM [Space Mission];


 --TOP 3 SPACE MISSION LAUNCH COUNTRIES
SELECT COUNT(Location) USA_COUNT
FROM [Space Mission]
WHERE Location Like '%USA%';
SELECT COUNT(Location) RUSSIA_COUNT
FROM [Space Mission]
WHERE Location Like '%RUSSIA%';
SELECT COUNT(Location) KAZAKHSTAN_COUNT
FROM [Space Mission]
WHERE Location Like '%KAZAKHSTAN%';