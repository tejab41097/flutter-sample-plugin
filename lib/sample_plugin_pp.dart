
import 'sample_plugin_pp_platform_interface.dart';

class SamplePluginPp {
  Future<String?> getPlatformVersion() {
    return SamplePluginPpPlatform.instance.getPlatformVersion();
  }
}
