import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'visl_lib_dart_platform_interface.dart';

/// An implementation of [VislLibDartPlatform] that uses method channels.
class MethodChannelVislLibDart extends VislLibDartPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('visl_lib_dart');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
