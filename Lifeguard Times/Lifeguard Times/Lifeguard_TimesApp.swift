//
//  Lifeguard_TimesApp.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI
import OneSignal

@main
struct Lifeguard_TimesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       // Remove this method to stop OneSignal Debugging
       // OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
        
       OneSignal.initWithLaunchOptions(launchOptions)
       OneSignal.setAppId("7d261b46-67cb-47d2-a2ca-acb9e2a3662a")
        
       OneSignal.promptForPushNotifications(userResponse: { accepted in
         print("User accepted notification: \(accepted)")
       })
      
      // Set your customer userId
      // OneSignal.setExternalUserId("userId")
      
       return true
    }
}
