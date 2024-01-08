-- 1. What are the names of the players whose salary is greater than 100,000
SELECT player_name,salary
FROM players
WHERE salary>100000
-- ANSWER
-- The players whose salary is greater than 100000 are 
-- Faker 120000,Perkz 110000,Castle09 120000,Daron 125000,Forcez 130000,Joker 128000,Wringer 105000

-- 2.  What is the team name of the player with player_id = 3?
SELECT player_id,player_name
FROM players
WHERE player_id='3'

-- ANSWER 
-- The player with player_id=3 is Faker

-- 3. . What is the total number of players in each team?
SELECT COUNT(p.player_id),team_name
FROM players AS p
JOIN teams AS t
ON p.team_id=t.team_id
GROUP BY team_name

-- ANSWER
-- cloud9 has 3 players
-- Fnatic has 3 players
-- SKTelcom T1 3players
-- Team Liquid 3 players
-- G2 Esports  3 players

-- 4. What is the team name and captain name of the team with team_id = 2?
SELECT t.team_name,p.player_name,t.captain_id
FROM players AS p
JOIN teams AS t
ON p.team_id=t.team_id
WHERE t.team_id ='2'

-- ANSWER
-- team name and captain name of the team with team_id = 2 IS Fnatic with captain name JW,Pike,Forcez

-- 5.What are the player names and their roles in the team with team_id = 1?

SELECT player_name,role,team_id
FROM players
WHERE team_id='1'

-- ANSWER
-- player_name : shroud   role:Riffler
-- player_name : Castle09 role:AWP
-- player_name : KL34	  role:Mid Laner

-- 6. What are the team names and the number of matches they have won
SELECT team_id,team_name,COUNT(winner_id) AS num_matches_won
FROM matches AS m
JOIN teams AS t
ON m.winner_id=t.team_id
GROUP BY team_id

-- ANSWER
/*Cloud9 has won 3 matches
Fnatic has won 1 match
SK TelecomT1 won 4 matches
Team Liquid won 1 match
G2 Esports won 1 match */

-- 7. What is the average salary of players in the teams with country 'USA

SELECT t.country,AVG(Salary) AS Average_Salary
FROM players AS p
JOIN teams AS t
ON p.team_id=t.team_id
WHERE t.country= 'USA'

-- ANSWER 
The average salary of players from USA is $97,166

-- 8.Which team won the most matches?
SELECT team_id,team_name,COUNT(winner_id) AS num_matches_won
FROM matches AS m
JOIN teams AS t
ON m.winner_id=t.team_id
GROUP BY team_id
ORDER BY num_matches_won DESC
LIMIT 1

-- ANSWER
-- SK TelecomT1 has won 4 Matches

-- 9. . What are the team names and the number of players in each team whose salary is greater than 100,000?
SELECT team_name,COUNT(player_id) AS num_players,Salary
FROM players AS p
JOIN teams AS t
ON p.team_id=t.team_id
WHERE Salary>100000
GROUP BY team_name,Salary
ORDER BY Salary DESC
-- ANSWER
/*Fnatic	    1	130000
SK Telecom T1	1	128000
SK Telecom T1	1	125000
Cloud9	        1	120000
SK Telecom T1	1	120000
G2 Esports	    1	110000
G2 Esports	    1	105000*/

-- 10.What is the date and the score of the match with match_id = 3?
SELECT match_date,match_id,score_team1,score_team2
 FROM matches
 WHERE match_id='3'	
 
 -- ANSWER
 -- The match date was 2022-03-01 with score 17 -13
