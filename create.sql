create table if not exists genre(
id serial primary key,
genrename varchar (60) not null
);

create  table if not exists creator(
id serial primary key,
creatorname varchar (60) not null
);

create table if not exists album(
id serial primary key,
albumname varchar (60) not null,
relace_year integer (4) not null
);

create table if not exists track(
id serial primary key,
trackname varchar (60) not null,
duration integer not null,
album_id integer not null references album(id)
);

create  table if not exists collection(
id serial primary key,
collectionname varchar (60) not null,
relace_year integer (4) not null
);

create table if not exists genre_creator(
genre_id integer references genre(id),
creator_id integer references creator(id),
constraint pk primary key (genre_id, creator_id)
);

create table if not exists creator_album(
creator_id integer references creator(id),
album_id integer references album(id), 
constraint pk primary key (creator_id, album_id)
);

create table if not exists collection_track(
collection_id integer references collection(id),
track_id integer references track(id),
constraint pk primary key (collection_id, track_id)
);