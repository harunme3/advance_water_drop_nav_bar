import Flutter
import UIKit

public class AdvanceWaterDropNavBarPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "advance_water_drop_nav_bar", binaryMessenger: registrar.messenger())
    let instance = AdvanceWaterDropNavBarPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
