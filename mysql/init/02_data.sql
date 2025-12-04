INSERT INTO team (name, city, stadium, founded_year) VALUES
('Dynamo Kyiv', 'Kyiv', 'NSC Olimpiyskiy', 1927),
('Shakhtar Donetsk', 'Donetsk', 'Donbas Arena', 1936),
('Barcelona', 'Barcelona', 'Camp Nou', 1899),
('Liverpool', 'Liverpool', 'Anfield', 1892),
('Real Madrid', 'Madrid', 'Santiago Bernabeu', 1902),
('Manchester United', 'Manchester', 'Old Trafford', 1878),
('Bayern Munich', 'Munich', 'Allianz Arena', 1900),
('Juventus', 'Turin', 'Allianz Stadium', 1897),
('Paris Saint-Germain', 'Paris', 'Parc des Princes', 1970),
('AC Milan', 'Milan', 'San Siro', 1899);


INSERT INTO referee (name, nationality, experience_year) VALUES
('Mark Clattenburg', 'England', 15),
('Felix Brych', 'Germany', 18),
('Damir Skomina', 'Slovenia', 20),
('Cuneyt Cakir', 'Turkey', 17),
('Bjorn Kuipers', 'Netherlands', 19),
('Antonio Mateu Lahoz', 'Spain', 14),
('Nicolas Rainville', 'Canada', 12),
('Jorge Larrionda', 'Uruguay', 16),
('Howard Webb', 'England', 22),
('Nicola Rizzoli', 'Italy', 21);


INSERT INTO tournament (name, year, host_country) VALUES
('UEFA Champions League', '2021', 'Europe'),
('Europa League', '2021', 'Europe'),
('Premier League', '2021', 'England'),
('La Liga', '2021', 'Spain'),
('Serie A', '2021', 'Italy'),
('Bundesliga', '2021', 'Germany'),
('Ligue 1', '2021', 'France');


INSERT INTO player (name, position, age, number, nationality, team_id) VALUES
('Andriy Yarmolenko', 'Winger', 32, 7, 'Ukraine', 1),
('Taison', 'Midfielder', 33, 10, 'Brazil', 2),
('Lionel Messi', 'Forward', 34, 10, 'Argentina', 3),
('Mohamed Salah', 'Forward', 29, 11, 'Egypt', 4),
('Karim Benzema', 'Forward', 33, 9, 'France', 5),
('Bruno Fernandes', 'Midfielder', 27, 18, 'Portugal', 6),
('Robert Lewandowski', 'Forward', 32, 9, 'Poland', 7),
('Cristiano Ronaldo', 'Forward', 36, 7, 'Portugal', 8),
('Kylian Mbappe', 'Forward', 22, 7, 'France', 9),
('Zlatan Ibrahimovic', 'Forward', 39, 11, 'Sweden', 10);


INSERT INTO coach (name, nationality, age, team_id) VALUES
('Mircea Lucescu', 'Romania', 76, 1),
('Roberto De Zerbi', 'Italy', 42, 2),
('Xavi Hernandez', 'Spain', 41, 3),
('Jurgen Klopp', 'Germany', 54, 4),
('Carlo Ancelotti', 'Italy', 62, 5),
('Ole Gunnar Solskjaer', 'Norway', 48, 6),
('Julian Nagelsmann', 'Germany', 34, 7),
('Massimiliano Allegri', 'Italy', 54, 8),
('Mauricio Pochettino', 'Argentina', 49, 9),
('Stefano Pioli', 'Italy', 56, 10);


INSERT INTO match_ (date, time, location, referee_id, tournament_id, home_team_id, away_team_id, home_team_goals, away_team_goals) VALUES
('2021-09-15', '19:45:00', 'Kyiv', 1, 1, 1, 2, 1, 1),
('2021-10-01', '21:00:00', 'Barcelona', 2, 1, 3, 4, 2, 0),
('2021-11-20', '18:30:00', 'Donetsk', 3, 2, 2, 1, 3, 2),
('2021-12-05', '20:15:00', 'Liverpool', 1, 3, 4, 3, 1, 2),
('2022-01-10', '19:00:00', 'Madrid', 4, 4, 5, 6, 0, 0),
('2022-02-14', '21:30:00', 'Munich', 5, 5, 7, 8, 4, 1),
('2022-03-22', '20:00:00', 'Paris', 6, 6, 9, 10, 2, 2),
('2022-04-18', '19:45:00', 'Milan', 7, 7, 10, 9, 1, 3),
('2022-05-25', '20:30:00', 'Manchester', 8, 3, 6, 4, 2, 1),
('2022-06-12', '18:00:00', 'Turin', 9, 5, 8, 7, 0, 2);