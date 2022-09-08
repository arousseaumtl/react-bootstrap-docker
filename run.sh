#!/bin/bash

APP_NAME=$(basename $(pwd))
case "$(uname -m)" in
  *aarch* ) MACHINE_TYPE=linux/arm64;;
  *arm* ) MACHINE_TYPE=linux/arm64;;
  "x86_64" ) MACHINE_TYPE=linux/amd64;;
esac

if [ $# -eq 0 ]
  then
    echo "Usage: run.sh [--run (-r), --build (-b), -tty (-t)"
  else
    [[ "$@" =~ "--run" || "$@" =~ "-r" ]] && ( docker run --rm -v $(pwd)/app:/home/user/app -p 3000:3000 $APP_NAME )
    [[ "$@" =~ "--build" || "$@" =~ "-b" ]] && ( docker build --platform=${MACHINE_TYPE} -t $APP_NAME:latest . )
    [[ "$@" =~ "--tty" || "$@" =~ "-t" ]] && ( docker run -it -v $(pwd)/app:/home/user/app --entrypoint /bin/sh $APP_NAME -c "cd app; exec sh")
fi
