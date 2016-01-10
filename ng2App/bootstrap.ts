/// <reference path="./typings/_custom.d.ts" />

import { bootstrap, bind } from 'angular2/angular2';

import { ROUTER_BINDINGS, LocationStrategy, HashLocationStrategy } from 'angular2/router';

import { Newsletters } from './services/newsletters';
import { App } from './app';

bootstrap(App, [ROUTER_BINDINGS, Newsletters, bind(LocationStrategy).toClass(HashLocationStrategy)]);