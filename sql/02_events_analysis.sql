

USE worldcup;
SELECT 
    'Saudi Arabia' AS team, 
    event_type, 
    COUNT(event_type) AS total  
FROM match_events 
WHERE team_id = 31 
GROUP BY event_type

UNION ALL
SELECT 
    'Saudi Arabia' AS team,
    'Goals Conceded' AS event_type,
    COUNT(event_type) AS total
FROM match_events 
WHERE match_id IN (15, 39, 64) 
    AND team_id != 31 
    AND event_type = 'Goal';

-- النتيجة النهائية: جدول واحد يحتوي كل أحداث السعودية الهجومية/
-- الانضباطية + صف إضافي يوضح عدد الأهداف المستقبلة.
