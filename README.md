# Bellabeat Consumer Insights: Activity, Sleep & BMI Analysis 📊

## 📌 Objective
End-to-end analysis of smart fitness tracker data to uncover 
how daily physical activity impacts sleep quality and BMI 
across 33 users.

## 🛠️ Tools Used
- **Python** (Pandas, Matplotlib, Seaborn) — Data Cleaning & EDA
- **SQL** (SQLite) — Data Querying & Analysis
- **Power BI** — Interactive Dashboard & Visualization
- **Excel / CSV** — Raw Data Processing

## 📊 Dashboard Preview
![Sleep and BMI Dashboard](Screenshot%202026-03-08%20160830.png)
![User Engagement Dashboard](Screenshot%202026-03-08%20160918.png)

## 🔍 Key Insights
- Thursday is the lowest sleep day (avg 396 mins)
- Sunday has the highest average sleep (452 mins)
- Higher daily steps strongly correlate with lower BMI
- Monday and Tuesday show highest Very Active Minutes (25+ mins)
- 80.49% of users use automatic tracking
- Average sedentary time exceeds 946 minutes/day
- Avg daily steps: 8K | Avg sleep: 7 hours | Avg calories: 2K

## 🗄️ Database Overview
| Table | Rows | Description |
|-------|------|-------------|
| master_bellabeat_data | 861 | Final merged analysis table |
| dailyActivity_merged | 940 | Daily activity records |
| sleepDay_merged | 413 | Sleep records |
| weightLogInfo_merged | 67 | Weight & BMI records |
| heartrate_seconds_merged | 2.4M | Heart rate data |
| Total Tables | 19 | Complete fitness database |

## 📁 Files
| File | Description |
|------|-------------|
| `My_First_Notebook.ipynb` | Python data cleaning & EDA |
| `bellabeat_analysis.sql` | SQL queries for analysis |
| `Bellabeat.db` | SQLite database (19 tables) |
| `Bellbeat Dashboard project.pbix` | Power BI dashboard |

## 💡 Business Recommendations
- Target Thursday users with sleep improvement nudges
- Promote step challenges to users with high BMI
- Reduce sedentary alerts — avg user sits 15+ hours/day

## 🔗 Dataset Source
[Bellabeat Fitbit Data — Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit)
