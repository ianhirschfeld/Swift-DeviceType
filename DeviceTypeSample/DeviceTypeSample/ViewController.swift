//
//  ViewController.swift
//  DeviceTypeSample
//
//  Created by Ian Hirschfeld on 3/6/15.
//  Copyright (c) 2015 Ian Hirschfeld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)

    println("UIDevice.currentDevice().deviceType: \(UIDevice.currentDevice().deviceType)")
    println("UIDevice.currentDevice().isIPhone: \(UIDevice.currentDevice().isIPhone)")
    println("UIDevice.currentDevice().isIPad: \(UIDevice.currentDevice().isIPad)")
    println("UIDevice.currentDevice().isSimulator: \(UIDevice.currentDevice().isSimulator)")
    println("==========")
    println("self.isIPhone6PlusSize: \(self.isIPhone6PlusSize)")
    println("self.isIPhone6Size: \(self.isIPhone6Size)")
    println("self.isIPhone5sSize: \(self.isIPhone5sSize)")
  }

}

