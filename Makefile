PYTHON = python3

VAR = export PATH=~/erp_timesheet:$$PATH
install:
	@echo "Installing the Required Packages"
	pip3 install -U selenium
	wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux32.tar.gz
	tar -xvf geckodriver-v0.24.0-linux32.tar.gz

	chmod 777 update_timesheet
	mkdir ~/erp_timesheet
	cp update_timesheet ~/erp_timesheet
	mv gecko* ~/erp_timesheet
	@echo '${VAR}' >> ~/.bashrc
	@echo '${VAR}'

setlink:
	@echo "Setting up ERP LINK"
	update_timesheet --setlink ${link}
	mv erp_link.txt ~/erp_timesheet
clean:
	rm -rf *~
	rm -rf ~/erp_timesheet


