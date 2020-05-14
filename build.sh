#!/usr/bin/env bash
. config
docker build -t kazusato/pandoc-ubuntu:$TAG .
