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
