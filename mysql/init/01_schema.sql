USE demo;

CREATE TABLE team (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(255) NOT NULL,
    city          VARCHAR(255),
    stadium       VARCHAR(255),
    founded_year  INT
);


CREATE TABLE referee (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    nationality     VARCHAR(255),
    experience_year INT
);


CREATE TABLE tournament (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(255) NOT NULL,
    year         VARCHAR(255),
    host_country VARCHAR(255)
);

CREATE TABLE player (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    position    VARCHAR(255),
    age         INT,
    number      INT,
    nationality VARCHAR(255),
    team_id     INT,
    CONSTRAINT fk_player_team
        FOREIGN KEY (team_id) REFERENCES team(id)
); 

CREATE TABLE coach (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    nationality VARCHAR(255),
    age         INT,
    team_id     INT,
    CONSTRAINT fk_coach_team
        FOREIGN KEY (team_id) REFERENCES team(id)
); 


CREATE TABLE match_ (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    date            DATE,
    time            TIME,
    location        VARCHAR(255),
    referee_id      INT,
    tournament_id   INT,
    home_team_id    INT,
    away_team_id    INT,
    home_team_goals INT,
    away_team_goals INT,
    CONSTRAINT fk_match_referee
        FOREIGN KEY (referee_id)    REFERENCES referee(id),
    CONSTRAINT fk_match_tournament
        FOREIGN KEY (tournament_id) REFERENCES tournament(id),
    CONSTRAINT fk_match_home_team
        FOREIGN KEY (home_team_id)  REFERENCES team(id),
    CONSTRAINT fk_match_away_team
        FOREIGN KEY (away_team_id)  REFERENCES team(id)
);


