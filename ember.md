## Ember Notes

### Prerequisites

1. Uninstall nodejs if it is already installed and Install it via NVM
	
	http://www.wenincode.com/installing-node-jsnpm-without-sudo/
	
2. Install bower via NPM

		npm install bower -g

3. Install ember cli

		npm install -g ember-cli


### Getting Started

1. Create new app

		ember new myapp
		cd myapp
		ember server

2. Set usepods to true in .ember-cli to use pod style structure

		{
  			"usePods": true,
  			"disableAnalytics": true
		}

2. Create a resource

		ember generate resource faq

3. Install other static assets 

		bower install bootstrap --save  // it will save a reference in bower.json file

4. Load other static assets via Brocfile.js

		app.import('./bower_components/bootstrap/dist/css/bootstrap.min.css');
