# sql-challenge
Data modeling and data analysis with SQL


## Data Modeling and Engineering
First step, I previewed the six csv files provided for this project to understand the data I was working with. Then I typed in the table set ups into quickdatabasediagrams.com to help myself visualize how the tables are connected and what keys they had in common. With this initial setup done I exported the code and opened PgAdmin 4 to create my database. 

I started with the code exported from quickdatabasediagrams.com and edited it to create composite keys as well as streamline which foreign keys I was using, ensuring no conflicts when I imported the data.

**ERD Diagram**
![My ERC diagram](https://github.com/KristaJoy/sql-challenge/blob/main/Images/ERD.png)

## Data Analysis
Now that my database tables were set up I had a few queries to run. They all ran smoothly, confirming I created a working employee SQL database. 

For example, I was able to see that quite a few employees are named Hercules—male and female alike!

![Sample results from query about the name Hercules](https://github.com/KristaJoy/sql-challenge/blob/main/Images/SampleResults.png)

Next, I imported my SQL database into jupyter notebooks to use pandas and matplotlib to chart further analysis.

First, I was looking for the frequency of salary ranges. I did this by dividing the range of salaries (finding the highest and lowest amounts) into 10 bins. It looks like the most common salary was $40,000 on seeing the bin results and further examination of the data.  

![Chart showing the frequency of salary amounts amongst employees](https://github.com/KristaJoy/sql-challenge/blob/main/Images/FrequencySalaryAmounts.png)

One limitation of this chart is that unless you run additional code to count the number of salaries in each bin, you can't see that the last bin has 16 salaries in it. They appear nonexistant because the largest bin has more than 101,000 salaries and the y-axis can't visually show that spread. 

Lastly, I found the average salary for each job title. Looking at the data you can tell there is something fishy about this data set because the staff makes a higher salary on average than the managers. 

![Chart showing the average salary by job title](https://github.com/KristaJoy/sql-challenge/blob/main/Images/AverageSalarybyTitle.png)
