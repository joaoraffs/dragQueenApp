//
//  AppDelegate.swift
//  polydah
//
//  Created by João Raffs on 05/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let currency = Currency()
        
         /* é nessa hora que é definido  */
        currency.getDataFromUD()
            
        let drag = Drag()
        drag.fetchFromUD()
        
        Model.instance.drag = drag
//        UserDefaults.standard.set(Model.instance.drag.hairIndex, forKey: "dragHair")
//        UserDefaults.standard.set(Model.instance.drag.shoesIndex, forKey: "shoesIndex")
//        UserDefaults.standard.set(Model.instance.drag.dressIndex, forKey: "dressIndex")

        
        Model.instance.currency = currency
        
        CurrencyEngine().start()
        
        
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

