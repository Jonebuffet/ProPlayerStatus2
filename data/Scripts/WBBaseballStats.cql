CREATE KEYSPACE IF NOT EXISTS ks_baseball WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '3'}  AND durable_writes = true;

DROP TABLE IF EXISTS ks_baseball.player_batting_by_year;
DROP TABLE IF EXISTS ks_baseball.player_info;

CREATE TABLE IF NOT EXISTS ks_baseball.player_batting_by_year (
    playerid text,
    yearid int,
    ab int,
    bb int,
    cs int,
    doubles int,
    games int,
    gidp int,
    hbp int,
    hits int,
    hr int,
    batting_avg decimal,
    ibb int,
    lgid text,
    rbi int,
    runs int,
    sb int,
    sf int,
    sh int,
    so int,
    stint int,
    teamid text,
    triples int,
    obp decimal, 
    slg decimal,
    ops decimal,
    ops_plus decimal,
    PRIMARY KEY (playerid, yearid));

CREATE TABLE IF NOT EXISTS ks_baseball.player_info (
    playerid text,
    birthyear int,
    birthmonth int,
    birthday int,
    birthcountry text,
    birthstate text,
    birthcity text,
    deathyear int,
    deathmonth int,
    deathday int,
    deathcountry text,
    deathstate text,
    deathcity text,
    namefirst text,
    namelast text,
    namegiven text,
    weight double,
    height text,
    bats text,
    throws text,
    debut date,
    finalgame date,
    retroid text,
    bbrefid text,
    PRIMARY KEY (playerid));
