#!/bin/bash
echo '# vndb标签中英对照表' > glossary.md
echo '-------------------------------  |-----------------------------' >> glossary.md
rm pipe.txt;for a in {1..`wc tags.txt|gawk '{print $1}'`}                                                                                                                                                     ✔  1 task  13:28:04 
do echo \| >> pipe.txt
done
paste tags.txt pipe.txt tags_cn,txt >> glossary.md
