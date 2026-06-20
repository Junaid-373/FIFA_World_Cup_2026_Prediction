select*
from [FIFA_2015 to 2026_Cleaned and Organised Data];
Select Top 5*
From [FIFA_2015 to 2026_Cleaned and Organised Data];

Select*
From [FIFA_2015 to 2026_Cleaned and Organised Data]
Where Home_Rank IS NULL
OR Away_Rank IS NULL;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FIFA_2015 to 2026_Cleaned and Organised Data'
AND COLUMN_NAME = 'Result_Code';

UPDATE [FIFA_2015 to 2026_Cleaned and Organised Data]
SET Result_Code =
CASE
    WHEN Home_Goals > Away_Goals THEN 1
    WHEN Home_Goals < Away_Goals THEN -1
    ELSE 0
END;

Select TOP 20
Home_Rank, Away_Rank,Result_Code
From [FIFA_2015 to 2026_Cleaned and Organised Data];