⚽ FIFA World Cup 2026 Winner Prediction Using Machine Learning
📌 Project Overview

This project applies Machine Learning and Data Science techniques to analyze historical international football matches and predict the most likely winner of the FIFA World Cup 2026.

The workflow includes:

Data Cleaning & Preprocessing
Exploratory Data Analysis (EDA)
Feature Engineering
Team Strength Analysis
Machine Learning Model Development
Model Evaluation
FIFA World Cup 2026 Winner Prediction

The goal is to identify the key factors that influence football match outcomes and use these insights to evaluate the strongest contenders for the FIFA World Cup 2026.

📊 Dataset

The dataset contains 1,000 international football matches and includes:

FIFA Rankings
Elo Ratings
Team Form
Win Percentage
Goals Scored
Clean Sheet Percentage
Host Advantage
Continental Advantage
Match Results
Target Variable
Value	Result
1	Home Team Win
0	Draw
-1	Away Team Win
🛠️ Technologies Used
Python
Pandas
NumPy
Matplotlib
Seaborn
Scikit-Learn
Google Colab
📈 Exploratory Data Analysis

Several analyses were conducted to understand historical football performance:

Match Result Distribution
Goal Scoring Trends
Team Win Percentage Analysis
FIFA Ranking Analysis
Elo Rating Analysis
Correlation Heatmap
Team Strength Evaluation
Key Findings

✅ Teams with higher Elo Ratings generally perform better.

✅ Recent Form has a significant impact on match outcomes.

✅ Historical Win Percentage is a strong indicator of team consistency.

✅ FIFA Rankings alone are not sufficient for accurate prediction.

🤖 Machine Learning Model
Model Used

Random Forest Classifier

Features Used
Home Rank
Away Rank
Home Elo
Away Elo
Home Form
Away Form
Home Win Percentage
Away Win Percentage
Clean Sheet Percentage
Host Advantage
Continent Advantage
Rank Difference
Train-Test Split
Training Data: 80%
Testing Data: 20%
📊 Model Performance
Accuracy Score

47%

Feature Importance
Feature	Importance
Away Elo	11.24%
Away Form	11.10%
Home Elo	10.71%
Home Form	10.70%
Home Win %	9.63%
Clean Sheet %	9.21%
Key Insight

The model identified Elo Rating, Recent Form, and Win Percentage as the most important predictors of football match outcomes.

🏆 Team Strength Analysis

A Team Strength Score was developed using:

Elo Rating
Recent Form
Win Percentage

This provided a comprehensive measure of team quality and tournament readiness.

Strongest Teams Identified
Argentina
Portugal
Brazil
Belgium
Austria
🌎 FIFA World Cup 2026 Prediction

Based on:

Historical Performance
Elo Ratings
Recent Form
Win Percentage
Team Strength Analysis
Machine Learning Findings
🥇 Predicted Winner

🇦🇷 Argentina

Argentina consistently demonstrated one of the strongest overall profiles across Elo Rating, Form, and Win Percentage, making them the strongest candidate in this study.

🥈 Strongest Challenger

🇵🇹 Portugal

Portugal recorded one of the highest win percentages in the dataset and showed exceptional consistency in international matches. While Argentina emerged as the primary prediction, Portugal remains a strong contender capable of winning the FIFA World Cup 2026.

📷 Project Visualizations
Correlation Heatmap
Feature Importance Analysis
Top 10 Teams by Elo Rating
Top 10 Teams by Overall Strength Score
Team Strength Analysis
🚀 Future Improvements

Future enhancements may include:

Larger datasets
Player-level statistics
Injury and squad information
XGBoost and Gradient Boosting models
Match probability predictions
Full FIFA World Cup 2026 tournament simulation
📄 Report

A detailed project report is available in:

FIFA_World_Cup_2026_Winner_Prediction_Report.pdf
📝 Conclusion

This project demonstrates a complete end-to-end Machine Learning workflow, from data preprocessing and exploratory analysis to model development and evaluation.

The analysis revealed that Elo Rating, Recent Form, and Win Percentage are the most influential factors in football match prediction. Using these metrics, Argentina emerged as the strongest overall team in the dataset and is therefore predicted as the most likely winner of the FIFA World Cup 2026.

While football remains inherently unpredictable, the findings provide a data-driven perspective on the leading contenders and highlight Portugal as the strongest challenger due to its outstanding historical win percentage and consistency.

⭐ If you found this project interesting, feel free to star the repository and share your thoughts!
