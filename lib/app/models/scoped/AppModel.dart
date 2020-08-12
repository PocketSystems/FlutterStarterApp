import 'package:connectivity/connectivity.dart';
import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {
  //Internet check
  bool _isConnected = true;
  dynamic subscription;

  bool get isConnected => _isConnected;

  AppModel() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      _isConnected = result != ConnectivityResult.none;
      notifyListeners();
    });
  }
}
