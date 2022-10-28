#import "VislLibDartPlugin.h"
#if __has_include(<visl_lib_dart/visl_lib_dart-Swift.h>)
#import <visl_lib_dart/visl_lib_dart-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "visl_lib_dart-Swift.h"
#endif

@implementation VislLibDartPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVislLibDartPlugin registerWithRegistrar:registrar];
}
@end
