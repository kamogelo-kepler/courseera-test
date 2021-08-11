#!/bin/sh
mvn clean package && docker build -t com.mycompany/index.html .
docker rm -f index.html || true && docker run -d -p 9080:9080 -p 9443:9443 --name index.html com.mycompany/index.html