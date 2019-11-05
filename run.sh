#!/bin/bash

docker run -it -d --rm -p 127.0.0.1:4567:4567 --name wiki -e GITHUB_CLIENT_ID=0123456789 -e GITHUB_CLIENT_SECRET=0123456789 -e AUTH_USERS=email1,email2,email3 gollum_docker 
