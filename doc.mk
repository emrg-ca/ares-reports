SHELL := /bin/bash

.PHONY : all
all :

%.pdf : %.odt
	@libreoffice --headless --convert-to pdf $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.pdf : %.odp
	@libreoffice --headless --convert-to pdf $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

.PRECIOUS : %.odt
%.odt : %.doc
	@libreoffice --headless --convert-to odt $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.odt : %.docx
	@libreoffice --headless --convert-to odt $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

.PRECIOUS : %.odp
%.odp : %.ppt
	@libreoffice --headless --convert-to odp $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

%.odp : %.pptx
	@libreoffice --headless --convert-to odp $^ \
  "-env:UserInstallation=file:///tmp/libreofficebug"

# Word Template from OpenDocument Text Template
#%.dot : %.otd
#	@libreoffice --headless --convert-to dot $^ \
# "-env:UserInstallation=file:///tmp/libreofficebug"

# Powerpoint Template from OpenDocument Presentation Template
#%.pot : %.otp
#	@libreoffice --headless --convert-to pot $^ \
# "-env:UserInstallation=file:///tmp/libreofficebug"
