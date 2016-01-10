/// <reference path="./typings/_custom.d.ts" />
var angular2_1 = require('angular2/angular2');
var router_1 = require('angular2/router');
var newsletters_1 = require('./services/newsletters');
var app_1 = require('./app');
angular2_1.bootstrap(app_1.App, [router_1.ROUTER_BINDINGS, newsletters_1.Newsletters, angular2_1.bind(router_1.LocationStrategy).toClass(router_1.HashLocationStrategy)]);
