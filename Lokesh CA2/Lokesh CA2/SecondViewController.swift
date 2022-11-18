//
//  SecondViewController.swift
//  Lokesh CA2
//
//  Created by Student on 07/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

var data=String()
var data2=String()

class SecondViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        l1.text=data
        l2.text=data2
        

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var l1: UILabel!
    
    
    
    @IBOutlet var l2: UILabel!
    
    

    @IBOutlet var OPN_IMG: UIImageView!
    
    @IBAction func Select(_ sender: UIButton) {
        
        let a={
            (action:UIAlertAction)->Void in
            self.OPN_IMG.image=UIImage(named: "new_patient.jpeg")
            self.performSegue(withIdentifier: "ok", sender: self)
            
            
            
            
        }
        
        let b={
            (action:UIAlertAction)->Void in
            self.OPN_IMG.image=UIImage(named: "old_patient.jpeg")
            self.performSegue(withIdentifier: "ok2", sender: self)
        }
        
        
        let c={
            (action:UIAlertAction)->Void in
            self.OPN_IMG.image=UIImage(named: "test.jpeg")
            self.performSegue(withIdentifier: "not", sender: self)
        }
        
        let d={
            (action:UIAlertAction)->Void in
            self.OPN_IMG.image=UIImage(named: "search.jpeg")
            self.performSegue(withIdentifier: "ENDB", sender: self)
        }
        
        
        let myalert=UIAlertController(title:"Select",message:"Patient Type  ",preferredStyle: .actionSheet)
        
        myalert.addAction(UIAlertAction(title: "New Patient", style: .default, handler: a))
        
        myalert.addAction(UIAlertAction(title: "Old Patient", style: .default, handler: b))
        
        myalert.addAction(UIAlertAction(title: "Lab Test", style: .default, handler: c))
        
        myalert.addAction(UIAlertAction(title: "Search Engine", style: .default, handler: d))
        
        myalert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(myalert,animated:true,completion: nil)
        
    }
    
    
    
}
