# Erp_Timesheet_Automation
-------------------------------------------
Introduction:
-------------------------------------------

* This code creates a new timesheet for the user and populates the field based on the input from the user and update the timesheet automatically.

* The user need not have to go the erpnext website to update the timesheet manually.

* This code gets the input from the user via terminal and does the work for the user.

-------------------------------------------
Prerequisite:
-------------------------------------------

There are two methods to install the dependencies before the program can be executed.

-------------------------------------------
Installing Dependencies via make install:
-------------------------------------------
* The user can run "make install" which will "install all the dependencies" or the user can follow manual installation.

-------------------------------------------
Manual Installation of Dependencies:
-------------------------------------------
* This code requires selenium package and geckodriver(firefox) for the web-browser.

-------------------------------------------
Installing Selenium:
-------------------------------------------

pip3 install -U selenium

--------------------------------------------------------------------------------------------------------
For installing geckodriver type the following command in the terminal and extract the files.
--------------------------------------------------------------------------------------------------------

wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux32.tar.gz

----------------------------
Steps to run the program:
----------------------------

* After checking out the files from github, the user has to follow the steps.


1)make install - This will install all the dependencies reuqired by the program. This will also create a folder "erp_timesheet" in the home directory and add the checked out python file into the erp_timesheet directory. (The python file will not contain .py extension)

Before proceeding the  next step(make setlink), the user must "close the terminal" and open a new terminal, as the path set will not be recognized by the old terminal.

2)make setlink - This step is required for the 'update_timesheet' code to navigate to the correct erp link while executing. The valid erp link will be set by the user by using the command 

make setlink link=["valid erp link"]

3) make clean - This command will remove the geckodriver tar file and its extracts.

4) After following all the above steps, the user can run the program by typing "update_timesheet" in the terminal.

* The user can run the python code anywhere, since the "make install" command adds the python file's location to the PATH

-------------------
Point To be Noted:
-------------------

* Internet is required for this code to work.

* While the code is being executed, if the network goes down, the code will try to refresh the page.

* After unsuccessful refreshing of page for 5 times, it will close the browser and start again from the beginning. If network has been established at that time, the code will execute successfully or else the code will notify the user, that network is down and closes the browser window(if opened) and safely exit the program.

* This code will work only if the activity_type, name of the project is already created for the user i.e it will work only for existing projects that requires timesheet updation. This code will not support projects that are yet to be created.

* If the user wishes to stop the program in the middle of the execution, the user should not close the browser manually, as the program will recognize that it was closed accidentally and will restart the program.

* Instead the user should stop the program in the terminal.(For linux - Ctrl + C).

* User may or may not type the full project name, as the code will match the name typed with the suggestion given by project column in ERP and will click the first suggestion provided.

* Hence it is advisable for the user to type atleast half of the name of the project as many projects may start with the same letter.
