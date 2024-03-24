import Cocoa
import FlutterMacOS

public class OoIsTvPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "oo_is_tv", binaryMessenger: registrar.messenger)
    let instance = OoIsTvPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "check":
        return result(false);
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
