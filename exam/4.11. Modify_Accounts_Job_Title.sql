CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
LANGUAGE plpgsql
AS $$
DECLARE
    account_id INTEGER;
    current_job_title VARCHAR(40);
BEGIN
    -- Find account ID associated with the given address
    SELECT a.id INTO account_id
    FROM accounts AS a
    JOIN addresses AS ad ON a.id = ad.account_id
    WHERE ad.street = address_street AND ad.town = address_town;

    -- If account exists, modify job title
    IF account_id IS NOT NULL THEN
        -- Retrieve current job title
        SELECT job_title INTO current_job_title
        FROM accounts
        WHERE id = account_id;

        -- Update job title by appending "(Remote) "
        UPDATE accounts
        SET job_title = '(Remote) ' || current_job_title
        WHERE id = account_id;

        RAISE NOTICE 'Job title for account updated successfully.';
    ELSE
        RAISE NOTICE 'No account found with specified address: %, %', address_street, address_town;
    END IF;
END;
$$;