# Realtime Sails.js
This is a standard site (st) that shows how to use `socket.io` with Sails.js framework. It's just a minimal app with little functionality, and acts as a common chat where anyone can connect.

## Installation
To get it to work no database is needed, but there are some important previous steps. It uses CoffeeScript, both in the front-end and back-end. 

- Install Node.js, NPM and bower.
- Install modules: `npm install`.
- Fix the Jade Issue. If an error appears when lifting Sails with `sails lift` (at the root directory) concerning the Jade template engine, install it manually: `npm install jade`.
- Install the front-end dependencies (some might not be used yet but are intended for the future): `bower install`.
- That should be all. Just start the app with: `sails lift` or `coffee app.coffee`.

Try to open several tabs to check that the chat works and all the tabs are updated.

## License
MIT ~ 2014 ~ Ignacio Carbajo.

Sails.js and all of the rest of external technologies are not related with this app's author.