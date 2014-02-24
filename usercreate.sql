-- This creates a user if it doesn't exist.
GRANT USAGE ON *.* TO 'vagrant'@'localhost';

-- Drop the user and flush the privileges to ensure everything is correct.
DROP USER 'vagrant'@'localhost';
FLUSH PRIVILEGES;

-- Add user identified by 'password'.
CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges and create a database where it doesn't exist.
GRANT ALL PRIVILEGES ON nobel.* TO 'vagrant'@'localhost' WITH GRANT OPTION;
CREATE database IF NOT EXISTS systemview;
GRANT ALL PRIVILEGES ON systemview.* TO 'vagrant'@'localhost' WITH GRANT OPTION;
