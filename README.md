Netflix Movies and TV Shows: Data Analysis & SQL Queries
This repository contains a comprehensive dataset of movies and TV shows available on Netflix (as of 2021) 
and a collection of SQL queries designed to perform exploratory data analysis (EDA).
📁 Repository StructureFileDescription
netflix_titles.csv,The primary dataset containing information about Netflix titles.
flipkart....sql,A SQL script containing various queries for data extraction and analysis.
📊 Dataset Overview: netflix_titles.csv
The dataset provides a deep dive into the content available on Netflix. Each record includes details such as:

show_id: Unique identifier for every movie/show.

type: Identifier - Movie or TV Show.

title: Title of the movie or show.

director: Director of the movie/show.

cast: Actors involved in the movie/show.

country: Country where the movie/show was produced.

date_added: Date it was added on Netflix.

release_year: Actual release year of the movie/show.

rating: TV Rating of the movie/show (e.g., PG-13, TV-MA, R).

duration: Total duration (in minutes or number of seasons).

listed_in: Genre/Categories.

description: A brief summary of the plot.

🔍 SQL Analysis: flipkart....sql
The SQL file included in this project contains a variety of queries used to answer business questions and uncover trends within the Netflix library.

Key Analysis Tasks Covered:
General Exploration:
Retrieving all records and unique content types
Counting total movies vs. TV shows.

Filtering & Slicing:
Finding content produced in specific countries (e.g., India, South Africa).
Filtering titles by release year (e.g., releases before 2021 or between 2010-2015).
Filtering by specific ratings like TV-MA, R, or PG-13.

Aggregations & Statistics:
Finding the earliest and latest release years.
Calculating the average release year of the library.
Grouping content by country or release year to see production trends.

Advanced Pattern Matching:
Using LIKE operators to find titles containing specific words (e.g., "Love", "The").
Extracting short summaries using string manipulation.

Sorting & Limits:
Finding the most recently added titles.
Identifying the oldest movies in the dataset.

🚀 How to Use
1. Database Setup
To run the SQL queries, you will need to import the netflix_titles.csv data into a SQL database (MySQL, PostgreSQL, SQL Server, or SQLite).
Create a table named netflix_titles with the corresponding columns.
Use a LOAD DATA command or a GUI import wizard to populate the table from the CSV.

2. Running Queries
Open the flipkart....sql file in your preferred SQL editor (like MySQL Workbench, DBeaver, or VS Code) and execute the queries to see the results.

💡 Example Queries Included
SQL
-- Count total content by type
SELECT type, COUNT(*) FROM netflix_titles GROUP BY type;

-- Find movies released in 2021
SELECT title FROM netflix_titles WHERE release_year = 2021 AND type = 'Movie';

-- Top 5 countries with the most content
SELECT country, COUNT(*) as total FROM netflix_titles 
GROUP BY country 
ORDER BY total DESC LIMIT 5;
🛠️ Requirements
Data Viewer: Excel, Pandas (Python), or any CSV viewer.

Database: MySQL / PostgreSQL / SQL Server / SQLite.

📝 License
  
This project is for educational and data analysis purposes. Data is sourced from public Netflix listings.
