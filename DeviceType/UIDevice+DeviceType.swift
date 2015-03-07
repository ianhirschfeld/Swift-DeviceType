//
//  UIDevice+DeviceType.swift
//  Swift-DeviceType
//
//  Created by Ian Hirschfeld on 3/6/15.
//  Copyright (c) 2015 Ian Hirschfeld. All rights reserved.
//

import UIKit

extension UIDevice {

  var deviceType: DeviceType {
    return DeviceType()
  }

  var isPortrait: Bool {
    return UIDevice.currentDevice().orientation == .Portrait || UIDevice.currentDevice().orientation == .PortraitUpsideDown
  }

  var isLandscape: Bool {
    return UIDevice.currentDevice().orientation == .LandscapeLeft || UIDevice.currentDevice().orientation == .LandscapeRight
  }

  var isIPodTouch: Bool {
    return UIDevice.currentDevice().model == "iPod touch"
  }

  var isIPhone: Bool {
    return UIDevice.currentDevice().model == "iPhone"
  }

  var isIPad: Bool {
    return UIDevice.currentDevice().model == "iPad"
  }

  var isSimulator: Bool {
    return UIDevice.currentDevice().model == "iPhone Simulator" ||
           UIDevice.currentDevice().model == "iPad Simulator"
  }

}
