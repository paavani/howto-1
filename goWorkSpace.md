Create Workspace Directory
-------------------------------
	mkdir goplay

Export workspace directory
-------------------------------
	export GOPATH=$HOME/goplay

Create repo source
-------------------------------
	cd goplay
	mkdir -p src/github.com/ekanna

Create a project folder
-------------------------------
	cd src/github.com/ekanna
	mkdir hello
	cd hello

Create .go file and fill this with hello world programe
-------------------------------
	vim hello.go

Now give install command. It will create bin dir in workspace dir with hello execuatble 
-------------------------------
	go install

Now execute hello
-------------------------------
	~goplay/bin/hello

Export bin path also so that it will be easy to execute executables
-------------------------------
	export PATH=$HOME/goplay/bin:$PATH

Now executing hello is easy just say hello
-------------------------------
	hello

Now create a another project Goto your workspace dir
-------------------------------
	cd goplay/src/github.com/ekanna
	mkidr myproject
	cd mypoject
	vim myproject.go
	go install // to install

Note that we have created only src dir in workspace
bin and pkg directories in workspace are created by go install command

Add these two lines to /etc/bashrc file in mac to add these paths permanently
In linux .bashrc file
Use sudo to edit this file
------------------------------------------------
	export GOPATH=$HOME/goplay
	export PATH=$HOME/goplay/bin:$PATH

## Cross Compiling GO

#### To cross compile go source code must be available. Install go from source 
	$ hg clone https://code.google.com/p/go
	$ cd go/src
	$ ./all.bash

#### Install goxc
	$ go get github.com/laher/goxc
	
#### Create compilers for all OS and ARCH
	goxc -t

### Now to build and compile

### To build to specified arch and os
	$ cd path/to/app/dir
	$ GOARCH=arm GOOS=linux go build helloworld.go

### To build for all
	$ cd path/to/app/dir
	$ goxc



