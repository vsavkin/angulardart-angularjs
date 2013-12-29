angular.module("AngularJS_Samples", []).
  directive("vsMatch", function () {
    return {
      restrict: 'A',

      scope: {pattern: '@vsMatch'},

      link: function (scope, element) {
        var exp = new RegExp(scope.pattern);
        element.on("keyup", function () {
          exp.test(element.val()) ? element.addClass('match') : element.removeClass('match');
        });
      }
    };
  }).
  directive("toggle", function(){
    return {
      restrict: 'E',

      replace: true,
      transclude: true,

      scope: {button: '@'},

      template: "<div><button ng-click='toggle()'>{{button}}</button><div ng-transclude ng-if='showContent'/></div>",

      controller: function($scope){
        $scope.showContent  = false;
        $scope.toggle = function(){
          $scope.showContent  = !$scope.showContent ;
        };
      }
    }
  }).
  controller("CompareCtrl", function(){
    this.firstValue = "";
    this.secondValue = "";

    this.valuesAreEqual = function(){
      return this.firstValue == this.secondValue;
    }
  }).
  filter("isBlank", function(){
    return function(value){
      return value.length == 0;
    };
  });

angular.bootstrap(document.querySelector("#angular-js"), ["AngularJS_Samples"]);