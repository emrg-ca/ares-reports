SHELL := /bin/bash

.PHONY : all
all :

%.txt : %.pdf
	@pdftotext $^

%.txt : %.odt
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.txt : %.docx
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.txt : %.doc
	@libreoffice --headless --convert-to txt:Text $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"
