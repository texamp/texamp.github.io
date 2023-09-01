all:

poster:
	chmod a+r *.html
	make -C poster

up:
	git remote set-url origin git@github.com:texamp/texamp.github.io.git
	git add -A
	git commit -am "AC"
	git push
	
