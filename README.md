# docker-react-js

This docker image will provide you with the ability to develop and test your application in a docker container. The way that this is implemented gives you the advantage of running multiple containers with different projects without having to always install all the libraries again.

If you just want the image and not customize it or learn/play around you can also just pull the image directly from Docker Hub: `docker pull wikistoric/react-js:latest`. Then look at [`start_docker.sh`](https://github.com/Wikistoric/docker-react-js/blob/main/start_docker.sh) to understand how to run it.

Otherwise clone this repo and then:

`./build.sh` will build the docker image with the name `react-js`.
You can then run the container using `./start_docker.sh`. This will create a directory in you current folder and map it to the container. The directory called `./app` includes a template for your React application, created by `create-react-app`.

Open your browser at [localhost:8081](http://localhost:8081) to see your app. Everything that you edit will be updated immediately, but you might have to refresh the page in your browser.

Of course you can change the port mapping from 8081 to something else in `start-docker.sh`. To change the name of the image itself change it in both `start-docker.sh` and `build.sh`. For WebSocket connections back to your app the internal and external ports have to be the same. You can do this by setting the environment variable `PORT` inside the container, e.g. by using `--env PORT=8081` (see [`start_docker.sh`](https://github.com/Wikistoric/docker-react-js/blob/main/start_docker.sh))

Additional npm packages can be installed when running the container by using the environment variable `NPMINSTALL`. Set the variable to a list of package names seperated by space, e.g. `-env NPMINSTALL='react-router react-router-dom'`. It is actually the arguments that will be sent to `npm install`, so you can use the full syntax.
