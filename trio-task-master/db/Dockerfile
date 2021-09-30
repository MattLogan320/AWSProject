# Derived from official mysql image (our base image)
# Use mysql 5.7 as the flask-app is not set up to work with later versions
FROM mysql:5.7
# Add a database and root password
# For hints on how to do this, consult the mysql 5.7 image documentation
RUN mysql -h projectdatabase.crqyzgomrrql.eu-west-1.rds.amazonaws.com -P 3306 -u admin -p 
# Add the content of the .sql file to your image
# All scripts copied to docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY CreateTable.sql /docker-entrypoint-initdb.d