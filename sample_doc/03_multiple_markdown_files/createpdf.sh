#!/usr/bin/env bash

docker run --rm -v $(pwd):/work kazusato/pandoc-ubuntu:v1 \
	pandoc *.md \
	-o article.pdf \
	--pdf-engine=lualatex \
	-N \
	-V documentclass=bxjsarticle \
	-V classoption=pandoc
