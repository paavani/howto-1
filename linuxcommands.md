Frequently used Linux Terminal Commands
=======================================

To create a directory/folder
----------------------------
	mkdir myapps/app/tasks
	# suppose if app folder is not exist then it will through error
	# If you want to create a parent folder if not available automatically
	mkdir -p myapps/app/tasks

To create a file:
-----------------
	touch myfile

To view a file
--------------
	cat myfile

To remove/delete a file
------------------------
	rm filename
	# if you want to get a prompt asking you do u want to delete file? y/n:
	rm -i filename

To remove a direcory
--------------------
	rm -rf dirname

To copy a file
---------------
	cp filename

To rename a file
-----------------
	mv myoldfile mynewfile

To access remote machine
------------------------
	ssh -l user machine
	ssh -l root finance
	ssh user@machine

To handle Proxies
-------------------
	export http_proxy=http://192.168.5.100:80
	export https_proxy=https://192.168.5.100:80
	export ftp_proxy=ftp://192.168.5.100:80

To remove Proxy setting when you have a direct access
-----------------------------------------------------
	export http_proxy=
	export https_proxy=
	export ftp_proxy=

To copy file/directory from one machine to another machine
----------------------------------------------------------
	# push to remote machine
	sudo scp -r filename user@machine:path
	sudo scp -r koti/kanna root@finance:myfolder/subfolder
	sudo scp -r koti/kanna root@finance:/home/folder

	# pull from remote machine
	sudo scp -r root@finance:/home/folder koti/kanna

To Run Processes in the background
----------------------------------
	nohup application filename > output.log &
	nohup node server11.js > output.log &

To know list of processes running
---------------------------------
	ps -ef

To kill the running process
---------------------------
	kill processID
	kill 25998

To add a path for node
----------------------
	export NODE_PATH="/usr/local/lib/node"

Mongodb
----------------------
	/etc/init.d/mongodb status
	/etc/init.d/mongodb start
	/etc/init.d/mongodb stop
	/etc/init.d/mongodb restart

Convert as Executable
---------------------
	chmod 0777 binaryName
	./binaryName

Domain Name Mappings in Mac OS
-------------------------------
	# To map your IP address to the below hosts
	# edit
	sudo vim /etc/hosts
	# Add below line in this file
	koteswara.sub.example.com koteswara localhost

Creating tar.gz file for deployment
--------------------------------------
	tar -czvf myname.tar.gz sourceFolder # Contents of source folder conted as .tar.gz
	# c for create; z for zip ; v for verbose list files ; f for file
	# Use http://explainshell.com/ to know the meaning of the command
	# For golang project sourceFolder contains go binary and static files
	
Extracting on Deployment machine
--------------------------------
	tar -xzvf myname.tar.gz optionalTargetFolder # if no folder name is specified it will extract to cwd
	# x for Extract

Excelent Linux Commands Tutorial
--------------------------------
Linux Commands In Structured Order with Detailed Reference - See more at: http://linoxide.com/guide/linux-command-shelf.html#sthash.wdcmOdwg.dpuf

To Remove Entries from known hosts
----------------------------------
	ssh-keygen -R hostname

	Once i created a digitalOcean server, it has provided an ip. 
	I used ssh to access this machine. At that time this ip got added to known_hosts of .ssh folder
	Later i deleted this server and again created a new server but digitalOcean assigned same ip for the new server.
	When i tried to access this machine via ssh, it throwed an err as finger print doesn't match. Used the above command to solve this problem.
