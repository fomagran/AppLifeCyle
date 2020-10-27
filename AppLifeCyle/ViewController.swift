//
//  ViewController.swift
//  AppLifeCyle
//
//  Created by Fomagran on 2020/10/27.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var premiumBtn: UIButton!
    @IBOutlet weak var normalBtn: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    
    var playStatus = true
    var loginStatus = "Normal"
    var musicPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(enterBackground), name: NSNotification.Name("sceneDidEnterBackground"), object: nil)
        
        let song = Bundle.main.path(forResource: "Gang Gang Schiele", ofType: "mp3")
        
        do {
            musicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: song!))
            try
                AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode: AVAudioSession.Mode.default,options: AVAudioSession.CategoryOptions.mixWithOthers)
        } catch {
            print("error")
        }

    }
    
    @objc func enterBackground(){
        if loginStatus == "Normal" {
            musicPlayer.play()
            playBtn.setImage(UIImage(named: "pauseIcon"), for: .normal)
            playStatus = false
        }
    }
    
    @IBAction func loginNormal(_ sender: Any) {
        loginStatus = "Normal"
        statusLabel.text = loginStatus
    }
    @IBAction func loginPremium(_ sender: Any) {
        loginStatus = "Premium"
        statusLabel.text = loginStatus
    }
    @IBAction func play(_ sender: Any) {
        if playStatus {
            musicPlayer.play()
            playBtn.setImage(UIImage(named: "pauseIcon"), for: .normal)
            playStatus = false
        }else{
            musicPlayer.pause()
            playBtn.setImage(UIImage(named:"playIcon"), for: .normal)
            playStatus = true
        }
    }
    

}
