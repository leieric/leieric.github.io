#!/bin/sh
bundle exec jekyll build
cp -r _site/* ../leieric.github.io
cd ../leieric.github.io
git add .
git commit -m "latest"
git push
# scp -r _site/* elei@eniac.seas.upenn.edu:/home1/e/elei/public_html
