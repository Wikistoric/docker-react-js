# docker-react-js

This docker image will provide you with the ability to develop and test your application in a docker container. The way that this is implemented gives you the advantage of running multiple containers with different projects without having to always install all the libraries again.

`./build.sh` will build the docker image with the name `react-js`.
You can then run the container using `./start_docker.sh`. This will create a directory in you current folder and map it to the container. The directory called `./app` includes a template for your React application, created by `create-react-app`.

Open your browser at [localhost:8081](http://localhost:8081) to see your app. Everything that you edit will be updated immediately, but you might have to refresh the page in your browser.

Of course you can change the port mapping from 8081 to something else in `start-docker.sh`. To change the name of the image itself change it in both `start-docker.sh` and `build.sh`.
