-- 1. User Engagement and Activity Analysis

-- Overall user engagement metrics
SELECT 
    u.UserID,
    u.Username,
    u.TotalPoints,
    COUNT(DISTINCT s.SightingID) AS TotalSightings,
    COUNT(DISTINCT uqr.QuizID) AS QuizzesTaken,
    COUNT(DISTINCT ub.BadgeID) AS BadgesEarned,
    SUM(ua.Duration) AS TotalActivityDuration
FROM 
    Users u
LEFT JOIN Sightings s ON u.UserID = s.UserID
LEFT JOIN UserQuizResults uqr ON u.UserID = uqr.UserID
LEFT JOIN UserBadges ub ON u.UserID = ub.UserID
LEFT JOIN UserActivity ua ON u.UserID = ua.UserID
GROUP BY 
    u.UserID, u.Username, u.TotalPoints
ORDER BY 
    u.TotalPoints DESC;

-- Most used app features
SELECT 
    af.FeatureName,
    COUNT(ua.ActivityID) AS UsageCount,
    AVG(ua.Duration) AS AvgDuration
FROM 
    AppFeatures af
LEFT JOIN UserActivity ua ON af.FeatureID = ua.FeatureID
GROUP BY 
    af.FeatureID, af.FeatureName
ORDER BY 
    UsageCount DESC;

-- 2. User Performance in Conservation Quizzes

-- Average quiz scores by difficulty
SELECT 
    cq.Difficulty,
    AVG(uqr.Score) AS AvgScore,
    COUNT(DISTINCT uqr.UserID) AS ParticipantCount
FROM 
    ConservationQuizzes cq
JOIN UserQuizResults uqr ON cq.QuizID = uqr.QuizID
GROUP BY 
    cq.Difficulty
ORDER BY 
    AvgScore DESC;

-- Correlation between quiz performance and user engagement
SELECT 
    u.UserID,
    u.Username,
    AVG(uqr.Score) AS AvgQuizScore,
    COUNT(DISTINCT s.SightingID) AS TotalSightings,
    u.TotalPoints
FROM 
    Users u
LEFT JOIN UserQuizResults uqr ON u.UserID = uqr.UserID
LEFT JOIN Sightings s ON u.UserID = s.UserID
GROUP BY 
    u.UserID, u.Username, u.TotalPoints
ORDER BY 
    AvgQuizScore DESC;

