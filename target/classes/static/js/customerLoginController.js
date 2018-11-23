app.controller('customerLoginController', function($scope, $modal, $http, $location) {
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
							//alert('Ok');
							$scope.modalOpen({
								templateUrl: 'myModalContent.html', // loads the template
								backdrop: true, // setting backdrop allows us to close the modal window on clicking outside the modal window
								windowClass: 'modal', // windowClass - additional CSS class(es) to be added to a modal window template
								controller: function ($scope, $modalInstance, $log, user) {
									$scope.user = user;
									$scope.submit = function () {
										$log.log('Submiting user info.'); // kinda console logs this statement
										$log.log(user);
										$http({
										method: 'POST', 
										url: 'https://mytesturl.com/apihit',
										headers: {
											"Content-type": undefined
										}
										, data: user
									}).then(function (response) {
										console.log(response);
									$modalInstance.dismiss('cancel'); 
									}, function (response) {
										console.log('i am in error');
									$modalInstance.dismiss('cancel'); 
										});
										//$modalInstance.dismiss('cancel'); // dismiss(reason) - a method that can be used to dismiss a modal, passing a reason
									}
									$scope.cancel = function () {
										$modalInstance.dismiss('cancel'); 
									};
								},
							resolve: {
								user: function () {
									return $scope.user;
								}
            }
        });//end of modal.open

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
