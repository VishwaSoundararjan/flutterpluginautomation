
import 'flutterpluginautomation_platform_interface.dart';

class Flutterpluginautomation {
  Future<String?> getPlatformVersion() {
    return FlutterpluginautomationPlatform.instance.getPlatformVersion();
  }
  Future<String?> getRandromString() {
    return FlutterpluginautomationPlatform.instance.getRandromString();
  }
}
