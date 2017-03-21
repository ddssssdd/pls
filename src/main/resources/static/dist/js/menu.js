/**
 * Created by Administrator on 2017/3/16.
 */


angular.module("pls").controller("MenuController",function($scope,httpService,Message){
    $scope.title = "Menus";

    $scope.menus = [];
    $scope.init = function(){
        httpService("/security/menus/"+CURRENT_USER_ID,{},function(json){
            $scope.menus = json;
            console.log(json);
        })
    }
    $scope.init();
});
