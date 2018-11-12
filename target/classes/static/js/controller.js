var app = angular.module('app', []);
app.controller('saveVillage', function($scope, $http, $location) {
	$scope.submitForm = function(){
		var url = $location.absUrl() + "saveVillage";
		
		var config = {
                headers : {
                    'Accept': 'text/plain'
                }
        }
		var data = {
				vName: $scope.vName,
				pinCode: $scope.pinCode
        };
		
		$http.post(url, data, config).then(function (response) {
			$scope.postResultMessage = response.data;
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		
		$scope.vName = "";
		$scope.pinCode = "";
	}
});

