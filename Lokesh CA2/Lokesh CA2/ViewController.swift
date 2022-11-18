//
//  ViewController.swift
//  Lokesh CA2
//
//  Created by Student on 07/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var credObj = Credentials()
    
    
    

    @IBOutlet var t1: UITextField!
    
    @IBOutlet var t2: UITextField!
  
   
    @IBAction func login_btn(_ sender: Any) {
        
        let pdata=t1.text!
        let ldata=t2.text!
        
        if (pdata==credObj.username) && (ldata==credObj.password){
            let welcomenote = "Welcome " + pdata
            let loginnote = "Successfully Logged-In"
            data=welcomenote
            data2=loginnote
            
            self.performSegue(withIdentifier: "login", sender: self)
            
            
            
        }
            
        else{
            
            let alert=UIAlertController(title: "Warning", message: "Wrong UserName or Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style:.default, handler: nil))
            self.present(alert, animated:true, completion: nil)
        }
    }
    
    @IBAction func forgot_btn(_ sender: Any) {
        self.performSegue(withIdentifier: "forgot", sender: self)
        
        NewPass = credObj
        
    }
    
    
}

class Credentials
{
    var username: String = "Lokesh"
    var password: String = "12345"
}
