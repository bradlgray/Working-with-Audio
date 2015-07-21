//
//  ViewController.swift
//  Working with Audio
//
//  Created by Brad Gray on 7/20/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBAction func Play(sender: UIButton) {
       
        var audioPath = NSBundle.mainBundle().pathForResource("Derezzed", ofType: "m4a")!
        var error: NSError? = nil
        
       // player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
        
        player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath), fileTypeHint: "m4a", error: &error)
        
        if error === nil {
            player.play()
        } else{
        println(error)
        }
    }
   
    @IBAction func pause(sender: UIButton) {
        player.pause()
        
    }
    @IBAction func stop(sender: UIButton) {
   player.stop()
        player.currentTime = 0
    }
    
    
    
    @IBOutlet weak var volume: UISlider!
    
    
    
    @IBAction func volumebutton(sender: UISlider) {
        player.volume = volume.value
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

