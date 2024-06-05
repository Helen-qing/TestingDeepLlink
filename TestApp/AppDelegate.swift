//
//  AppDelegate.swift
//  TestApp
//
//  Created by Helen Gao on 6/5/24.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
    var mainViewController: MainViewController!

    // taken from youtube vid
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        print("(Deep Link) Test 1")
        guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true),
              let host = components.host else {
            print("(Deep Link) Invalid URL")
            return false
        }
        
        print("(Deep Link) components: \(components)")
        
        guard let deepLink = DeepLink(rawValue: host) else {
            print("Deeplink not found: \(host)")
            return false
        }
        
        mainViewController.handleDeepLink(deepLink)
        
        return true
    }
}
