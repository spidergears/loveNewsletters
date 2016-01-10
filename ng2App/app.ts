/// <reference path="./typings/_custom.d.ts" />

import { Component, View } from 'angular2/angular2';
import { RouteConfig, ROUTER_BINDINGS } from 'angular2/router';

import { Index } from './components/index/index';

@Component({
	selector: 'ng2app'
})

@View({
	directives: [ROUTER_BINDINGS],
	template: `		
		<main>
			<router-viewport></router-viewport>
		</main>
	`
})

@RouteConfig([
  { path: '/', redirectTo: '/index' },
  { path: '/index', as: 'index', component: Index }
])

export class App {
	title: string;
	constructor() {
		this.title = 'LoveNewsletters';
	}
}