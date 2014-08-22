// taken from https://github.com/Teun/thenBy.js

// For multilevel comparision
var firstBy = (function(){
    function extend(f) {
        f.thenBy = tb; 
        return f;
    }   
    function tb(y) {
        var x = this;
        return extend(function(a, b) {
            return x(a,b) || y(a,b);
        }); 
    }   
    return extend;
})();

var sortBy1 = "age"
var s1 = function (a, b) {return a[sortBy1] < b[sortBy1] ? -1 : a[sortBy1] > b[sortBy1] ? 1 : 0;} 
var sortBy2 = "area"
var s2 = function (a, b) {return a[sortBy2] < b[sortBy2] ? -1 : a[sortBy2] > b[sortBy2] ? 1 : 0;} 
var sortBy3 = "name"
var s3 = function (a, b) {return a[sortBy3] < b[sortBy3] ? -1 : a[sortBy3] > b[sortBy3] ? 1 : 0;} 
var s = firstBy(s1).thenBy(s2).thenBy(s3)
var array = [{name: "koti", area: "tn", age: 25}, {name: "koti", area: "tn", age: 30}, {name: "koti", area: "tn", age: 15}]
array.sort(s)
