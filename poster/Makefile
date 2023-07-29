all: qr poster

poster: qr
	pdflatex poster.tex
	pdfjam --outfile poster-a4.pdf --paper a4paper poster.pdf
	pdfjam --outfile tmp.pdf --papersize '{8.5in,12in}' poster.pdf
	gs -o poster-letter.pdf -sPAPERSIZE=letter -sDEVICE=pdfwrite -dFIXEDMEDIA  -dBATCH -dSAFER tmp.pdf
	convert poster-letter.pdf poster.jpg
	chmod a+r poster*.pdf poster.jpg

background:
	convert k2-background-poster.png  -crop 850x1200+300+0 k2-background-poster-2.png


poster: poster.pdf 


participants.tex: ../participants.html
	cat ../participants.html| grep '<li>'| cut -d',' -f1 | \
	  sed 's/<li>//' |\
	  grep -vE "Sell|Nirenberg|Temam|Pohozhaev|Pokhozhaev|Zakharov" |\
	  sed 's/&ouml;/\\"o/g; s/&auml;/\\"a/g' |\
	  sed "s/&eacute;/\\\'e/g; s/&aacute;/\\\'a/g; s/&agrave;/\\\'a/g" |\
	  sed 's/^.*$$/\\mbox{&}/' > participants.tex

qr:
	qrencode -o texamp-2024-qr.png 'http://comech.sdf.org/texamp-2024'
	chmod a+r texamp-2024-qr.png
