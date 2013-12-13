### Environmental Variables
Usually environmetal variables are used to save configuration details

#### List all environment variables
	$ env
	
#### Create a new environment variable called GOPATH for the directory goplay
	$ export GOPATH=$Home/goplay
	
### PATH
1. PATH is an env variable created by OS unlike the above GOPATH. 
2. It contains lot of paths for frequently used commands. 
3. Each path is seperated by colon (:)
4. In windows, it is seperated by semi-colon (;)

#### To Know what PATH contains
	$ env | grep PATH
	# Alternatively
	$ echo $PATH # $ is used infront of PATH to indicate it is variale. Otherwise it will simply print PATH
	
#### How to add a new paths to $PATH
	$ export PATH=$PATH:my/new/path # Note : is seperator and $ is to denote variable
	
	# it will append new path to $PATH.
	# It is like x = x + y 
	# PATH = $PATH + :newPath
	
#### If you want to give first priority to your newly added path
	# Instead of x = x + y it will be x = y + x
	
	$ export PATH=my/new/path:$PATH
	
#### some examples of PATH with $HOME.
	
	$ export PATH=$HOME/my/new/path:$PATH
	$ export PATH=$PATH:$HOME/my/new/path
	
#### To know what is $HOME
	
	$ echo $HOME
	# Alternatively
	$ env | grep HOME
	
#### To save these env variables permanently instead of current session add them to a file
1. In case of MAC  /etc/bashrc
2. In case of linux  .bashrc
