SELECT * FROM users;

INSERT INTO users (name, email, role_id) VALUES ('dan', 'dan@example.com', NULL), ('margaret', 'margaret@example.com', 2), ('callie', 'callie@example.com', 2), ('shawn', 'shawn@example.com', 2);

SELECT users.name, users.email, roles.name AS role FROM users JOIN roles ON users.role_id = roles.id;

-- List of roles along with the number of users that have that role
SELECT roles.name AS role, COUNT(users.name) AS total_users FROM users LEFT JOIN roles ON users.role_id = roles.id GROUP BY roles.name;

SELECT users.name, users.email, roles.name AS role FROM users RIGHT JOIN roles ON users.role_id = roles.id;