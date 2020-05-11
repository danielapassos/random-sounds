//
//  ViewController.swift
//  ShakeThatPhone
//
//  Created by Daniela Passos on 5/11/20.
//  Copyright © 2020 Daniela Passos. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      
        if event? .subtype == UIEvent.EventSubtype.motionShake{
            
            let soundArray = ["ES_Descend Slide - SFX Producer", "ES_Food Egg Shell Crack 1 - SFX Producer", "ES voice"]
            let randomNumber = arc4random_uniform(UInt32(soundArray.count))
            let audioPath = Bundle.main.path(forResource: soundArray[Int(randomNumber)], ofType: "mp3")
            
            do {
                
                try player = AVAudioPlayer (contentsOf: URL(fileURLWithPath: audioPath!))
                player.play()
                
            } catch {
                    
                }
            
        }
    }
    
    
}

