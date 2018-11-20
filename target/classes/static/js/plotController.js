var app = angular.module('app', []);
app.filter('customFilter', function() {
  return function(input, search) {
    if (!input) return input;
    if (!search) return input;
    var expected = ('' + search).toLowerCase();
    var result = {};
    angular.forEach(input, function(value, key) {
      var actual = ('' + value).toLowerCase();
      if (actual.indexOf(expected) !== -1) {
        result[key] = value;
      }
    });
    return result;
  }
});
app.controller('plotsController', function($scope, $http, $location) {

	//var urlToLogin = "http://"+$location.host+":"+$location.port+"/";
	var urlToLogin =$location.protocol() + '://'+ $location.host() +':'+  $location.port()+'/' 
	
	//$scope.loginCheck='123456789';

	// $scope.siteForm = function(){
	// 	var url = "http://localhost:8181/"+ "saveSite";
		
	// 	var config = {
    //             headers : {
    //                 'Accept': 'text/plain'
    //             }
    //     }
	// 	var data = $scope.site;
		
	// 	$http.post(url, data, config).then(function (response) {
	// 		//$scope.postResultMessage = response.data;
	// 	}, function error(response) {
	// 		$scope.postResultMessage = "Error with status: " +  response.statusText;
	// 	});
		
	// 	$scope.site = '';
	// }
	$scope.getvillages = function()
	{
		var data='';
		
		var config = {
                headers : {
                    'Accept': 'text/json'
				}
			}
		$http.post("getVillages", data, config).then(function (response) {
			$scope.villages = response.data;
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
					$scope.allSites = response.data;
				}, function error(response) {
					$scope.postResultMessage = "Error with status: " +  response.statusText;
				}); 
			}
			$scope.getAllSites();

	$scope.iAmIntrested = function(event){

		var login =$scope.loginCheck;
		console.log(login);
		if(login == "null") {
			//$location.path(urlToLogin+'customerlogin');
			window.location.href = urlToLogin+'customerlogin';
			} else {

				var id = event.target.id;
				var data='';
						
						var config = {
								headers : {
									'Accept': 'text/json'
								}
							}
				$http.post("userIntrestedSite"+"?id="+id, config).then(function (response) {
							$scope.villageId = response.data;
						}, function error(response) {
							$scope.postResultMessage = "Error with status: " +  response.statusText;
						});

			}

	}

			function editSite(id){

				
			}
});

