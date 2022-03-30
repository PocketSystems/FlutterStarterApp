import 'dart:io';

import 'setter.dart';

class DartNameSetter implements Setter {
  final String newDartName;
  final String oldDartName;

  DartNameSetter(this.newDartName, [this.oldDartName = 'flutter_starter_app']);

  @override
  apply() {
    File pubSpec = File('./pubspec.yaml');
    pubSpec.writeAsStringSync(
        pubSpec.readAsStringSync().replaceAll(oldDartName, newDartName));
    print("Done with Dart Name");
    int countReplacedFiles = 0;
    for (FileSystemEntity file
    in Directory('./lib/').listSync(recursive: true)) {
      if (file.path.split(".").last == "dart") {
        File(file.path).writeAsStringSync(File(file.path)
            .readAsStringSync()
            .replaceAll(oldDartName, newDartName));
        countReplacedFiles++;
      }
    }
    if (countReplacedFiles == 0) {
      print("No imports found in lib/ dir to replace");
    } else {
      print("Replaced $countReplacedFiles files in lib/ dir");
    }
  }
}
