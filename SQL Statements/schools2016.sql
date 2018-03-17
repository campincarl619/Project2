SET @row_number = 10000;

CREATE TABLE schooldata.schools2016
AS
SELECT
     concat((@row_number:=@row_number + 1),"A") AS Shit
    ,poop.Institution_Name
    ,poop.Region_Name
    ,poop.Year
    ,poop.SAT_Avg
    ,poop.Admission_Rate
    ,poop.Tuition_Cost
    ,poop.Latitude
    ,poop.Longitude
FROM schooldata.school_data_all poop
WHERE Year = 2015
    AND (poop.SAT_Avg != -1
                AND poop.Admission_Rate != -1
                AND poop.Tuition_Cost != -1)
                ORDER BY SAT_Avg desc;