#!/usr/bin/env bash

docker run --rm -v $(pwd):/work kazusato/pandoc-ubuntu:v1 platex hello.tex
docker run --rm -v $(pwd):/work kazusato/pandoc-ubuntu:v1 dvipdfmx hello.dvi
