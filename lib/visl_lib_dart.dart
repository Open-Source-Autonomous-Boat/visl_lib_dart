
import 'visl_lib_dart_platform_interface.dart';

class VislLibDart {
  Future<String?> getPlatformVersion() {
    return VislLibDartPlatform.instance.getPlatformVersion();
  }
}
