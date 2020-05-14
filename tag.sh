#!/usr/bin/env bash
. config
docker tag kazusato/pandoc-ubuntu:$TAG demoreg.azurecr.io/kazusato/pandoc-ubuntu:$TAG
