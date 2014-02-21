CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON nobel.* TO 'vagrant'@'localhost' with GRANT OPTION;
CREATE database systemview;
GRANT ALL PRIVILEGES ON systemview.* TO 'vagrant'@'localhost' with GRANT OPTION;

