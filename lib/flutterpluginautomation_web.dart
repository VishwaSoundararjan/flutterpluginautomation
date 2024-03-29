import 'package:flutter/foundation.dart';
import 'remobile.dart'
     if (dart.library.js) 'rewebsdk.dart'  ;


class FluttersdkWeb{
  static  getWebVersion() {
    if(kIsWeb){
      return FlutterWeb.getWebVersion();
    }
  }
  static initWebSdk(){
    FlutterWeb.initWebSDK();
  }
}


// // In order to *not* need this ignore, consider extracting the "web" version
// // of your plugin as a separate package, instead of inlining it in the same
// // package as the core of your plugin.
// // ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html show window;
//
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
//
// import 'flutterpluginautomation_platform_interface.dart';
//
// /// A web implementation of the FlutterpluginautomationPlatform of the Flutterpluginautomation plugin.
// class FlutterpluginautomationWeb extends FlutterpluginautomationPlatform {
//   /// Constructs a FlutterpluginautomationWeb
//   FlutterpluginautomationWeb();
//
//   static void registerWith(Registrar registrar) {
//     FlutterpluginautomationPlatform.instance = FlutterpluginautomationWeb();
//   }
//
//   /// Returns a [String] containing the version of the platform.
//   @override
//   Future<String?> getPlatformVersion() async {
//     final version = html.window.navigator.userAgent;
//     return version;
//   }
// }
