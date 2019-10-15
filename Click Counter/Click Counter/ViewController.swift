//
//  ViewController.swift
//  Click Counter
//
//  Created by Theodor Ungureanu on 10/10/19.
//  Copyright © 2019 Snowlix. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    var count = 0
    @IBOutlet var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func decrementCount() {
           self.count -= 1
           self.label.text = "\(self.count)"
       }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        
    }
}

