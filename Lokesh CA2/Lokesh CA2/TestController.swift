//
//  TestController.swift
//  Lokesh CA2
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class TestController: UIViewController {
    
    var ltest=String()
    var lcost=String()

    override func viewDidLoad() {
        super.viewDidLoad()

        t1.text=ltest
        c1.text=lcost
        
        
    }
    

    @IBAction func nxt_btn(_ sender: Any) {
        if(ltest=="Ear Test"){
            performSegue(withIdentifier: "EarTest", sender: self)
            tname=pname.text!
            tcost=lcost
        }
        else if(ltest=="Eye Test"){
            performSegue(withIdentifier: "EyeTest", sender: self)
            eye_test=pname.text!
            eye_cost=lcost
        }
        else{
            performSegue(withIdentifier: "Thankyou1", sender: self)
            lname=pname.text!
            thanyou_test=ltest
            thankyou_cost=lcost
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBOutlet var t1: UILabel!
    @IBOutlet var c1: UILabel!
    

    @IBOutlet var pname: UITextField!
    

}
