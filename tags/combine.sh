#!/bin/zsh

output_file=readme.md

echo '# vndb标签中英对照表' > $output_file
echo -e 'English 英文                     | Chinese 中文                  |注释\n--------------------------------  |-------------------------------  |-----------------------------' >> $output_file
rm pipe.txt
for a in {1..`wc tags.txt|gawk '{print $1}'`} 
do echo \| >> pipe.txt
done
paste ./tags.txt ./pipe.txt ./tags_cn.txt ./pipe.txt ./tags_note.txt>> $output_file
