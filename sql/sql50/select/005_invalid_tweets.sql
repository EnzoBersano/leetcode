/*
LeetCode 1683 - Invalid Tweets
Easy

Schema:
Tweets(tweet_id, content)

Task:
Return the ids of tweets whose content has more than 15 characters.

Result can be returned in any order.
*/

SELECT t.tweet_id
FROM Tweets t
WHERE LENGTH(t.content) > 15;

-- Pattern: Row filtering with string function
-- Key Insight: LENGTH(content) counts characters
-- keep only rows where count is strictly greater than 15.