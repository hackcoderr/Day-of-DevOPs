#!/bin/bash

# To be executed from project root
docker build -t ghcr.io/hackcoderr/apache:latest -f docker/apache.dockerfile .
