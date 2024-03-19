import Flutter
import UIKit

public class FlutterpluginautomationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterpluginautomation", binaryMessenger: registrar.messenger())
    let instance = FlutterpluginautomationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
          case "getRandromString":
        print("Received iOS SDK versionk" + IOSSDK.getVersion())
        result(IOSSDK.getVersion())
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
