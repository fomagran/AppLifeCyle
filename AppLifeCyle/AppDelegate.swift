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
     앱이 백그라운드나 낫러닝에서 포어그라운드로 들어가기 직전에 호출된다.
     비활성화 상태를 거쳐 활성화 상태가 된다.
    */
    func applicationWillEnterForeground(_ application: UIApplication) {
           print("포어그라운드 진입할게요")
       }
    /*
     앱이 비활성상태에서 활성상태로 진입하고 난 직후 호출된다.
     앱이 실제로 사용되기 전에 마지막으로 준비할 수 있는 코드를 작성할 수 있다.
     활성화 상태
    */
     func applicationDidBecomeActive(_ application: UIApplication) {
         print("활성화 상태되었어요")
     }
    /*
      활성상태에서 비활성상태로 가기 직전에 호출된다.
      홈버튼을 누르거나 다른 어플리케이션으로 이동했을 때 주로 발생한다.
     활성화 상태에서 비활성화 상태를 거쳐 백그라운드 상태가 된다.
      */
      func applicationWillResignActive(_ application: UIApplication) {
            print("활성상태 풀릴거에요")
        }
    /*
     앱이 백그라운드 상태로 들어갔을 때 호출된다.
     suspended 상태가 되기 전 중요한 데이터를 저장하는 등 종료하기 전에 필요한 작업을 한다.
     특별한 처리가 없다면 곧바로 suspennded상태로 전환된다.
    */
    func applicationDidEnterBackground(_ application: UIApplication) {
         print("백그라운드 진입했어요")
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

