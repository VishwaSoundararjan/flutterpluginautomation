import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterpluginautomation_method_channel.dart';

abstract class FlutterpluginautomationPlatform extends PlatformInterface {
  /// Constructs a FlutterpluginautomationPlatform.
  FlutterpluginautomationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterpluginautomationPlatform _instance = MethodChannelFlutterpluginautomation();

  /// The default instance of [FlutterpluginautomationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterpluginautomation].
  static FlutterpluginautomationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterpluginautomationPlatform] when
  /// they register themselves.
  static set instance(FlutterpluginautomationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getRandromString() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

}
