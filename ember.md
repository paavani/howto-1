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

3. Install other static assets 

		bower install bootstrap --save  // it will save a reference in bower.json file

4. Load other static assets via Brocfile.js

		app.import('./bower_components/bootstrap/dist/css/bootstrap.min.css');

5. Eidt app/styles/app.css and add this so that content under menu bar is visible.
	
		body {
			padding-top: 70px;
		}

6. Create app/adapters/application.js

		import DS from 'ember-data';
		export default DS.RESTAdapter.extend({
			namespace: 'api/v1',
			host: 'http://127.0.0.1:6789' //api server
		});

7. Edit config/environment.js to allow cross orign requests

		Add to ENV object below two propertis
			contenetSecurityPolicyHeader: 'Content-Security-Policy',
			contentSecurityPolicy: {
				'connect-src': "'self ws://localhost:35729 http://127.0.0.1:6789"
		},

8. Edit config/environment.js to change url patteren

		locationType: 'auto' // change 'auto' to 'hash' to make urls '#' driven

		If you want to maintain 'auto' you need to serve index.html file from server, insead of sending 404 not found

		// In goji.io framework for golang
		goji.NotFound(index)

		func index(w http.ResponseWriter, req *http.Request) {
			http.ServeFile(w, req, "./dist/index.html")
		}

9. Create a resource

		ember generate resource faq
