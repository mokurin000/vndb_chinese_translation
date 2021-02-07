#/bin/zsh
while read link
do 	curl https://vndb.org$link | hq p.description text | head -n 1 
	sleep 0.5
done
