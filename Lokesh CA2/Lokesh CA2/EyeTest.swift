//
//  EyeTest.swift
//  Lokesh CA2
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//
import AVKit
import AVFoundation
import UIKit

var eye_test=String()
var eye_cost=String()

class EyeTest: UIViewController {

    var result=String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text=eye_test

        // Do any additional setup after loading the view.
    }
    var path:NSURL!
    var videoPlayer: AVPlayer!
    var videoPlayerController: AVPlayerViewController!
    
    
    @IBAction func btnPlayer(_ sender: Any) {
        path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "MeriZindagi", ofType: "mp4")!)
        videoPlayer=AVPlayer(url: path as URL)
        videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        self.present(videoPlayerController, animated: true, completion: nil)
        self.videoPlayerController.player?.play()
    }
    

    @IBAction func test(_ sender: UISegmentedControl) {
        
        if(sender.selectedSegmentIndex==0){
            
            result = "Not Select"
            
        }
        else if(sender.selectedSegmentIndex==1){
            
            result = "Yes"
            
        }
        else if(sender.selectedSegmentIndex==2){
            
            result = "No"
            
        }
        else{
            result = "Partially"
        }
        
    }
    
    
    @IBAction func nxt_btn(_ sender: Any) {
        
        performSegue(withIdentifier: "eye_nxt", sender: self)
        tp_result=result
        tp_name=eye_test
        tp_amount=eye_cost
        
    }
   

    @IBOutlet weak var name: UILabel!
    
    
}
