//
//  AppDelegate.swift
//  FlexFlag
//
//  Created by 张佳宏 on 2022/12/12.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let vc = FFNavigationController.init(rootViewController: ViewController())
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

}

