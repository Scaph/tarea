#!/bin/bash

GIT_USER=$1
curl "https://api.github.com/users/$GIT_USER/repos"
curl -i "https://api.github.com/users/$GIT_USER/orgs"
curl "https://api.github.com/users/$GIT_USER"
