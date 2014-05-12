SHELL := /bin/bash

.PHONY : all
all :

%.pdf : %.txt
	@pdftotext $^

%.odt : %.doc
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.doc : %.txt
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.docx : %.ppt
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"
