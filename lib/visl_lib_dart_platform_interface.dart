import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'visl_lib_dart_method_channel.dart';

abstract class VislLibDartPlatform extends PlatformInterface {
  /// Constructs a VislLibDartPlatform.
  VislLibDartPlatform() : super(token: _token);

  static final Object _token = Object();

  static VislLibDartPlatform _instance = MethodChannelVislLibDart();

  /// The default instance of [VislLibDartPlatform] to use.
  ///
  /// Defaults to [MethodChannelVislLibDart].
  static VislLibDartPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VislLibDartPlatform] when
  /// they register themselves.
  static set instance(VislLibDartPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
