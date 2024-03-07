import 'dart:html' as html;
import 'dart:js' as js;
import 'package:flutter/cupertino.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'flutterpluginautomation_platform_interface.dart';

class FlutterWeb extends FlutterpluginautomationPlatform  {
  static final sdk = js.context['ReWebSDK'];
  static final obj = js.JsObject(js.context['Object']);
  FlutterWeb();
  static void registerWith(Registrar registrar) {
    FlutterpluginautomationPlatform.instance = FlutterWeb();
  }

  static void initWebSDK() {
    debugPrint("flutter web :: initWebSdk called!!!");
    html.Element? head = html.document.querySelector('head');
    html.ScriptElement script = html.ScriptElement();
    script.defer = true;
    script.src = "https://vishwasoundararjan.github.io/FlutterWebTest/32r4fwr31233fef3xfhdfdvdfknkf23d.js";
    head?.append(script);
  }

  static getWebVersion(){
    debugPrint("flutter web :: getVersion called!!!");
    return sdk.callMethod('getVersion');
  }

}