@echo off
call mvn clean package
call docker build -t com.mycompany/index.html .
call docker rm -f index.html
call docker run -d -p 9080:9080 -p 9443:9443 --name index.html com.mycompany/index.html