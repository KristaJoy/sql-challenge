# sql-challenge
Data modeling and data analysis with SQL


## Data Modeling and Engineering
First step, I previewed the six csv files provided for this project to understand the data I was working with. Then I typed in the table set ups into quickdatabasediagrams.com to help myself visualize how the tables are connected and what keys they had in common. With this initial setup done I exported the code and opened PgAdmin 4 to create my database. 

I started with the code exported from quickdatabasediagrams.com and edited it to create composite keys as well as streamline which foreign keys I was using, ensuring no conflicts when I imported the data.

**ERD Diagram**
![My ERC diagram](https://github.com/KristaJoy/sql-challenge/blob/main/Images/ERD.png)

## Data Analysis
Now that my database tables were set up I had a few queries to run. They all ran smoothly, confirming I created a working employee database. 

For example, I was able to see that quite a few employees are named Hercules—male and female alike!

![Sample results from query about the name Hercules](https://github.com/KristaJoy/sql-challenge/blob/main/Images/SampleResults.png)

So as I examined the data I could see that it was indeed fake! 
