SELECT
    CONCAT(a.id, ' ', username) AS id_username
    , email
FROM accounts AS a
JOIN accounts_photos AS ap ON a.id = ap.account_id
JOIN photos AS p ON ap.photo_id = p.id AND a.id = p.id
ORDER BY a.id ASC;