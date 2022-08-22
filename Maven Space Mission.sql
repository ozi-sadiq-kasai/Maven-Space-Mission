--HOW MANY COMPANIES 
SELECT Top 10 Company,COUNT(Company) AS Company_Count
FROM [Space Mission]
GROUP BY Company
ORDER BY Company_Count DESC

--HOW MANY RETIRED AND ACTIVE ROCKETS
SELECT COUNT(RocketStatus) As Retired
FROM [Space Mission]
WHERE RocketStatus = 'Retired';

SELECT COUNT(RocketStatus) As Active
FROM [Space Mission]
WHERE RocketStatus = 'Active' 

--HOW MANY 'SUCCESS' AND  'FAILURE' MISSION
SELECT COUNT(MissionStatus) As Success
FROM [Space Mission]
WHERE MissionStatus = 'Success'

SELECT COUNT(MissionStatus) As Failure
FROM [Space Mission]
WHERE MissionStatus = 'Failure'

--WHAT COMPANIES HAD THE MOST SUCCESS
SELECT TOP 10 Company,count(Company) AS Success_Count
FROM [Space Mission]
WHERE MissionStatus = 'Success'
GROUP BY Company
ORDER BY Success_Count DESC

--COUNT OF SPACE MISSION BY ROCKET
SELECT TOP 5 Rocket,COUNT(Mission) AS Rocket_Count
FROM [Space Mission]
GROUP BY Rocket
ORDER BY Rocket_Count DESC

--Number of space explorations by years
SELECT Company,Date,count(Company) over(partition by DATEPART(year, [Date]))
FROM [Space Mission];


 