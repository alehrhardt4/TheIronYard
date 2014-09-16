function CalcCtrl($scope){

$scope.value = '0';
$scope.display = '';
$scope.clearValue = false;
$scope.clearDisplay = false;

var calc = function(){
return eval($scope.value).toString();
}
$scope.c = function(key){
	if ("0123456789".indexOf(key) >= 0){

		if ($scope.clearDisplay == true){
		$scope.display = '';
		}
		if ($scope.clearValue == true){
		$scope.value = '0';
		}

			$scope.display += key;
			$scope.value += key;

}

	$scope.clearDisplay = false;
	$scope.clearValue = false;

		if ("*/+-".indexOf(key) >= 0){
		$scope.value = evaluate() + key;
		$scope.clearDisplay = true;
		}

		if (key == '='){
		$scope.value = evaluate();
		$scope.display = $scope.value;
		$scope.clearDisplay = true;
		$scope.clearValue = true;
		}

		if (key == 'C') {
			$scope.display = ''
		}
	}
}