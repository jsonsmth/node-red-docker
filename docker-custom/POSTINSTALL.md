The Node-RED admin panel is located at /nr-admin. On first visit to /nr-admin:

* Use `admin` as the username and `changeme123` as the password.
* Generate a new admin password via Terminal using the included `create_pass.sh` script.
* Copy the generated password from the output of the `create_pass.sh` script and update the `settings.js` file with the new hashed admin password.
* To update the default webpage shown when the app URL is loaded in the browser, update the contents of `default/index.html`
