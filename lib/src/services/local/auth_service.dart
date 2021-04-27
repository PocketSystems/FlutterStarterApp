import 'package:flutter_starter_app/src/models/user.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class AuthService with ReactiveServiceMixin {
  RxValue<User> _user = RxValue<User>(null);
  User get user => _user.value;

  AuthService() {
    listenToReactiveValues([_user]);
  }

  set user(User user) {
    _user.value = user;
  }
}
