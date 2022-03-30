import 'app_name.dart';
import 'dart_name.dart';
import 'set_package_name.dart';
import 'setter.dart';

void main(List<String> args) {
  if (args.isEmpty || args[0] == "help") {
    print("--packageName for package name of android/ios");
    print("--dartBundleName for dart name of linked imports & pubspec.yaml");
    print("--appName for app name on android/ios");
    return;
  }

  List<Setter> setters = [];

  for (String arg in args) {
    if (!arg.contains("=")) {
      continue;
    }
    var lineParts = arg.split("=");
    String name = lineParts[0];
    String value = lineParts[1];
    switch (name) {
      case "--packageName":
        setters.add(PackageNameSetter(value));
        break;
      case "--dartBundleName":
        if (value.contains(",")) {
          setters.add(
              DartNameSetter(value.split(",").first, value.split(",").last));
        } else {
          setters.add(DartNameSetter(value));
        }
        break;
      case "--appName":
        setters.add(AppNameSetter(value));
        break;
    }
  }
  setters.forEach((setter) => setter.apply());
}
