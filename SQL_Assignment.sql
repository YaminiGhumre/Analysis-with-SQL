select * from record_company.bands
### Select only the names of all Bands from the songs table

##Select the oldest album-
select * from record_company.bands;
select min(release_year) from record_company.albums;
select name from record_company.albums where release_year = 1988;

## Get all the bands that have albums-
select distinct albums.band_id from record_company.albums ;
select distinct bands.name from record_company.bands;
select distinct bands.name,album.band_id from record_company.bands as bands inner join record_company.albums as album
on bands.id = album.band_id


## Get all the bands that have no albums-
select * from record_company.bands;
select * from record_company.albums;	
select distinct bands.name,album.band_id from record_company.bands as bands left join record_company.albums as album
on bands.id = album.band_id where album.band_id is null

### Get the longest album-
select * from record_company.songs;
select * from record_company.albums;
select length from record_company.songs;
select max(length),album.name from record_company.songs as songs inner join record_company.albums as album
on songs.album_id = album.band_id
group by album.name
limit 1

#### Insert a record for your favorite Band and one of their Albums -
INSERT INTO bands(id,name) VALUES (8,'Rock on');
select * from record_company.bands

INSERT INTO albums(name,release_year,band_id) VALUES ('Rock on',2018,8);
select * from record_company.albums where band_id = 8

####  Delete the Band and Album you added in previous question -
delete from albums where band_id = 8;
delete from bands where id = 8;
select * from record_company.bands;

#### get the Average length of all songs -
select avg(length) from songs;

##### Select the longest song of each album -
select max(length), songs.name from songs inner join albums
on songs.album_id = albums.id
group by songs.name

#### Get the number of songs for each band-
select count(songs.id), bands.name from songs right join albums
on songs.album_id = albums.id right join bands on albums.band_id = bands.id
group by bands.name 

####### Filter the Albums which start with the word 'The' -
select * from albums where name like 'The%'

Find the album which released in 2008 to 2013 -
select * from albums where release_year between 2008 and 2013;

