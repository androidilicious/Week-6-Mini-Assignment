-- Get all tables in the database
SELECT name FROM sqlite_master WHERE type='table';

-- Get sample data
SELECT * FROM university_rankings LIMIT 5;

-- Basic statistics by year
SELECT 
    year,
    COUNT(*) as total_universities,
    AVG(score) as avg_score,
    MIN(score) as min_score,
    MAX(score) as max_score
FROM university_rankings
GROUP BY year
ORDER BY year;

-- Insert new university (Duke Tech)
INSERT INTO university_rankings (institution, country, year, world_rank, score)
VALUES ('Duke Tech', 'USA', 2014, 350, 60.5);

-- Verify Duke Tech insertion
SELECT * 
FROM university_rankings 
WHERE institution = 'Duke Tech' 
AND year = 2014;

-- Count Japanese universities in top 200 (2013)
SELECT COUNT(*) 
FROM university_rankings
WHERE country = 'Japan' 
AND year = 2013
AND world_rank <= 200;

-- Get details of Japanese universities in top 200 (2013)
SELECT institution, world_rank, score
FROM university_rankings
WHERE country = 'Japan'
AND year = 2013
AND world_rank <= 200
ORDER BY world_rank;

-- Get University of Oxford's score (2014)
SELECT score 
FROM university_rankings 
WHERE institution = 'University of Oxford' 
AND year = 2014;

-- Update University of Oxford's score (2014)
UPDATE university_rankings 
SET score = score + 1.2
WHERE institution = 'University of Oxford' 
AND year = 2014;

-- Count universities below score threshold (2015)
SELECT COUNT(*) 
FROM university_rankings 
WHERE year = 2015 
AND score < 45;

-- Get universities to be deleted (2015, score < 45)
SELECT institution, score 
FROM university_rankings 
WHERE year = 2015 
AND score < 45;

-- Delete low scoring universities (2015)
DELETE FROM university_rankings 
WHERE year = 2015 
AND score < 45;

-- Verify minimum score after deletion (2015)
SELECT MIN(score) 
FROM university_rankings 
WHERE year = 2015;