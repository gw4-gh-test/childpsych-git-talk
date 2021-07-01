#! /usr/bin/env bash

# Takes one parameter, the notebook file to view

export PATH=/opt/anaconda3/bin:$PATH

source activate ~/jupyter-notebooks/

jupyter nbconvert --to slides "$1" --reveal-prefix ../reveal.js --output index
mv index.slides.html index.html
