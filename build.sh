#!/bin/sh
docker build -t symbiote/node:14.17 .

# and the latest tag also
docker build -t symbiote/node:latest .