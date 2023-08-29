//
//  RescueTubeApp.swift
//  RescueTube
//
//  Created by TECH1 on 4/18/23.
//

import SwiftUI
import OneSignalFramework

@main
struct RescueTubeApp: App {
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
        // OneSignal.Debug.setLogLevel(.LL_VERBOSE)
        
        // OneSignal initialization
        OneSignal.initialize("89688823-ff14-4d72-b8c9-abb0f953a492", withLaunchOptions: launchOptions)
          
        // requestPermission will show the native iOS notification permission prompt.
        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission
        OneSignal.Notifications.requestPermission({ accepted in
            print("User accepted notifications: \(accepted)")
        }, fallbackToSettings: true)
        
        // Login your customer with externalId
        // OneSignal.login("EXTERNAL_ID")
      
       return true
    }
}
