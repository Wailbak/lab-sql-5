ALTER TABLE STAFF DROP COLUMN PICTURE;

select * from sakila.staff;

INSERT INTO STAFF (FIRST_NAME, LAST_NAME, ADDRESS_ID, STORE_ID, ACTIVE, USERNAME, PASSWORD, LAST_UPDATE)
VALUES ('Tammy', 'Sanders', 2, 2, 1, 'tammys', 'ironhack', CURRENT_TIMESTAMP);

SET sql_safe_updates=0;

UPDATE sakila.staff
SET email = 'Tammy.Sanders@sakilastaff.com'
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';




SELECT customer_id FROM customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

SELECT staff_id FROM staff
WHERE first_name = 'Mike' AND last_name = 'Hillyer';

SELECT inventory_id FROM inventory
JOIN film ON inventory.film_id = film.film_id
WHERE title = 'Academy Dinosaur' AND store_id = 1;

INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, return_date, last_update)
VALUES (CURRENT_TIMESTAMP, 1, 130, 1, NULL, CURRENT_TIMESTAMP);

SELECT customer_id, email FROM customer WHERE active = 0;

CREATE TABLE deleted_users (
    customer_id INT,
    email VARCHAR(255),
    deletion_date TIMESTAMP
);

INSERT INTO deleted_users (customer_id, email, deletion_date)
VALUES 
(16, 'SANDRA.MARTIN@sakilacustomer.org', CURRENT_TIMESTAMP),
(64, 'JUDITH.COX@sakilacustomer.org', CURRENT_TIMESTAMP),
(124, 'SHEILA.WELLS@sakilacustomer.org', CURRENT_TIMESTAMP),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', CURRENT_TIMESTAMP),
(241, 'HEIDI.LARSON@sakilacustomer.org', CURRENT_TIMESTAMP),
(271, 'PENNY.NEAL@sakilacustomer.org', CURRENT_TIMESTAMP),
(315, 'KENNETH.GOODEN@sakilacustomer.org', CURRENT_TIMESTAMP),
(368, 'HARRY.ARCE@sakilacustomer.org', CURRENT_TIMESTAMP),
(406, 'NATHAN.RUNYON@sakilacustomer.org', CURRENT_TIMESTAMP),
(446, 'THEODORE.CULP@sakilacustomer.org', CURRENT_TIMESTAMP),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', CURRENT_TIMESTAMP),
(510, 'BEN.EASTER@sakilacustomer.org', CURRENT_TIMESTAMP),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', CURRENT_TIMESTAMP),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', CURRENT_TIMESTAMP),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', CURRENT_TIMESTAMP);




DELETE FROM payment WHERE customer_id IN (
    16, 64, 124, 169, 241, 271, 315, 368, 406, 446, 482, 510, 534, 558, 592
);







