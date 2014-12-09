console.log("running iconable.js");

var casper = require('casper').create();
var username = casper.cli.get("username");
var password = casper.cli.get("password");

console.log(username, password);
var links = [];

casper.start('http://ienabler.canterbury.ac.nz:900/', function() {
    this.fill('form[action="/"]', { DATA: username}, true);
});

casper.then(function() {
    this.fill('form[action="/"]', { DATA: password }, true);
});

casper.then(function() {
    this.fill('form[action="/"]', {}, true);
});

casper.run(function() {
    // echo results in some pretty fashion
    this.echo('You should be logged in now. ');
    casper.exit();
});