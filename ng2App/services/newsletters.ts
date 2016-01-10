/// <reference path="../typings/_custom.d.ts" />

import { Injectable } from 'angular2/angular2';

@Injectable()
export class Newsletters {
	url: string;
	constructor() {
		this.url = 'http://localhost:3000';
	}
	
	public fetchAll () {
		return window.fetch(this.url + '/newsletters');
	}
}