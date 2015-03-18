//
//  DeviceType.swift
//  Swift-DeviceType
//
//  Created by Ian Hirschfeld on 3/6/15.
//  Copyright (c) 2015 Ian Hirschfeld. All rights reserved.
//
// Based on code by Dennis Weissmann
// https://github.com/dennisweissmann/Basics

public enum DeviceType {

  case iPodTouch5
  case iPhone4
  case iPhone4s
  case iPhone5
  case iPhone5c
  case iPhone5s
  case iPhone6
  case iPhone6Plus
  case iPad2
  case iPad3
  case iPad4
  case iPadAir
  case iPadAir2
  case iPadMini
  case iPadMini2
  case iPadMini3
  case Simulator
  case UnknownIdentifier(String)

  public init() {
    // Declare an array that can hold the bytes required to store `utsname`, initilized
    // with zeros. We do this to get a chunk of memory that is freed upon return of the method.
    var sysinfo : [CChar] = Array(count: sizeof(utsname), repeatedValue: 0)

    // We need to get to the underlying memory of the array.
    let identifier = sysinfo.withUnsafeMutableBufferPointer { (inout ptr: UnsafeMutableBufferPointer<CChar>) -> String in
      // Call uname and let it write into the memory Swift allocated for the array.
      uname(UnsafeMutablePointer<utsname>(ptr.baseAddress))

      // Now here is the ugly part: `machine` is the 5th member of `utsname` and
      // each member member is `_SYS_NAMELEN` sized. We skip the the first 4 members
      // of the struct which will land us at the memory address of the `machine` member.
      let machinePtr = advance(ptr.baseAddress, Int(_SYS_NAMELEN * 4))

      // Create a Swift string from the C string.
      return String.fromCString(machinePtr)!
    }

    switch identifier {
    case "iPod5,1":                                 self = iPodTouch5
    case "iPhone3,1", "iPhone3,2", "iPhone3,3":     self = iPhone4
    case "iPhone4,1":                               self = iPhone4s
    case "iPhone5,1", "iPhone5,2":                  self = iPhone5
    case "iPhone5,3", "iPhone5,4":                  self = iPhone5c
    case "iPhone6,1", "iPhone6,2":                  self = iPhone5s
    case "iPhone7,2":                               self = iPhone6
    case "iPhone7,1":                               self = iPhone6Plus
    case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":self = iPad2
    case "iPad3,1", "iPad3,2", "iPad3,3":           self = iPad3
    case "iPad3,4", "iPad3,5", "iPad3,6":           self = iPad4
    case "iPad4,1", "iPad4,2", "iPad4,3":           self = iPadAir
    case "iPad5,1", "iPad5,3", "iPad5,4":           self = iPadAir2
    case "iPad2,5", "iPad2,6", "iPad2,7":           self = iPadMini
    case "iPad4,4", "iPad4,5", "iPad4,6":           self = iPadMini2
    case "iPad4,7", "iPad4,8", "iPad4,9":           self = iPadMini3
    case "i386", "x86_64":                          self = Simulator
    default:                                        self = UnknownIdentifier(identifier)
    }
  }

}

extension DeviceType: Printable {

  public var description: String {
    switch self {
    case .iPodTouch5:                           return "iPod Touch 5"
    case .iPhone4:                              return "iPhone 4"
    case .iPhone4s:                             return "iPhone 4s"
    case .iPhone5:                              return "iPhone 5"
    case .iPhone5c:                             return "iPhone 5c"
    case .iPhone5s:                             return "iPhone 5s"
    case .iPhone6:                              return "iPhone 6"
    case .iPhone6Plus:                          return "iPhone 6 Plus"
    case .iPad2:                                return "iPad 2"
    case .iPad3:                                return "iPad 3"
    case .iPad4:                                return "iPad 4"
    case .iPadAir:                              return "iPad Air"
    case .iPadAir2:                             return "iPad Air 2"
    case .iPadMini:                             return "iPad Mini"
    case .iPadMini2:                            return "iPad Mini 2"
    case .iPadMini3:                            return "iPad Mini 3"
    case .Simulator:                            return "Simulator"
    case .UnknownIdentifier(let identifier):    return identifier
    }
  }

}

extension DeviceType: Equatable {}

public func ==(lhs: DeviceType, rhs: DeviceType) -> Bool {
  return lhs.description == rhs.description
}
