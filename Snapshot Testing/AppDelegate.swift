//
//  AppDelegate.swift
//  Snapshot Testing
//
//  Created by Ranieri Aguiar on 30/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainController()
        window?.makeKeyAndVisible()
        return true
    }
}
