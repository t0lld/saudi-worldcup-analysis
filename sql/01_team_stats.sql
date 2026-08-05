

USE worldcup;

SELECT 
    t.team_name,
    SUM(m.total_shots)       AS total_shots,
    SUM(m.shots_on_target)   AS shots_on_target,
    SUM(m.corners)           AS corners,
    SUM(m.fouls)             AS fouls,
    SUM(m.offsides)          AS offsides,
    SUM(m.saves)             AS saves
FROM match_team_stats m
INNER JOIN teams t
    ON t.team_id = m.team_id
WHERE t.team_id = 31;
