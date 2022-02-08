import 'dart:io';

import 'setter.dart';

class AppNameSetter implements Setter{
  String _gradleFilePath = "./android/app/build.gradle";
  String _xcFilePath = "./ios/Runner.xcodeproj/project.pbxproj";

  final String newAppName;

  AppNameSetter(this.newAppName);

  @override
  apply(){
    _gradleFile();
    _xcFile();
  }

  _gradleFile(){
    File gradleFile = File(_gradleFilePath);
    gradleFile.writeAsStringSync(gradleFile.readAsStringSync().replaceAll("FSA", newAppName));
    print("Done with android/app/build.gradle");
  }

  _xcFile(){
    File gradleFile = File(_xcFilePath);
    gradleFile.writeAsStringSync(gradleFile.readAsStringSync().replaceAll('APP_DISPLAY_NAME = "Runner', 'APP_DISPLAY_NAME = "$newAppName'));
    gradleFile.writeAsStringSync(gradleFile.readAsStringSync().replaceAll('APP_DISPLAY_NAME = Runner', 'APP_DISPLAY_NAME = $newAppName'));
    print("Done with ios/Runner.xcodeproj");
  }

}