// Create Workspace Directory
	mkdir goplay

// Export workspace directory
	export GOPATH=$HOME/goplay

// Create repo source
	cd goplay
	mkdir -p src/github.com/ekanna

// Create a project folder
	cd src/github.com/ekanna
	mkdir hello
	cd hello

// create .go file and fill this with hello world programe
	vim hello.go

// Now give install command 
//It will create bin dir in workspace dir with hello execuatble 
	go install

// Now execute hello
	~goplay/bin/hello

// Export bin path also so that it will be easy to execute executables
	export PATH=$HOME/goplay/bin:$PATH

// Now executing hello is easy just say hello
	hello

// Now create a another project
// Goto your workspace dir
	cd goplay/src/github.com/ekanna
	mkidr myproject
	cd mypoject
	vim myproject.go
	go install // to install

// Note that we have created only src dir in workspace
// bin and pkg directories in workspace are created by go install command
