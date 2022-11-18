//
//  EarResult.swift
//  Lokesh CA2
//
//  Created by Student on 31/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit
var name=String()
var testresult=String()
var tamount=String()

class EarResult: UIViewController {

    let lresult=String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lname.text=name
        l_hear.text=testresult
        amount.text=tamount
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBOutlet var lname: UILabel!
    
    @IBOutlet var l_hear: UILabel!
    
    
    @IBOutlet var amount: UILabel!
    
    @IBAction func next_btn(_ sender: Any) {
        self.performSegue(withIdentifier: "ear_return", sender: self)
    }
}
