/// <reference path="./typings/_custom.d.ts" />
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var angular2_1 = require('angular2/angular2');
var router_1 = require('angular2/router');
var index_1 = require('./components/index/index');
var App = (function () {
    function App() {
        this.title = 'LoveNewsletters';
    }
    App = __decorate([
        angular2_1.Component({
            selector: 'ng2app'
        }),
        angular2_1.View({
            directives: [router_1.ROUTER_BINDINGS],
            template: "\t\t\n\t\t<main>\n\t\t\t<router-viewport></router-viewport>\n\t\t</main>\n\t"
        }),
        router_1.RouteConfig([
            { path: '/', redirectTo: '/index' },
            { path: '/index', as: 'index', component: index_1.Index }
        ]), 
        __metadata('design:paramtypes', [])
    ], App);
    return App;
})();
exports.App = App;
