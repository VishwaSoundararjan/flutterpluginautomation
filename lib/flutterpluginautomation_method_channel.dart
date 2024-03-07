import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterpluginautomation_platform_interface.dart';

/// An implementation of [FlutterpluginautomationPlatform] that uses method channels.
class MethodChannelFlutterpluginautomation extends FlutterpluginautomationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterpluginautomation');

  @override
  getVersion()  {
    return   methodChannel.invokeMethod<String>('getRandromString');
  }
}
