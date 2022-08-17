//
//  BaseTools.swift
//  JHWanComponets
//
//  Created by sqkj on 2022/8/16.
//

import UIKit

public class BaseTools: NSObject {
    
    public static let shared: BaseTools = BaseTools()
    
    public func showInfo() {
        print("showInfo")
    }
    
    class public func testFunc() {
     print("按钮点击12345")
    }
    class public func testFunc2() {
     print("ttttt")
    }
}
