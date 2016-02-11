//
//  PlayerViewController.swift
//  tvOSVideoApp
//
//  Created by sriram srinivasan on 10/02/2016.
//  Copyright © 2016 vadranam. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController,AVPlayerViewControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func playVideo () {
        
       
        
        player = AVPlayer(URL:  NSURL(string: "http://trailers.apple.com/movies/focus_features/9/9-clip_480p.mov")!)
        player?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
