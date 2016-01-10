/// <reference path="../../typings/_custom.d.ts" />

import { Component, View, NgFor, Inject } from 'angular2/angular2';
import { RouterLink, RouteParams } from 'angular2/router';
import { Newsletters } from '../../services/newsletters';
import { status, json } from '../../utils/fetch'

@Component({
	selector: 'index',
	viewProviders: [Newsletters]
})
@View({
	directives: [NgFor, RouterLink],
	templateUrl: 'index.html',
	styleUrls: ['index.css']
})

export class Index {
	newsletters: Object;
	
	constructor(service: Newsletters) {
		service.fetchAll().then(status).then(json).then((response) => { 
			this.newsletters = response.newsletters;
			})
	}

	public sayClick () {
		alert('You clicked!!')
	}
}