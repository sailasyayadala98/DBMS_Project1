create database SOCCER;


use SOCCER;
create table COUNTRY(
country_name varchar(20),
population decimal(10,2),
no_of_worldcup_won int,
manager varchar(20),
primary key(country_name));


create table PLAYERS(
player_id int,
name varchar(40),
fname varchar(20),
lname varchar(35),
dob date,
country varchar(20),
height int,
club varchar(30),
position varchar(10),
caps_for_country int,
is_captain boolean,
primary key(player_id),
foreign key(country) references COUNTRY(country_name)
);



create table MATCH_RESULTS(
match_id int,
date_of_match date,
start_time_of_match time,
team1 varchar(25),
team2 varchar(25),
team1_score int,
team2_score int,
stadium_name varchar(35),
host_city varchar(20),
foreign key(team1) references COUNTRY(country_name),
foreign key(team2) references COUNTRY(country_name)
);


create table PLAYER_CARDS(
player_id int,
yellow_cards int,
red_cards int,
foreign key(player_id) references PLAYERS(player_id)
);


create table PLAYER_ASSISTS_GOALS(
player_id int,
no_of_matches int,
goals int,
assists int,
minutes_played int,
foreign key(player_id) references PLAYERS(player_id)
);

select *from COUNTRY;
select *from PLAYERS;
select *from MATCH_RESULTS;
select *from PLAYER_CARDS;
select *from PLAYER_ASSISTS_GOALS;
