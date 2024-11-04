-- @block ALERT: Drop all tables - this will delete all data in the database
SET FOREIGN_KEY_CHECKS = 0; -- Disable foreign key checks to avoid errors during drop

-- Generate and execute DROP TABLE statements for each table
SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;')
INTO @drop_statements
FROM information_schema.tables
WHERE table_schema = 'your_database_name'; -- Replace with your database name

-- Execute the generated statements
PREPARE stmt FROM @drop_statements;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET FOREIGN_KEY_CHECKS = 1; -- Re-enable foreign key checks
