//
//  JHWanComponets.swift
//  JHWanComponets
//
//  Created by sqkj on 2022/8/16.
//

import UIKit

public class JHWanComponets: NSObject {
    
    public static let shared: JHWanComponets = JHWanComponets()
    
    public func showInfo() {
        print("showInfo")
    }
    
    public func testVC() {
        let vc = JHWanComponets.ex_presentController()
        vc?.present(JHViewController(), animated: true, completion: {})
    }
    
    /// 获取keyWindow
        static func ex_keyWindow() -> UIWindow? {
            var keyWindow: UIWindow? = nil
            if #available(iOS 13, *) {
                keyWindow = UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap { $0.windows }
                    .first(where: { $0.isKeyWindow })
            } else {
                keyWindow = UIApplication.shared.keyWindow
            }
            return keyWindow
        }
        
        /// 获取最底层window
        static func ex_rootWindow() -> UIWindow? {
            var rootWindow: UIWindow? = nil
            if #available(iOS 13, *) {
                rootWindow = UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap { $0.windows }
                    .first
            }
            if let _ = rootWindow {}
            else if let w = UIApplication.shared.delegate?.window {
                rootWindow = w
            }
            else if let w = UIApplication.shared.windows.first {
                rootWindow = w
            }
            return rootWindow
        }
    /// 获取当前屏幕显示的viewcontroller
        static func ex_presentController() -> UIViewController? {
            var result: UIViewController? = nil
            var rootVC: UIViewController? = nil
            if let v = self.ex_keyWindow()?.rootViewController {
                rootVC = v
            }
            else if let v = self.ex_rootWindow()?.rootViewController {
                rootVC = v
            }
            repeat {
                if let navi = rootVC as? UINavigationController {
                    result = navi.visibleViewController
                    rootVC = result?.presentedViewController
                }
                else if let tab = rootVC as? UITabBarController {
                    result = tab.selectedViewController
                    rootVC = result
                }
                else {
                    result = rootVC
                    rootVC = nil
                }
            } while rootVC != nil
            
            return result
        }

}
