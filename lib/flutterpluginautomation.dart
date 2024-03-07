import 'package:flutter/foundation.dart';
import 'flutterpluginautomation_platform_interface.dart';
import 'flutterpluginautomation_web.dart';

class Flutterpluginautomation {

   getRandromString()  {
    if(kIsWeb){
      return FluttersdkWeb.getWebVersion();
    }else {
      return  FlutterpluginautomationPlatform.instance.getVersion();
    }
  }
  initWebSdk(){
    if(kIsWeb){
      FluttersdkWeb.initWebSdk();
    }
  }
}
