//
//  InterfaceController.swift
//  Star Command WatchKit Extension
//
//  Created by Michiel Renty on 26/09/2017.
//  Copyright © 2017 Michiel Renty. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation


class InterfaceController: WKInterfaceController {
    
    var audioPlayer = AVAudioPlayer()
    @IBOutlet var laserBtn: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let music = Bundle.main.path(forResource: "laser", ofType: "m4a")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: music! ))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func fireLaser(_ sender: AnyObject) {
        print("fireLaser")
        
//        guard let sender = sender as? WKLongPressGestureRecognizer else {
//            return
//        }
//        if sender.state == WKGestureRecognizerState.began {
//            print("Touch down")
//        } else if sender.state == WKGestureRecognizerState.ended {
//            print("Touch up")
//        }
        
//        audioPlayer.numberOfLoops = -1
//        audioPlayer.play()
    }
    
}
