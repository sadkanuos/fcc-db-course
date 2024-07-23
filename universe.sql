Create table cluster(
    cluster_id INT  NOT NULL UNIQUE,
    name varchar not null,
    description text not null,
    num_one numeric,
    tf_one boolean,
    tf_two boolean,
    num_two INT,
    num_three INT,
    primary key(cluster_id),
    constraint cluster_unique UNIQUE (cluster_id)
);
Insert into cluster values 
(1, 'Name1', 'Description for one of the columns',34,true,true,8,22),
(2, 'Name2', 'Description for 2 of the columns',29,true,false,5,94),
(3, 'Name3', 'Desc',62,true,true,12,44);
create table galaxy(
    galaxy_id int not null unique,
    name varchar not null,
    description text not null,
    tf_one boolean,
    tf_two boolean,
    object_count INT,
    num_two NUMERIC,
    num_three INT,
    cluster_id INT,
    primary key(galaxy_id),
    constraint galaxy_unique UNIQUE (galaxy_id),
    constraint fk_cluster 
    foreign key (cluster_id)
    references cluster(cluster_id)
    on delete cascade
);
insert into galaxy values
(1,'Galaxy1','Description1',TRUE,TRUE,45,4,34,1),
(2,'Galaxy2','Description12',FALSE,TRUE,56,74,33,2),
(3,'Galaxy12','Description5',TRUE,FALSE,41,54,32,1),
(4,'Galaxy14','Description13',TRUE,FALSE,35,64,23,1),
(5,'Galaxy15','Description10',FALSE,TRUE,65,44,43,1),
(6,'Galaxy6','Description11',TRUE,FALSE,75,32,63,1),
(7,'Galaxy7','Description14',TRUE,TRUE,45,24,36,1),
(8,'Galaxy8','Description1 for this',FALSE,TRUE,45,34,38,1);

create table star(
    star_id int not null unique,
    name varchar not null,
    description text not null,
    tf_one boolean,
    tf_two boolean,
    object_count INT,
    num_two NUMERIC,
    num_three INT,
    galaxy_id INT,
    primary key(star_id),
    constraint star_unique UNIQUE (star_id)
    constraint fk_galaxy 
    foreign key (galaxy_id)
    references galaxy(galaxy_id)
    on delete cascade
);
insert into star values
(1,'Star1','Description1',TRUE,TRUE,45,4,34,1),
(2,'Star2','Description12',FALSE,TRUE,56,74,33,2),
(3,'Star12','Description5',TRUE,FALSE,41,54,32,4),
(4,'Star14','Description13',TRUE,FALSE,35,64,23,7),
(5,'Star15','Description10',FALSE,TRUE,65,44,43,4),
(6,'Star6','Description11',TRUE,FALSE,75,32,63,6),
(7,'Star7','Description14',TRUE,TRUE,45,24,36,2),
(8,'Star8','Description1 for this',FALSE,TRUE,45,34,38,3);
create table planet(
    planet_id int not null unique,
    name varchar not null,
    description text not null,
    tf_one boolean,
    tf_two boolean,
    object_count INT,
    num_two NUMERIC,
    num_three INT,
    star_id INT,
    primary key(planet_id),
    constraint planet_unique UNIQUE (planet_id)
    constraint fk_star
    foreign key (star_id)
    references star(star_id)
    on delete cascade
);
insert into planet values
(1,'Planet10','DescriptionRET100',TRUE,TRUE,45,65,122,1),
(2,'Planet11','DescriptionRET101',TRUE,FALSE,46,66,123,2),
(3,'Planet12','DescriptionRET102',FALSE,FALSE,47,67,124,3),
(4,'Planet13','DescriptionRET103',TRUE,FALSE,48,68,125,4),
(5,'Planet14','DescriptionRET104',FALSE,FALSE,49,69,126,5),
(6,'Planet15','DescriptionRET105',FALSE,TRUE,50,70,127,6),
(7,'Planet16','DescriptionRET106',TRUE,TRUE,51,71,128,2),
(8,'Planet17','DescriptionRET107',TRUE,TRUE,52,72,129,8),
(9,'Planet18','DescriptionRET108',FALSE,FALSE,53,73,130,2),
(10,'Planet19','DescriptionRET109',TRUE,FALSE,54,74,131,2),
(11,'Planet20','DescriptionRET110',TRUE,FALSE,55,75,132,2),
(12,'Planet21','DescriptionRET111',TRUE,FALSE,56,76,133,2),
(13,'Planet22','DescriptionRET112',FALSE,FALSE,57,77,134,2),
(14,'Planet23','DescriptionRET113',TRUE,FALSE,58,78,135,2);

create table Moon(
    Moon_id int not null unique,
    name varchar not null,
    description text not null,
    tf_one boolean,
    tf_two boolean,
    object_count INT,
    num_two NUMERIC,
    num_three INT,
    planet_id INT,
    primary key(Moon_id),
    constraint moon_unique UNIQUE (moon_id)
    constraint fk_planet
    foreign key (planet_id)
    references planet(planet_id)
    on delete cascade
);
INSERT INTO Moon values
(1,'Moon125','DescriptionSRT242',TRUE,TRUE,45,65,122,1),
(2,'Moon126','DescriptionSRT243',TRUE,FALSE,46,66,123,2),
(3,'Moon127','DescriptionSRT244',FALSE,FALSE,47,67,124,3),
(4,'Moon128','DescriptionSRT245',TRUE,FALSE,48,68,125,4),
(5,'Moon129','DescriptionSRT246',FALSE,FALSE,49,69,126,5),
(6,'Moon130','DescriptionSRT247',FALSE,TRUE,50,70,127,6),
(7,'Moon131','DescriptionSRT248',TRUE,TRUE,51,71,128,2),
(8,'Moon132','DescriptionSRT249',TRUE,TRUE,52,72,129,8),
(9,'Moon133','DescriptionSRT250',FALSE,FALSE,53,73,130,2),
(10,'Moon134','DescriptionSRT251',TRUE,FALSE,54,74,131,2),
(11,'Moon135','DescriptionSRT252',TRUE,FALSE,55,75,132,2),
(12,'Moon136','DescriptionSRT253',TRUE,FALSE,56,76,133,2),
(13,'Moon137','DescriptionSRT254',FALSE,FALSE,57,77,134,2),
(14,'Moon138','DescriptionSRT255',FALSE,FALSE,58,78,135,2),
(15,'Moon139','DescriptionSRT256',FALSE,FALSE,59,79,136,3),
(16,'Moon140','DescriptionSRT257',FALSE,FALSE,60,80,137,4),
(17,'Moon141','DescriptionSRT258',FALSE,FALSE,61,81,138,5),
(18,'Moon142','DescriptionSRT259',FALSE,TRUE,62,82,139,6),
(19,'Moon143','DescriptionSRT260',FALSE,FALSE,63,83,140,7),
(20,'Moon144','DescriptionSRT261',FALSE,TRUE,64,84,141,8),
(21,'Moon145','DescriptionSRT262',FALSE,FALSE,65,85,142,9),
(22,'Moon146','DescriptionSRT263',FALSE,FALSE,66,86,143,10);