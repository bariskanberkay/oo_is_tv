#import "OoIsTvPlugin.h"
#if __has_include(<oo_is_tv/oo_is_tv-Swift.h>)
#import <oo_is_tv/oo_is_tv-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "oo_is_tv-Swift.h"
#endif

@implementation OoIsTvPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOoIsTvPlugin registerWithRegistrar:registrar];
}
@end
