#!/bin/sh
identify=/usr/bin/identify
scale=0.666
image=$1   # add input validation code

height=$($identify $image | cut -d\   -f3 | cut -dx -f1)
width=$($identify $image | cut -d\   -f3 | cut -dx -f2)
# newwidth="$(echo $width \* $scale | bc | cut -d. -f1)"
# newheight="$(echo $height \* $scale | bc | cut -d. -f1)"
echo "<img src=$image height=$height width=$width>"
# echo "<img src=$image height=$newheight width=$newwidth>"
exit 0
