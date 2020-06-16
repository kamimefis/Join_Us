DROP DATABASE IF EXISTS join_us;
CREATE DATABASE join_us;
USE join_us;

CREATE TABLE users(
email VARCHAR(255) PRIMARY KEY,
created_at TIMESTAMP DEFAULT NOW()
);

-- INSERT INTO users(email) VALUES ('giroluna@yahoo.com'), ('rapcat@gmail.com');

SELECT * FROM users;
SELECT COUNT(*) FROM users;

/*
-- EJERCICIOS:
-- Encuentre el primer usuario creado:
SELECT date_format(MIN(created_at), '%M, %D %Y') AS earliest_date FROM users;

-- Encuentre el email del primer usuario creado:
SELECT email, created_at FROM users
ORDER BY created_at LIMIT 1;

-- otra solución:
SELECT email, created_at FROM users
WHERE created_at= (SELECT MIN(created_at) FROM users);

-- Cantidad de usuarios por mes:
SELECT monthname(created_at) AS month, COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC
;

-- Cantidad de usuarios de yahoo mail
SELECT COUNT(*) AS 'yahoo_users' FROM users
WHERE email LIKE '%@yahoo.com%';

-- Agrupar usuarios de acuerdo a su proveedor de email:
SELECT CASE 
         WHEN email LIKE '%@gmail.com' THEN 'gmail' 
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
         ELSE 'other' 
       end      AS provider, 
       Count(*) AS total_users 
FROM   users 
GROUP  BY provider 
ORDER  BY total_users DESC; 


*/




