## WHAT IS THIS?

This project will scaffold a basic react-app and provide a streamlined way to package it as a container.

## WHY USE THIS?

If you need to quickly get started with a react app and want to it to be containerized, but are not sure how to do those things yet, this will ease the process.

## USAGE

    Requirements:
        - Linux or MacOS
        - Docker
        - Git

1. Clone this repo:

   '''git clone https://github.com/arousseaumtl/react-bootstrap-docker'''

2. Change directory, and build initial container:

    '''cd react-bootstrap-docker'''

    '''./run.sh --build'''

3. Once container is built and react-app is running, open a browser and open

    '''localhost:8080'''

4. Edit source files in app/ and once saved, you can refresh the browser window to see changes.

5. To build a container with your app that is current, stop the current running container, then run the following command:

    '''./run.sh --build'''
