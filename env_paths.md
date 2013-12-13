### Environmental Variables
Usually environmetal variables are used to save configuration details

#### List all environment variables
	$ env
	
#### Create a new environment variable called GOPATH for the directory goplay
	$ export GOPATH=$Home/goplay # To know what is $HOME, give above "env" command
	
### PATH
PATH is an env variable. It contains lot of paths for frequently used commands. Each path is seperated by colon (;)  
In windows, it is seperated by semi-colon (;)

#### To Know what PATH contains
	$ env | grep PATH
	# Alternatively
	$ echo $PATH # $ is used infront of PATH to indicate it is variale. Otherwise it will simply print PATH
	
#### How to add a new paths to $PATH
	$ export PATH=$PATH:my/new/path # Note : is seperator and $ is to denote variable
	
	# it will append new path to $PATH.
	# It is like x = x + y 
	# PATH = $PATH : newPath
	
	# If you want to give first priority to your newly added path
	# Instead of x = x + y it will be x = y + x
	
	$ export PATH=my/new/path:$PATH
	
	# some examples of PATH with $HOME.
	
	$ export PATH=$HOME/my/new/path:$PATH
	$ export PATH=$PATH:$HOME/my/new/path
	
	# To know what is $HOME
	
	$ echo $HOME
	# Alternatively
	$ env | grep HOME
	
