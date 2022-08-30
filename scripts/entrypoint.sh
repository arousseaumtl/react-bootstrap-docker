#!/bin/sh


if [[ "$(ls -A app/ | wc -w | xargs)" -gt "0" ]]
then
  npm start --prefix ./app
else
  yes | npx create-react-app app && \
  npm start --prefix ./app
fi
