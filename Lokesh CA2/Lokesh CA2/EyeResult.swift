//
//  EyeResult.swift
//  Lokesh CA2
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit
var tp_result=String()
var tp_name=String()
var tp_amount=String()

class EyeResult: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lname.text=tp_name
        l_see.text=tp_result
        amount.text=tp_amount

        // Do any additional setup after loading the view.
    }
    


    @IBOutlet var lname: UILabel!
    
    @IBOutlet var l_see: UILabel!
    
    
    @IBOutlet var amount: UILabel!
    
    @IBAction func next_btn(_ sender: Any) {
        self.performSegue(withIdentifier: "eye_return", sender: self)
    }

}
