import 'package:flutter_test/flutter_test.dart';
import 'package:sample_plugin_pp/sample_plugin_pp.dart';
import 'package:sample_plugin_pp/sample_plugin_pp_platform_interface.dart';
import 'package:sample_plugin_pp/sample_plugin_pp_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSamplePluginPpPlatform 
    with MockPlatformInterfaceMixin
    implements SamplePluginPpPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SamplePluginPpPlatform initialPlatform = SamplePluginPpPlatform.instance;

  test('$MethodChannelSamplePluginPp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSamplePluginPp>());
  });

  test('getPlatformVersion', () async {
    SamplePluginPp samplePluginPpPlugin = SamplePluginPp();
    MockSamplePluginPpPlatform fakePlatform = MockSamplePluginPpPlatform();
    SamplePluginPpPlatform.instance = fakePlatform;
  
    expect(await samplePluginPpPlugin.getPlatformVersion(), '42');
  });
}
