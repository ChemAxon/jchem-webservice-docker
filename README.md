This is only an example dockerization of [ChemAxon JChem Web Services](https://chemaxon.com/products/jchem-engines). We don't suggest to use this exact image in production but it can provide an example to start building your own image.

# 1. Prerequisets

* docker installed
* Copy the war file from the latest JChem Web Services (JChem Web Services 18.22: https://chemaxon.com/download?dl=%2Fdata%2Fdownload%2Fwebservices%2F18.22.0%2Fwebservices-18.22.0-8840-b602.zip ) next to Dockerfile with the name: __webservices.war__
* Copy a ChemAxon Web Services license next to Dockerfile with name: __license.cxl__
* you can set up your databse connection in ws-config.xml
    
After settings you should have the following files in the directory:
```
Dockerfile
docker-compose.yml
license.cxl
LICENSE.txt
README.md
webservcies.war
ws-config.xml
```
    
# 2. Building the image:

* Run: `docker build -t cxn/jchem_webservices:latest .`
    
This will build an image that is called cnx/jchem_webservcies with the tag: latest. This image is based on Tomcat 8.53.34 and uses OpenJDK 8 to run JChem Web Services.
    
# 3. Starting a container

* Run `docker run -p 8080:8080 -ti cxn/jchem_webservices:latest`
    
This will start the container and JChem Web Services in Tomcat.

You can connect to the service on http://localhost:8080/webservice/

# 4. Using docker-compose

JChem Web Services can also be started with docker-compose. You should only do steps from [#1](https://github.com/ChemAxon/jchem-webservice-docker#1-prerequisets) (extended with docker-compose installed) and than simply run `docker-compose up`
