#!/bin/zsh
mkdir temp
cd temp
for i in {1..`curl https://vndb.org/g/list | hq a data|grep last|head -n 1| sed 's!<a href="?o=a&amp;p=!!g;s!&amp;q=&amp;s=name">last »</a>!!g'`}
do  curl -O 'https://vndb.org/g/list?p='$i
    sleep 3
done

cat *|hq td.tc3 text|grep -v deleted|grep -v ▴▾ > 0
cat *|hq td.tc3 data|grep -v deleted|hq a attr href|grep -v o > 1

paste 0 1|sort|gawk '{print $NF}' > 2
../process.sh < 2 > 3
mv 3 ../../tags_note.txt

