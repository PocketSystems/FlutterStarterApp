import 'package:connectivity/connectivity.dart';
import 'package:stacked/stacked.dart';

class ConnectivityService with ReactiveServiceMixin {
  ReactiveValue<bool> _isInternetConnected = ReactiveValue<bool>(true);
  bool get isInternetConnected => _isInternetConnected.value;

  ConnectivityService() {
    listenToReactiveValues([_isInternetConnected]);
    Connectivity().onConnectivityChanged.listen((result) {
      _isInternetConnected.value = result != ConnectivityResult.none;
      notifyListeners();
    });
  }
}
