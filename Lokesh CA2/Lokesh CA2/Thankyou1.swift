//
//  Thankyou1.swift
//  Lokesh CA2
//
//  Created by Student on 31/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit
var lname=String()
var thankyou_cost=String()
var thanyou_test=String()
class Thankyou1: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        Name.text=lname
        cost.text=thankyou_cost
        test.text=thanyou_test
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var Name: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBOutlet var test: UILabel!
    @IBOutlet var cost: UILabel!
   
    @IBAction func next_btn(_ sender: Any) {
        self.performSegue(withIdentifier: "test_return", sender: self)
    }
    
}
