all:

poster:
	chmod a+r *.html
	make -C poster

down: 
	git pull
	git restore-mtime

up:
	git remote set-url origin git@github.com:texamp/texamp.github.io.git
	echo git add -A
	-git commit -am "AC" --untracked-files=no
	git push
	
