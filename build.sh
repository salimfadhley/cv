#!/usr/bin/env bash
mkdir -p ./project/out
docker run -v `pwd`:/project -w /project/tex vikingco/jinja2cli:latest cv.tex.j2 confidential.yaml > ./tex/cv_confidential.tex
docker run -v `pwd`:/project -w /project/tex vikingco/jinja2cli:latest cv.tex.j2 public.yaml > ./tex/cv.tex
docker run -v `pwd`:/project -w /project/tex moss/xelatex xelatex -output-directory=/project/out cv_confidential.tex
docker run -v `pwd`:/project -w /project/tex moss/xelatex xelatex -output-directory=/project/out cv.tex