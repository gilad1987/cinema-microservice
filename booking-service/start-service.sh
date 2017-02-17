#!/usr/bin/env bash

docker service rm booking-service

docker service create --replicas 3 --name booking-service -l=apiRoute='/booking' -p 3002:3000 --env-file env crizstian/booking-service
