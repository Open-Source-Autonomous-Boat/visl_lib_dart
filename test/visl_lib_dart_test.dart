import 'package:flutter_test/flutter_test.dart';
import 'package:visl_lib_dart/visl_lib_dart.dart';
import 'package:visl_lib_dart/visl_lib_dart_platform_interface.dart';
import 'package:visl_lib_dart/visl_lib_dart_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVislLibDartPlatform
    with MockPlatformInterfaceMixin
    implements VislLibDartPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VislLibDartPlatform initialPlatform = VislLibDartPlatform.instance;

  test('$MethodChannelVislLibDart is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVislLibDart>());
  });

  test('getPlatformVersion', () async {
    VislLibDart vislLibDartPlugin = VislLibDart();
    MockVislLibDartPlatform fakePlatform = MockVislLibDartPlatform();
    VislLibDartPlatform.instance = fakePlatform;

    expect(await vislLibDartPlugin.getPlatformVersion(), '42');
  });
}
