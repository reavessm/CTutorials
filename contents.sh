#!/bin/bash

MD=CPrograms.md

echo "% Example C Programs" > $MD
echo "% Stephen Reaves" >> $MD
echo "% $(date +"%B %e, %Y")" >> $MD
echo >> $MD

for file in *
do
  if [ -d $file ]
  then
    clang-format -i -style=Google $file/*.c
    echo \#\# $file >> $MD
    echo >> $MD
    echo \`\`\`c >> $MD
    cat $file/*.c >> $MD
    echo \`\`\` >> $MD
    echo >> $MD
  fi
done

cat $MD | pandoc -s --highlight-style=espresso -V geometry:margin=1in --toc -f markdown -o /mnt/c/Users/sreaves/Desktop/CPrograms.pdf
cat highlight.js $MD | pandoc -c ~/CTutorials/style.css --highlight-style=espresso -V geometry:margin=1in --toc -f markdown -o /mnt/c/Users/sreaves/Desktop/CPrograms.html
