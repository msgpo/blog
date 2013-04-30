#!/bin/bash

for f in *.py;
do
    pygmentize -f html -O style=colorful,noclasses -l python $f > `basename $f .py`.html;
done
