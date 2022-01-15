to start using docker compose 

run >
 docker-compose -f docker-compose.yaml up



install node js
navigate app folder
npm i
start app > node server.js

To build a docker image from the application

docker build -t my-local-mongoapp:1.0 .       

The dot "." at the end of the command denotes location of the Dockerfile.

> docker rmi imagename ( to remove an image)
> eg docker rmi my-local-mongoapp:1.0

> Moving the web app to container
> docker build -t my-local-mongoapp:1.0 . 
> docker images my-local-mongoapp:1.0
> docker tag my-local-mongoapp:1.0 localhost:5000/my-local-mongoapp:1.0
> docker images localhost:5000/my-local-mongoapp:1.0

updated the tagged image in docker compose to bundle everything together

> ensure private registry is runnig , if not run below to start in 
 docker run -d -p 5000:5000 --restart=always --name registry registry:2
> docker push localhost:5000/my-local-mongoapp:1.0 ( push to private registry)

> docker-compose -f docker-compose.yaml up