//
//  SceneDelegate.swift
//  TimeBank
//
//  Created by young on 2020/02/28.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
  
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("씬연결이 끊겼어요")
    }

    /*
     씬이 비활성상태에서 활성상태로 진입하고 난 직후 호출된다.
     앱이 실제로 사용되기 전에 마지막으로 준비할 수 있는 코드를 작성할 수 있다.
     활성화 상태
    */
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("활성화 되었어요")
    }
    /*
      활성상태에서 비활성상태로 가기 직전에 호출된다.
      홈버튼을 누르거나 다른 어플리케이션으로 이동했을 때 주로 발생한다.
     활성화 상태에서 비활성화 상태를 거쳐 백그라운드 상태가 된다.
      */
    func sceneWillResignActive(_ scene: UIScene) {
        print("비활성화 상태로 될거에요")
    }
     /*
     씬이 백그라운드나 낫러닝에서 포어그라운드로 들어가기 직전에 호출된다.
     비활성화 상태를 거쳐 활성화 상태가 된다.
    */
    func sceneWillEnterForeground(_ scene: UIScene) {
        print("포어그라운드 진입할게요")
    }

    /*
     씬이 백그라운드 상태로 들어갔을 때 호출된다.
     suspended 상태가 되기 전 중요한 데이터를 저장하는 등 종료하기 전에 필요한 작업을 한다.
     특별한 처리가 없다면 곧바로 suspennded상태로 전환된다.
    */
    func sceneDidEnterBackground(_ scene: UIScene) {
        NotificationCenter.default.post(name:NSNotification.Name("sceneDidEnterBackground"),object: nil)
        print("백그라운드 진입할게요")
     
    }
   



}

