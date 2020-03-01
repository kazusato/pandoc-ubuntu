#!/usr/bin/env bash

docker run --rm -v $(pwd):/work kazusato/pandoc-ubuntu:v1 \
	pandoc hello.md \
	-o hello.pdf \
	--pdf-engine=lualatex \
	-V documentclass=bxjsarticle \
	-V classoption=pandoc
