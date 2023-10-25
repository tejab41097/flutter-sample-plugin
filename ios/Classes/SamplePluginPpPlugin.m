#import "SamplePluginPpPlugin.h"
#if __has_include(<sample_plugin_pp/sample_plugin_pp-Swift.h>)
#import <sample_plugin_pp/sample_plugin_pp-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sample_plugin_pp-Swift.h"
#endif

@implementation SamplePluginPpPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSamplePluginPpPlugin registerWithRegistrar:registrar];
}
@end
