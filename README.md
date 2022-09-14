## WHAT IS THIS?

This project will scaffold a basic react-app and provide a streamlined way to package it as a container.

## WHY USE THIS?

Containerzing the app from the start ensures the environment remains separate from the local system.
If you need to quickly get started with a react app, this will ease the process.

## USAGE

    Requirements:
        - Linux, Unix, or MacOS
        - Docker
        - Git

1. Clone this repo:

   `git clone https://github.com/arousseaumtl/react-bootstrap-docker`

2. Change directory, and build initial container:

    `cd react-bootstrap-docker`

    `./run.sh --build`

3. Run the container and it will populate the app/ folder with a react starter app:

    `./run.sh --run`

4. Once container is built and react-app is running, open a browser and open

    `localhost:3000`

6. Edit source files in app/ and once saved, the browser window will refresh itself. You do not ned to refresh the window.

7. To build a container with your app that is current, stop the current running container, then run the following command:

    `./run.sh --build`


If you need to make changes inside the container, such as adding packages to the project:

    `./run.sh --tty`
