SELECT properties.*, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN  property_reviews ON property_id = properties.id
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4 AND  city LIKE '%Vancouver%'
ORDER BY properties.cost_per_night DESC
LIMIT 10;
