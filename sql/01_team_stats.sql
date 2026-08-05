-- ============================================================
-- 01_team_stats.sql
-- الهدف: استخراج الإحصائيات الهجومية والدفاعية العامة
--        لمنتخب السعودية (team_id = 31) في كأس العالم
-- المصدر: جدول match_team_stats مرتبط بجدول teams
-- ============================================================

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

-- ملاحظة: هذا الاستعلام يرجّع صفًا واحدًا (مجموع كل المباريات)
-- لأن الفلترة على فريق واحد بالتحديد.
