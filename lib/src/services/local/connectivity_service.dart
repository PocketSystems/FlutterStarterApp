import 'package:connectivity/connectivity.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class ConnectivityService with ReactiveServiceMixin {
  RxValue<bool> _isInternetConnected = RxValue<bool>(true);
  bool get isInternetConnected => _isInternetConnected.value;

  ConnectivityService() {
    listenToReactiveValues([_isInternetConnected]);
    Connectivity().onConnectivityChanged.listen((result) {
      _isInternetConnected.value = result != ConnectivityResult.none;
    });
  }
}
