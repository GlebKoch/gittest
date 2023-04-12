select  albumname, year from album
where relace_year >= 2018;
-- название год альбома с 2018
select trackname from track 
order by duration desc 
limit 1;
-- название трека с наиб длительностью
select  trackname from track
where duration >= 210;
-- название треков, длительность которых больше 3,5 мин
select collectionname from collection
where relace_year >= 2018 and relace_name <= 2020;
--название сборника, выпущеого с 2018 по 2020
select creatorname from creator
where creatorname not like '% %';
-- название авторов содержащих 1 слово в псевдониме
select creatorname from creator 
where creatorname like '%мой%' or '%my%';
-- название авторов содержащих в псевдониме мо или му