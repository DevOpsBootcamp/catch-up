DROP USER vagrant@localhost;
FLUSH PRIVILEGES;
CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON nobel.* TO 'vagrant'@'localhost' WITH GRANT OPTION;
DROP database systemview;
CREATE database systemview;
GRANT ALL PRIVILEGES ON systemview.* TO 'vagrant'@'localhost' WITH GRANT OPTION;
