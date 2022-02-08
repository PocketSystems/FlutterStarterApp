import 'dart:io';

import 'setter.dart';

class PackageNameSetter implements Setter{
  String _gradleFilePath = "./android/app/build.gradle";
  String _xcFilePath = "./ios/Runner.xcodeproj/project.pbxproj";

  final String newPackageName;

  PackageNameSetter(this.newPackageName);

  @override
  apply(){
    _gradleFile();
    _xcFile();
  }

  _gradleFile(){
    File gradleFile = File(_gradleFilePath);
    gradleFile.writeAsStringSync(gradleFile.readAsStringSync().replaceAll("com.example.flutter_starter_app", newPackageName));
    print("Done with android/app/build.gradle");
  }

  _xcFile(){
    File gradleFile = File(_xcFilePath);
    gradleFile.writeAsStringSync(gradleFile.readAsStringSync().replaceAll("com.example.flutterStarterApp", newPackageName));
    print("Done with ios/Runner.xcodeproj");
  }
}