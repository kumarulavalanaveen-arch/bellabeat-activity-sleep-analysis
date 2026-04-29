-- Bellabeat Consumer Insights: SQL Analysis
-- Author: Suma Ulavala
-- Database: Bellabeat.db (SQLite)

-- SECTION 1: DATABASE OVERVIEW
SELECT COUNT(DISTINCT Id) AS Total_Users
FROM dailyActivity_merged;

SELECT MIN(ActivityDate) AS Start_Date, MAX(ActivityDate) AS End_Date
FROM dailyActivity_merged;

-- SECTION 2: DAILY ACTIVITY
SELECT Id,
    ROUND(AVG(TotalSteps), 0) AS Avg_Daily_Steps,
    ROUND(AVG(Calories), 0) AS Avg_Daily_Calories,
    ROUND(AVG(SedentaryMinutes), 0) AS Avg_Sedentary_Minutes
FROM dailyActivity_merged
GROUP BY Id ORDER BY Avg_Daily_Steps DESC;

-- SECTION 3: SLEEP ANALYSIS
SELECT Id,
    ROUND(AVG(TotalMinutesAsleep)/60.0, 1) AS Avg_Hours_Asleep,
    ROUND(AVG(TotalTimeInBed - TotalMinutesAsleep), 0) AS Avg_Wasted_Bed_Minutes
FROM sleepDay_merged
GROUP BY Id ORDER BY Avg_Hours_Asleep DESC;

-- SECTION 4: BMI CATEGORIES
SELECT Id,
    ROUND(AVG(BMI), 1) AS Avg_BMI,
    CASE
        WHEN AVG(BMI) < 18.5 THEN 'Underweight'
        WHEN AVG(BMI) BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN AVG(BMI) BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category
FROM weightLogInfo_merged
GROUP BY Id;

-- SECTION 5: STEPS VS BMI CORRELATION
SELECT
    CASE
        WHEN TotalSteps < 5000 THEN 'Low Activity'
        WHEN TotalSteps BETWEEN 5000 AND 10000 THEN 'Moderate Activity'
        ELSE 'High Activity'
    END AS Activity_Level,
    ROUND(AVG(BMI), 1) AS Avg_BMI,
    ROUND(AVG(Calories), 0) AS Avg_Calories
FROM master_bellabeat_data
WHERE BMI IS NOT NULL
GROUP BY Activity_Level ORDER BY Avg_BMI DESC;

-- SECTION 6: PEAK ACTIVITY HOURS
SELECT strftime('%H', ActivityHour) AS Hour,
    ROUND(AVG(StepTotal), 0) AS Avg_Steps
FROM hourlySteps_merged
GROUP BY Hour ORDER BY Avg_Steps DESC LIMIT 5;
