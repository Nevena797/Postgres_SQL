UPDATE countries
SET country_name = 'Burma'
WHERE country_name = 'Myanmar';
INSERT INTO monasteries (monastery_name, country_code)
VALUES ('Hanga Abbey', 'TZ');

SELECT co.continent_name
	, c.country_name
	, COUNT(m.id) AS monastery_count
FROM continents AS co
LEFT JOIN countries c USING (continent_code)
LEFT JOIN monasteries m USING (country_code)
WHERE three_rivers IS NOT TRUE
GROUP BY country_name, continent_name
ORDER BY monastery_count DESC
	, c.country_name ASC;