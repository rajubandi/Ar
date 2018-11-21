app.controller('customerLoginController', function($scope, $http, $location) {
	$scope.loginForm = function(){
		//var url = "http://"+$location.host+":"+$location.port+"/"+ "saveSite";
		
		var config = {
                headers : {
                    'Accept': 'text/json'
                }
        }
		var data = $scope.users;
		
		$http.post("customerlogin", data, config).then(function (response) {
			//$scope.postResultMessage = response.data;
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		
		$scope.site = '';
	};
	
 $scope.openRegistrationModel=function(){
$scope.modalOpen=true;
alert('Ok');
							}
	// $scope.getvillages = function()
	// {
	// 	var data='';
		
	// 	var config = {
    //             headers : {
    //                 'Accept': 'text/json'
	// 			}
	// 		}
	// 	$http.post("getVillages", data, config).then(function (response) {
	// 		$scope.villageId = response.data;
	// 	}, function error(response) {
	// 		$scope.postResultMessage = "Error with status: " +  response.statusText;
	// 	}); 
	// }
	// $scope.getvillages();
	// $scope.getAllSites = function()
	// {
	// 	var data='';
		
	// 	var config = {
	// 		headers : {
	// 			'Accept': 'text/json'
	// 		}
	// 			}
	// 			$http.post("getAllSites", data, config).then(function (response) {
	// 				$scope.siteTable = response.data;
	// 			}, function error(response) {
	// 				$scope.postResultMessage = "Error with status: " +  response.statusText;
	// 			}); 
	// 		}
			
	// 		$scope.getAllSites();

			
});
