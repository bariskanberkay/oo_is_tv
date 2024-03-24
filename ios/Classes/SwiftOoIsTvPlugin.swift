import Flutter
import UIKit

public class SwiftOoIsTvPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "oo_is_tv", binaryMessenger: registrar.messenger())
    let instance = SwiftOoIsTvPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method == "check") {
            #if os(tvOS)
                result(true)
            #else
                result(false)
            #endif
          }
  }
}
