import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sample_plugin_pp_platform_interface.dart';

/// An implementation of [SamplePluginPpPlatform] that uses method channels.
class MethodChannelSamplePluginPp extends SamplePluginPpPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sample_plugin_pp');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
