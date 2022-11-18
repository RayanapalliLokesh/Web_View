//
//  ok2ViewController.swift
//  Lokesh CA2
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class ok2ViewController: UIViewController {
    
var sex = "Not Selected"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        let newVC: Second_Print_ViewController = segue.destination as! Second_Print_ViewController
        let name=pname.text!
        let age=page.text!
        let weight=pweight.text!
        let temperature=ptemperature.text!
        let symptoms=psymptoms.text!
        let medical_record=pmedical_record.text!
        
        
        newVC.lname=name
        newVC.lage=age
        newVC.lweight=weight
        newVC.ltemperature=temperature
        newVC.lsymptoms=symptoms
        newVC.lsex=sex
        newVC.lmedical_record=medical_record
        
        
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBOutlet var MF_IMG: UIImageView!
    
    
    @IBAction func MF(_ sender: UISegmentedControl) {
        
        if(sender.selectedSegmentIndex==0){
            MF_IMG.image=UIImage(named: "Select.jpeg")
            sex = "Not Selected"
        }
        else if(sender.selectedSegmentIndex==1){
            MF_IMG.image=UIImage(named: "male.jpeg")
            sex = "Male"
        }
        else{
            MF_IMG.image=UIImage(named: "female.jpeg")
            sex = "Female"
        }
    }
    
    
    
   
    @IBAction func sl1(_ sender: UISlider) {
        pweight.text=String(Int(sender.value))
    }
    
    @IBOutlet var pname: UITextField!

    
    @IBOutlet var page: UITextField!
    
    
    @IBOutlet var pweight: UITextField!
    
    
    @IBOutlet var ptemperature: UITextField!
    
    
    @IBOutlet var psymptoms: UITextField!

    
    @IBOutlet var pmedical_record: UITextField!
    
    

}
