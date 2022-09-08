#!/bin/sh


if [[ "$(ls -A app/ | wc -w | xargs)" -gt "1" ]]
then
  npm start --prefix ./app
else
  rm app/.gitkeep;
  yes | npx create-react-app app && \
  FAST_REFRESH=false npm start --prefix ./app
fi
