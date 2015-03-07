# Swift-DeviceType
A series of helpers and extensions for identifying what device is interacting with your app.

## Usage

Get current device type (for use anywhere):
```swift
UIDevice.currentDevice().deviceType
```

Boolean check for device type (for use anywhere):
```swift
if UIDevice.currentDevice().isIPhone {
  // Do some iPhone related stuff...
}
```

Boolean check for view size (for use in a view controller):
```swift
if isPhone6Size {
  // Do some iPhone 6 size related stuff...
}
```

## `DeviceType` Helpers
Below is a list of device models that are recognized. Please note that testing on the simulator always outputs `Simulator`.
```swift
iPodTouch5
iPhone4
iPhone4S
iPhone5
iPhone5C
iPhone5S
iPhone6
iPhone6Plus
iPad2
iPad3
iPad4
iPadAir
iPadAir2
iPadMini
iPadMini2
iPadMini3
Simulator
```

## `UIDevice` Helpers
```swift
UIDevice.currentDevice().deviceType -> DeviceType
UIDevice.currentDevice().isPortrait -> Bool
UIDevice.currentDevice().isLandscape -> Bool
UIDevice.currentDevice().isIPodTouch -> Bool
UIDevice.currentDevice().isIPhone -> Bool
UIDevice.currentDevice().isIPad -> Bool
UIDevice.currentDevice().isSimulator -> Bool
```

## `UIViewController` Helpers
For brevity only showing examples for iPhone 6.
```swift
self.isIPhone6Size -> Bool
self.isIPhone6PortraitSize -> Bool
self.isIPhone6LandscapeSize -> Bool
self.iPhone6Dimensions -> [CGFloat]
```
