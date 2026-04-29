/*
LeetCode 1148 - Article Views I
Easy

Schema:
Views(article_id, author_id, viewer_id, view_date)

Task:
Return unique author ids who viewed at least one of their own articles.

Sort by id ascending.
*/

SELECT DISTINCT a.author_id AS id
FROM Views a
WHERE a.author_id = a.viewer_id
ORDER BY id ASC;

-- Pattern: Self-match filtering + DISTINCT
-- Key Insight: Use table alias for readability; duplicates require DISTINCT.