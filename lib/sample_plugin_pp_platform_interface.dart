import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sample_plugin_pp_method_channel.dart';

abstract class SamplePluginPpPlatform extends PlatformInterface {
  /// Constructs a SamplePluginPpPlatform.
  SamplePluginPpPlatform() : super(token: _token);

  static final Object _token = Object();

  static SamplePluginPpPlatform _instance = MethodChannelSamplePluginPp();

  /// The default instance of [SamplePluginPpPlatform] to use.
  ///
  /// Defaults to [MethodChannelSamplePluginPp].
  static SamplePluginPpPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SamplePluginPpPlatform] when
  /// they register themselves.
  static set instance(SamplePluginPpPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
