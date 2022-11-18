//
//  ForgotPasswordViewController.swift
//  Lokesh CA2
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//
import UIKit

var NewPass: Credentials!

class ForgotPasswordViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // To get stored email from 1st VC
    var email_stored : String!
    
    
    @IBOutlet var user_name: UITextField!
    
    @IBOutlet var new_pass: UITextField!
    
    
    @IBOutlet var again_pass: UITextField!
    
//    var user = user_name.text!
    
    
    
    @IBAction func generate_btn(_ sender: Any) {

        
        if(user_name.text != NewPass.username){
            let email_alert = UIAlertController(title: "Email",
                                                message: "Enetered Email is wrong",
                                                preferredStyle: UIAlertController.Style.alert)
            // To remove the popup
            email_alert.addAction(UIAlertAction(title: "Cancel",
                                                style: UIAlertAction.Style.cancel,
                                                handler: nil))
            
            self.present(email_alert, animated: true, completion: nil)
        }
        
        else if(new_pass.text != again_pass.text){
            let password_alert = UIAlertController(title: "Password",
                                                   message: "Passwords dont match",
                                                   preferredStyle: UIAlertController.Style.alert)
            
            password_alert.addAction(UIAlertAction(title: "Cancel",
                                                   style: UIAlertAction.Style.cancel,
                                                   handler: nil))
            self.present(password_alert, animated: true, completion: nil)
        }
        
        else{
            
            NewPass.password = new_pass.text!
            
            let confirm_alert = UIAlertController(title: "Password",
                                                  message: " New Password Created",
                                                  preferredStyle: UIAlertController.Style.alert)
            
            confirm_alert.addAction(UIAlertAction(title: "Done",
                                                   style: UIAlertAction.Style.cancel,
                                                   handler: nil))
            self.present(confirm_alert, animated: true, completion: nil)
            
            self.performSegue(withIdentifier: "newpass", sender: self)
        }
        
        
        
        
        
    }
    
    
}

