app.controller('saveSite', function($scope, $http, $location) {
	$scope.siteForm = function(){
		//var url = "http://"+$location.host+":"+$location.port+"/"+ "saveSite";
		
		var config = {
                headers : {
                    'Accept': 'text/plain'
                }
        }
		var data = $scope.site;
		
		$http.post("saveSite", data, config).then(function (response) {
			//$scope.postResultMessage = response.data;
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		
		$scope.site = '';
	}
	$scope.getvillages = function()
	{
		var data='';
		
		var config = {
                headers : {
                    'Accept': 'text/json'
				}
			}
		$http.post("getVillages", data, config).then(function (response) {
			$scope.villageId = response.data;
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		}); 
	}
	$scope.getvillages();
	$scope.getAllSites = function()
	{
		var data='';
		
		var config = {
			headers : {
				'Accept': 'text/json'
			}
				}
				$http.post("getAllSites", data, config).then(function (response) {
					$scope.siteTable = response.data;
				}, function error(response) {
					$scope.postResultMessage = "Error with status: " +  response.statusText;
				}); 
			}
			
			$scope.getAllSites();

			function editSite(id){

				
			}
});

