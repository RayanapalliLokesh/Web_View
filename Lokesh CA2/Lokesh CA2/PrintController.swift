//
//  PrintController.swift
//  Lokesh CA2
//
//  Created by Student on 07/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class PrintController: UIViewController {
    
    var lname=String()
    var lage=String()
    var lweight=String()
    var ltemperature=String()
    var lsymptoms=String()
    var lsex=String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        l1.text=lname
        l2.text=lage
        l3.text=lweight
        l4.text=ltemperature
        l5.text=lsymptoms
        l6.text=lsex
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    @IBOutlet var l1: UILabel!
    
    
    @IBOutlet var l2: UILabel!
    
    
    @IBOutlet var l3: UILabel!
    
    
    @IBOutlet var l4: UILabel!
    
    
    @IBOutlet var l5: UILabel!
    
    
    @IBOutlet var l6: UILabel!
    
    
    @IBAction func next_btn(_ sender: Any) {
        self.performSegue(withIdentifier: "new_return", sender: self)
    }
    
}



