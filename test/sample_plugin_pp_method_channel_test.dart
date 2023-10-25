import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_plugin_pp/sample_plugin_pp_method_channel.dart';

void main() {
  MethodChannelSamplePluginPp platform = MethodChannelSamplePluginPp();
  const MethodChannel channel = MethodChannel('sample_plugin_pp');

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
