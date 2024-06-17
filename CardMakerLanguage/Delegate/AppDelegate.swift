//
//  AppDelegate.swift
//  CardMakerLanguage
//
//  Created by Arpit iOS Dev. on 03/06/24.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
//        let initialViewController: UIViewController
//        if UserDefaults.standard.bool(forKey: LanguageSet.languageScreenKey) {
//            initialViewController = storyboard.instantiateViewController(withIdentifier: "Intro01ViewController")
//            print("Open")
//        } else {
//            initialViewController = storyboard.instantiateViewController(withIdentifier: "LanguageViewController")
//            print("Not Open")
//        }
//        
//        self.window?.rootViewController = initialViewController
//        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
}
