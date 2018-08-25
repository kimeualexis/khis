var app = angular.module('choleranegative', []);

app.controller('myCtrl', function ($scope, $http) {

    //this fetches the data for our table
    $scope.cholera_neg = function(){
        $http.get('cholera_neg.php').success(function(data){

            var ctx = document.getElementById("dvCanvas").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: 'Tested -ve',
                        data: data,
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero:true
                            }
                        }]
                    }
                }
            });

        });
    }

    $scope.clear = function(){
        $scope.error = false;
        $scope.success = false;
    }

});
