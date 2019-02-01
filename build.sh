#!/usr/bin/env bash
mkdir -p /project/out
docker-compose run jinja2cli cv.tex.j2 confidential.yaml > ./tex/cv_confidential.tex
docker-compose run jinja2cli cv.tex.j2 public.yaml > ./tex/cv.tex
docker-compose run xelatex -output-directory=/project/out cv_confidential.tex
docker-compose run xelatex -output-directory=/project/out cv.tex