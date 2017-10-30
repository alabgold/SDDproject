var app = angular.module('App', ['ngMaterial', 'ngMdIcons']);

app.controller('AppCtrl', ['$scope','$mdSidenav', '$mdDialog', '$mdMedia', function($scope, $mdSidenav, $mdDialog, $mdMedia){
  $http.get('phptestworkhere.php').success(function(data) {
    $scope.frats = data;
  });

  $scope.toggleSidenav = function(menuId) {
    $mdSidenav(menuId).toggle();
  };

 	$scope.menu = [
    {
      link : '',
      title: 'ain',
      icon: 'dashboard'
    },
    {
      link : '',
      title: 'Calendar',
      icon: 'event'
    },
    {
      link : '',
      title: 'Favorites',
      icon: 'favorite'
    },
    {
      link : '',
      title: 'Messages',
      icon: 'message'
    }
  ];
  $scope.settings = [
    {
      link : '',
      title: 'Settings',
      icon: 'settings'
    }
  ];

  $scope.alert = '';

  $scope.status = $scope.items;

  $scope.customFullscreen = $mdMedia('xs') || $mdMedia('sm');

  $scope.showAdvanced = function(ev, product) {
    var useFullScreen = ($mdMedia('sm') || $mdMedia('xs')) && $scope.customFullscreen;

    $mdDialog.show({
        controller: DialogController,
        templateUrl: 'orderDialog.tmpl.html',
        parent: angular.element(document.body),
        targetEvent: ev,
        clickOutsideToClose: true,
        fullscreen: useFullScreen,
        locals:{dataToPass: product},
      })
      .then(function(answer) {
        $scope.status = 'Here goes the http request to REST with loading icon while in progress "' + answer + '".';
      }, function() {
        //$scope.status = 'You cancelled the dialog.';
      });

    $scope.$watch(function() {
      return $mdMedia('xs') || $mdMedia('sm');
    }, function(wantsFullScreen) {
      $scope.customFullscreen = (wantsFullScreen === true);
    });
  };

  function DialogController($scope, $mdDialog, dataToPass) {
    $scope.hide = function() {
      $mdDialog.hide();
    };

    $scope.cancel = function() {
      $mdDialog.cancel();
    };

    $scope.product = dataToPass;

    $scope.answer = function(answer) {

      $mdDialog.hide(answer);
    };
  }
}]);

app.config(function($mdThemingProvider) {
  var customBlueMap = 		$mdThemingProvider.extendPalette('light-blue', {
    'contrastDefaultColor': 'light',
    'contrastDarkColors': ['50'],
    '50': 'ffffff'
  });
  $mdThemingProvider.definePalette('customBlue', customBlueMap);
  $mdThemingProvider.theme('default')
    .primaryPalette('customBlue', {
      'default': '500',
      'hue-1': '50'
    })
    .accentPalette('pink');
  $mdThemingProvider.theme('input', 'default')
        .primaryPalette('grey')
});
