//
//  UIViewController+DeviceType.swift
//  Swift-DeviceType
//
//  Created by Ian Hirschfeld on 3/6/15.
//  Copyright (c) 2015 Ian Hirschfeld. All rights reserved.
//

import UIKit

extension UIViewController {

  // ==================================================
  // DIMENSIONS: Portrait orientation [width, height].
  // ==================================================
  var iPodTouchDimensions: [CGFloat] {
    return iPhone5sDimensions
  }

  var iPhone4sDimensions: [CGFloat] {
    return [320, 480]
  }

  var iPhone5Dimensions: [CGFloat] {
    return iPhone5sDimensions
  }

  var iPhone5sDimensions: [CGFloat] {
    return [320, 568]
  }

  var iPhone6Dimensions: [CGFloat] {
    return [375, 667]
  }

  var iPhone6PlusDimensions: [CGFloat] {
    return [414, 736]
  }

  // ==================================================
  // SIZES
  // ==================================================

  // iPod Touch
  var isIPodTouchPortraitSize: Bool {
    return view.frame.width == iPodTouchDimensions[0] &&
           view.frame.height == iPodTouchDimensions[1]
  }

  var isIPodTouchLandscapeSize: Bool {
    return view.frame.width == iPodTouchDimensions[1] &&
           view.frame.height == iPodTouchDimensions[0]
  }

  var isIPodTouchSize: Bool {
    return isIPodTouchPortraitSize || isIPodTouchLandscapeSize
  }

  // iPhone 4s
  var isIPhone4sPortraitSize: Bool {
    return view.frame.width == iPhone4sDimensions[0] &&
           view.frame.height == iPhone4sDimensions[1]
  }

  var isIPhone4sLandscapeSize: Bool {
    return view.frame.width == iPhone4sDimensions[1] &&
           view.frame.height == iPhone4sDimensions[0]
  }

  var isIPhone4sSize: Bool {
    return isIPhone4sPortraitSize || isIPhone4sLandscapeSize
  }

  // iPhone 5
  var isIPhone5PortraitSize: Bool {
    return view.frame.width == iPhone5Dimensions[0] &&
           view.frame.height == iPhone5Dimensions[1]
  }

  var isIPhone5LandscapeSize: Bool {
    return view.frame.width == iPhone5Dimensions[1] &&
           view.frame.height == iPhone5Dimensions[0]
  }

  var isIPhone5Size: Bool {
    return isIPhone5PortraitSize || isIPhone5LandscapeSize
  }

  // iPhone 5s
  var isIPhone5sPortraitSize: Bool {
    return view.frame.width == iPhone5sDimensions[0] &&
           view.frame.height == iPhone5sDimensions[1]
  }

  var isIPhone5sLandscapeSize: Bool {
    return view.frame.width == iPhone5sDimensions[1] &&
           view.frame.height == iPhone5sDimensions[0]
  }

  var isIPhone5sSize: Bool {
    return isIPhone5sPortraitSize || isIPhone5sLandscapeSize
  }

  // iPhone 6
  var isIPhone6PortraitSize: Bool {
    return view.frame.width == iPhone6Dimensions[0] &&
           view.frame.height == iPhone6Dimensions[1]
  }

  var isIPhone6LandscapeSize: Bool {
    return view.frame.width == iPhone6Dimensions[1] &&
           view.frame.height == iPhone6Dimensions[0]
  }

  var isIPhone6Size: Bool {
    return isIPhone6PortraitSize || isIPhone6LandscapeSize
  }

  // iPhone 6 Plus
  var isIPhone6PlusPortraitSize: Bool {
    return view.frame.width == iPhone6PlusDimensions[0] &&
           view.frame.height == iPhone6PlusDimensions[1]
  }

  var isIPhone6PlusLandscapeSize: Bool {
    return view.frame.width == iPhone6PlusDimensions[1] &&
           view.frame.height == iPhone6PlusDimensions[0]
  }

  var isIPhone6PlusSize: Bool {
    return isIPhone6PlusPortraitSize || isIPhone6PlusLandscapeSize
  }

}
