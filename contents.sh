#!/bin/bash

outDir=.

MD=CPrograms.md
TITLE=title.md

echo "% Example C Programs" > $TITLE
echo "% Stephen Reaves" >> $TITLE
echo "% $(date +"%B %e, %Y")" >> $TITLE
echo >> $TITLE

if [ -f $MD ]
then
  rm $MD
fi

# Make sure HelloWorld comes first
echo "### HelloWorld" >> $MD
echo >> $MD
echo \`\`\`c >> $MD
cat HelloWorld/*.c >> $MD
echo \`\`\` >> $MD
echo >> $MD

# Print Makefile for giggles
#echo "### Makefile" >> $MD
#echo >> $MD
#echo >> \`\`\`Makefile $MD
#cat HelloWorld/Makefile >> $MD
#echo >> \`\`\` $MD
#echo >> $MD

for file in *
do
  if [ -d $file ]
  then
    clang-format -i -style=Google $file/*.c
    
    if [[ "$file" != "HelloWorld" ]]
    then
      echo "### $file" >> $MD
      echo >> $MD
      echo \`\`\`c >> $MD
      cat $file/*.c >> $MD
      echo \`\`\` >> $MD
      echo >> $MD
    fi
  fi
done

cat $TITLE $MD | pandoc -s --highlight-style=espresso -V geometry:margin=1in --toc \
  -f markdown -o $outDir/CPrograms.pdf

cat highlight.js styleLink.html title.html $MD | pandoc \
  --highlight-style=espresso -V geometry:margin=1in --toc -f markdown \
  -o $outDir/CPrograms.html
