//
//  EarTest.swift
//  Lokesh CA2
//
//  Created by Student on 31/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit
import AVFoundation
var tname=String()
var tcost=String()
class EarTest: UIViewController {
    
    var player:AVAudioPlayer=AVAudioPlayer()
    var result=String()

    override func viewDidLoad() {
        super.viewDidLoad()
        e_name.text=tname
    
        
        do{
            let audioPath = Bundle.main.path(forResource:"Ear Test", ofType:"mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)


        }
        catch{

        }
        
    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime=0
    }
    
    @IBAction func replay(_ sender: Any) {
        player.currentTime=0
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    @IBAction func e_test(_ sender: UISegmentedControl) {
        
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

        performSegue(withIdentifier: "next_result", sender: self)
        testresult=result
        name=tname
        tamount=tcost

    }
    
    
    
    @IBOutlet weak var e_name: UILabel!
}
