import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterpluginautomation_platform_interface.dart';

/// An implementation of [FlutterpluginautomationPlatform] that uses method channels.
class MethodChannelFlutterpluginautomation extends FlutterpluginautomationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterpluginautomation');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  @override
  Future<String?> getRandromString() async {
    final version = await methodChannel.invokeMethod<String>('getRandromString');
    return version;
  }
}
