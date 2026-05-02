select * from netflix_titles;
select * from netflix_titles where type='Movie';
select type from netflix_titles;
select * from netflix_titles where release_year<2021;
select * from netflix_titles where release_year>2020;
select * from netflix_titles where type='movie';
select * from netflix_titles where type='TV Show';
select * from netflix_titles where country='india';
select * from netflix_titles where type='movie' and country='india';
select * from netflix_titles where type='TV Show' and country='south africa';
select 'type','country' from netflix_titles;
select * from netflix_titles order by 'release_year' desc;
select * from netflix_titles where rating='tv-ma';
select decs(title) from netflix_titles where release_year>2020 and title='blood & water' or release_year<2021 and title='kota factory' and not country='india';
select count(*) as 'total_movie' from netflix_titles;
select min(release_year) as min from netflix_titles;
select max(release_year) as max from netflix_titles;
select avg(release_year) as avg from netflix_titles;
select count(release_year) as count_date from netflix_titles;
Select
min(release_year) as min_release_year,
max(release_year) as max_release_year,
count(distinct release_year) as count_of_release_year,
round(avg(release_year),2) as avg_of_all_release_years,
sum(release_year) as avg_of_all_release_years 
from netflix_titles
 limit 1;
 Select distinct ' country that End with ia :- '|| country as Value from netflix_titles
where country like"%ia";
select
n1.show_id as Show_idtable1,
n2.type as Show_idTable2,
n2.title as Showtable2
from netflix_titles n1
join netflix_titles n2 on n1.show_id = n2.show_id;
select * from netflix_titles where country='India'
union all
select * from netflix_titles where country='United States';
select
title,
release_year,
case when release_year=lag(release_year) over (order by release_year asc) then 1 else 0 end as Back_to_Back
from netflix_titles
order by release_year asc;
select * from netflix_titles where 'date_added'='24-Sep-21';
select * from netflix_titles where duration <'100 min';
select * from netflix_titles where duration >'90 min';
select * from netflix_titles where type='movie' and duration <'100 min';
select * from netflix_titles where date_added='24-Sep-21';
SELECT title, LEFT(description, 50) AS short_summary FROM netflix_titles;
SELECT title FROM netflix_titles WHERE date_added LIKE '%2021';
SELECT title, rating FROM netflix_titles WHERE rating IN ('R', 'PG-13');
SELECT title, release_year FROM netflix_titles WHERE release_year BETWEEN 2010 AND 2015;
SELECT title, director FROM netflix_titles WHERE director IS NOT NULL;
SELECT title FROM netflix_titles WHERE director IS NULL;
SELECT country, COUNT(*) as total FROM netflix_titles GROUP BY country ORDER BY total DESC LIMIT 5;
SELECT release_year, COUNT(*) FROM netflix_titles GROUP BY release_year ORDER BY release_year DESC;
SELECT type, COUNT(*) FROM netflix_titles GROUP BY type;
SELECT title FROM netflix_titles ORDER BY title ASC;
SELECT title, date_added FROM netflix_titles ORDER BY date_added DESC LIMIT 5;
SELECT title, release_year FROM netflix_titles WHERE type = 'Movie' ORDER BY release_year ASC LIMIT 10;
SELECT title, description FROM netflix_titles WHERE description LIKE '%family%';
SELECT title FROM netflix_titles WHERE title LIKE '%Love%';
SELECT title FROM netflix_titles WHERE title LIKE 'The%';
SELECT title FROM netflix_titles WHERE date_added = 'September 25, 2021';
SELECT title, description FROM netflix_titles WHERE rating = 'TV-MA';
SELECT title, description FROM netflix_titles WHERE rating = 'TV-MA';
SELECT title FROM netflix_titles WHERE release_year = 2021 AND type = 'Movie';
SELECT * FROM netflix_titles WHERE type = 'TV Show';
SELECT DISTINCT type FROM netflix_titles;



