/// <reference path="../../typings/_custom.d.ts" />
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
var newsletters_1 = require('../../services/newsletters');
var fetch_1 = require('../../utils/fetch');
var Index = (function () {
    function Index(service) {
        var _this = this;
        service.fetchAll().then(fetch_1.status).then(fetch_1.json).then(function (response) {
            _this.newsletters = response.newsletters;
        });
    }
    Index.prototype.sayClick = function () {
        alert('You clicked!!');
    };
    Index = __decorate([
        angular2_1.Component({
            selector: 'index',
            viewBindings: [newsletters_1.Newsletters]
        }),
        angular2_1.View({
            directives: [angular2_1.NgFor, router_1.RouterLink],
            templateUrl: 'index.html',
            styleUrls: ['index.css']
        }), 
        __metadata('design:paramtypes', [newsletters_1.Newsletters])
    ], Index);
    return Index;
})();
exports.Index = Index;
