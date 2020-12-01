#!/usr/bin/env sh

function summed(x,y)
    if [ $x + $y ] == 2020 then
        return true
    end
done

for x in `cat input.txt`
do
  echo $x
done