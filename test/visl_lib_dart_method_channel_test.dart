import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:visl_lib_dart/visl_lib_dart_method_channel.dart';

void main() {
  MethodChannelVislLibDart platform = MethodChannelVislLibDart();
  const MethodChannel channel = MethodChannel('visl_lib_dart');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
