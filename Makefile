all: resume.pdf resume.html

resume.pdf: resume.md
	pandoc --standalone --output=resume.pdf resume.md
	
resume.html: resume.md
	pandoc --standalone --output=resume.html resume.md


clean:
	rm -f resume.pdf
	rm -f resume.html
