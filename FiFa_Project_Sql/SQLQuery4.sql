-- let's check Top Winning Teams at Home

Select Home_Team,
Count(*) As wins
From [FIFA_2015 to 2026_Cleaned and Organised Data]
Where Home_Goals > Away_Goals
Group by Home_Team
Order By wins DESC;
-- So, Nigeria has won most matches from 2015 to 2026 at Home

-- Let's Check Which Team Have higher Average Goal by teams at Home

Select Home_team,
Avg(Home_Goals) as avg_goals
from [FIFA_2015 to 2026_Cleaned and Organised Data]
Group by Home_Team
Order by avg_goals Desc;

-- Brazil has best average goal as home team 

--Let's same calculate for Away team
SELECT Away_Team,
       COUNT(*) AS Away_Wins
FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
WHERE Away_Goals > Home_Goals
GROUP BY Away_Team
ORDER BY Away_Wins DESC;

--AFCON Champions "Senegal" has win most Away match 

SELECT Away_Team,
       AVG(Away_Goals) AS Avg_Away_Goals
FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
GROUP BY Away_Team
ORDER BY Avg_Away_Goals DESC;

-- Brazil Have best average goal as away team also as home team

---Total Wins (Home + Away)
Select Team,
Count(*) as Total_Wins
FROM 
(
Select Home_Team As team
from [FIFA_2015 to 2026_Cleaned and Organised Data]
Where Home_Goals > Away_Goals

Union All

Select Away_Team as team
from [FIFA_2015 to 2026_Cleaned and Organised Data]
where Away_Goals > Home_Goals
) As Wins
Group by team
Order by Total_Wins DESC;


--so, afcon champion also top with most win ("SENEGAL")
--The Sadio Mane (tiranga of senegal) effect

--Average Goals Conceded
SELECT Team,
       AVG(Goals_Scored * 1.0) AS Avg_Goals
FROM
(
    SELECT Home_Team AS Team,
           Home_Goals AS Goals_Scored
    FROM [FIFA_2015 to 2026_Cleaned and Organised Data]

    UNION ALL

    SELECT Away_Team,
           Away_Goals
    FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
) AS T
GROUP BY Team
ORDER BY Avg_Goals DESC;

-- Brazil Conceded most goal by average


--Performance vs Top 10 Ranked Teams
SELECT Home_Team,
       COUNT(*) AS Wins_vs_Top10
FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
WHERE Home_Goals > Away_Goals
  AND Away_Rank <= 10
GROUP BY Home_Team
ORDER BY Wins_vs_Top10 DESC;


SELECT Away_Team,
       COUNT(*) AS Wins_vs_Top10
FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
WHERE Away_Goals > Home_Goals
  AND Home_Rank <= 10
GROUP BY Away_Team
ORDER BY Wins_vs_Top10 DESC;
-- ELO Rating Analysis
SELECT Team,
       AVG(Elo) AS Avg_Elo
FROM
(
    SELECT Home_Team AS Team, Home_Elo AS Elo
    FROM [FIFA_2015 to 2026_Cleaned and Organised Data]

    UNION ALL

    SELECT Away_Team, Away_Elo
    FROM [FIFA_2015 to 2026_Cleaned and Organised Data]
) T
GROUP BY Team
ORDER BY Avg_Elo DESC;

