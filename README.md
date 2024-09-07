# Simulated Wildlife App Data Exploration

![wildlife photography](https://images.unsplash.com/photo-1667323170198-030d2ac9d4ae?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8d2lsZGxpZmUlMjBwaG9uZXxlbnwwfHwwfHx8Mg%3D%3D= "wildlife photography")

## Table of Contents
- [Project Overview](#project-overview)
- [Database Structure](#database-structure)
- [Data Population](#data-population)
- [Data Analysis](#data-analysis)
- [Key Findings](#key-findings)
- [Disclaimer](#disclaimer)

## Project Overview

This project centers around the exploration of a fictional mobile application ("WildTracker") designed to engage nature enthusiasts in wildlife observation and conservation efforts. 

The project consists of three main SQL scripts:
1. Database structure creation
2. Data population
3. Data analysis

## Database Structure

<img width="242" alt="s1 0" src="https://github.com/user-attachments/assets/a40b41a7-159c-4b5c-a662-c764e612efe6">

The first script (`q1.sql`) creates the database structure for the WildTracker app. It defines the following tables:

- Users
- Species
- Sightings
- AppFeatures
- UserActivity
- ConservationQuizzes
- UserQuizResults
- Badges
- UserBadges

These tables are designed to capture user information, wildlife sightings, app usage, quiz performance, and achievement tracking.

## Data Population

<img width="465" alt="s2 1" src="https://github.com/user-attachments/assets/f7da8ed2-3a24-4c69-b80f-c1c24e802eaf">

<img width="234" alt="s2 2" src="https://github.com/user-attachments/assets/b82b3f5c-e0ad-4611-947b-4ba0e847f56e">

The second script (`q2.sql`) populates the database with sample data. It inserts records into all tables and views them, providing a realistic dataset for analysis. This includes:

- 10 user profiles
- 10 wildlife species
- 10 wildlife sightings
- 10 app features
- User activity records
- Conservation quizzes
- Quiz results
- Badges and user badge assignments

## Data Analysis

<img width="330" alt="s3 1" src="https://github.com/user-attachments/assets/82e637ad-b29e-495a-96fb-1be20c859768">

<img width="287" alt="s3 2" src="https://github.com/user-attachments/assets/ceee38c1-5de4-486a-96f5-3fea46cab07e">

The third script (`q3.sql`) performs various analyses on the populated data, focusing on two main areas:

1. User Engagement and Activity Analysis
   - Overall user engagement metrics
   - Most used app features

2. User Performance in Conservation Quizzes
   - Average quiz scores by difficulty
   - Correlation between quiz performance and user engagement

## Key Findings

User Engagement:

<img width="430" alt="v1" src="https://github.com/user-attachments/assets/d9773a7f-9814-42cb-b21e-55cf1da7875c">

   Conservation: Despite having the highest total points, DavidLee has only logged one sighting, suggesting that point accumulation might not directly correlate with field observations.<br></br>
   Business: The wide range of TotalActivityDuration (150-600 seconds) indicates varied user engagement levels, presenting an opportunity for targeted retention strategies.<br></br>
   Technology: All users have taken quizzes and earned badges, indicating successful implementation of gamification features in the app.<br></br><br></br>

Feature Usage:

<img width="217" alt="v2" src="https://github.com/user-attachments/assets/e535410c-a46f-47d4-83f2-be0bff4baee4">

   Conservation: The Conservation Quiz feature has the highest average duration (600 seconds), suggesting users spend significant time engaging with educational content.<br></br>
   Business: The Sighting Log feature has a high average duration (450 seconds), indicating it's a core functionality that users find valuable.<br></br>
   Technology: The Species Identification tool's usage (300 seconds avg. duration) demonstrates the successful integration of AI/ML technologies for wildlife recognition.<br></br><br></br>

Quiz Performance:

<img width="183" alt="v3" src="https://github.com/user-attachments/assets/ad5aed47-a839-4379-9dae-8241f25c19af">

Conservation: Beginner-level quizzes have the highest average score (89), indicating the app is successfully educating new users on basic conservation concepts.<br></br>
Business: The even distribution of participants across difficulty levels suggests a well-balanced quiz system that caters to users of varying expertise.<br></br>
Technology: The quiz system effectively categorizes and delivers content across three difficulty levels, showcasing a robust educational technology framework.<br></br><br></br>

User Quiz Scores and Engagement:

<img width="285" alt="v4" src="https://github.com/user-attachments/assets/36c491c9-dac9-424f-b196-03ebed6ac1a3">

   Conservation: MikeJohnson's high quiz score (90) coupled with relatively low total points (1800) suggests that knowledge doesn't always translate to in-app activity.<br></br>
   Business: There's no clear correlation between quiz scores and total points, indicating that the app successfully engages users through various means beyond just quizzes.<br></br>
   Technology: The ability to track and compare quiz scores with other engagement metrics demonstrates the app's comprehensive data collection and analysis capabilities.<br></br><br></br>


## Disclaimer

This project uses fictional data for demonstration purposes. The data does not represent real apps, users, or wildlife sightings.
