import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class KeyboardService with ReactiveServiceMixin {
  RxValue<bool> _isKeyboardVisible = RxValue<bool>(false);
  bool get isKeyboardVisible => _isKeyboardVisible.value;

  KeyboardService() {
    listenToReactiveValues([_isKeyboardVisible]);
    KeyboardVisibilityController().onChange.listen((bool visible) {
      _isKeyboardVisible.value = visible;
    });
  }
}
