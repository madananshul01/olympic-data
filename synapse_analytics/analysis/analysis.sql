--Count the number of athletes per each country
SELECT Country,COUNT(*) 
FROM tod.vw_athletes
GROUP BY Country;

--Count the total medal won by each country
SELECT Team_Country,
SUM(Gold) as Total_Gold,
SUM(Silver) as Total_Silver,
SUM(Bronze) as Total_Bronze
FROM tod.vw_medals
GROUP BY Team_Country
ORDER BY Total_Gold Desc;

--Calculate the average number of entries by gender for each descipline;
SELECT 
Discipline,
AVG(Female) as Avg_Female,
AVG(male) as Avg_Male
FROM tod.vw_entriesgender
GROUP BY Discipline;