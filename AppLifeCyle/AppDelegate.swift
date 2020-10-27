//
//  AppDelegate.swift
//  AppLifeCyle
//
//  Created by young on 2020/10/20.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    /*
     필요한 주요 객체들을 생성하고 앱 실행 준비가 끝나기 직전에 호출된다.
     아직 not running 상태이다.
    */
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("이제 앱 실행 준비할게요")
        return true
    }
    /*
     앱 실행을 위한 모든 준비가 끝난 후 화면이 사용자에게 보여지기 직전에 호출된다.
     주로 초기화 코드를 이곳에다 작성한다. not running 상태
    */
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       print("앱 실행 준비 끝났어요")
        return true
    }
 
    /*
        앱이 종료되기 직전에 호출된다.
     하지만 메모리 확보를 위해 suspended 상태에 있는 앱이 종료될 때나
     background 상태에서 사용자에 의해 종료될 때나
     오류로 인해 앱이 종료될 때는 호출되지 않는다.
       */
    func applicationWillTerminate(_ application: UIApplication) {
            print("이제 곧 종료될거에요")
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

