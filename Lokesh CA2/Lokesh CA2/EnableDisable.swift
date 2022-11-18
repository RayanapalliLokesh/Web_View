//
//  EnableDisable.swift
//  Lokesh CA2
//
//  Created by Student on 18/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class EnableDisable: UIViewController {

    var n_url=String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sw(_ sender: UISwitch) {
        if(sender.isOn==true){
            S_Engine.isEnabled=true
            SRN.text="YES"
            
            n_url=S_Engine.text!
            
            
        }
        else{
            S_Engine.isEnabled=false
            SRN.text="NO"
            n_url="https://www.google.com"
        }
    }
    
   
    @IBOutlet var S_Engine: UITextField!
    
    @IBOutlet var SRN: UILabel!
    
    @IBAction func nxt(_ sender: Any) {
        
        performSegue(withIdentifier: "webv", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        let newVC: WebView = segue.destination as! WebView
        
        
        newVC.NSE=n_url
    }
    
    @IBOutlet var SE: UITextField!
    
}
