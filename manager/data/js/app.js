var app = angular.module('app', []);

app.controller('myCtrl', function ($scope, $http) {

    //this fetches the data for our table
    $scope.tb_pop = function(){
        $http.get('tb_pop.php').success(function(data){

            var ctx = document.getElementById("dvCanvas").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: 'Population Tested',
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
