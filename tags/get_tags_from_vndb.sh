#!/bin/zsh
work_dir=`mktemp -td XXXXXXXXXX`
current_dir="`pwd`"
cd "${work_dir}"
for i in {1..`curl https://vndb.org/g/list | hq a data|grep last|head -n 1| sed 's!<a href="?o=a&amp;p=!!g;s!&amp;q=&amp;s=name">last »</a>!!g'`}
do  curl -O 'https://vndb.org/g/list?p='$i
    sleep 3
done
cat *|hq td.tc3 text|grep -v deleted|grep -v ▴▾|sort > "${current_dir}/tags.txt"
