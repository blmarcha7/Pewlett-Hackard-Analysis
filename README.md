# Pewlett-Hackard-Analysis
## Overview of the Analysis 
At Pewlett Hackard, there is a "silver tsunami" coming, as many current employees are reaching retirement age. In this analysis, we were asked to determine the number of retiring employees per title and to indentify employees who would be eligible to participate in a mentorship program. We are going to complete this analysis using SQL, by filtering and joining different tables of data that we have received from the company. 
## Results
First we created a table with the number of employees retiring from different positions. 

[number of retiring employees per title](Data/retiring_titles.csv)

From this table we can see:
- The two positions that will be the most important to fill, will be senior engineer and senior staff. There are approximately 25 000 employees about to retire in      those two positions/departments. 
![](/retiring_titles.png)
- We can also see there are 2 managers that are ready to retire. This isn't a large number but since manager positions are very important in an organization, these two manager positions should be considered.

We then created a table with all the employees who would be eligible for a mentorship program. 

[mentorship program eligibility](Data/mentorship_eligibility.csv)

From this table we can see:
- There are a large number of employees eligible for this program. There are almost 500 000 employees eligible for this program. 
- There will most likely need to be more filtering done to decide who would be asked to be involved in this program. The program would be too large to include all     of these eligible employees.

## Summary 
We want to answer two main questions for Pewlett Hackard from this analysis:
-How many roles will need to be filled as the "silver tsunami" begins to make an impact?
So there are different ways of looking at when the impact would be felt. However, we looked at it as, once the group of employees born in the year of 1952 start to retire, this is the first wave of retirees and the company would start to feel this impact. We filtered to the group of employees born in 1952. From this we see there are 31,374 employees retiring from this year. Therefore there would be approiximately 31 000 roles to fill at the beginning of this wave of employees retiring.

-Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
If you look at the number of employees who are eligible for the mentorship program and then you look at the number of "Senior" level staff who are ready to retire, we see that there is a 1 to 10 ratio of senior level employee to next generation employees. I think this would be managable, but maybe not enough to have as quality of a mentorship program. I would think a 1 to 5 ratio would be better.
