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
    var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label

//        button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // buton 2
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 300, width: 90, height: 60)
        button2.setTitle("Decounter", for: .normal)
        button2.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button2)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func decrementCount() {
           self.count -= 1
           self.label.text = "\(self.count)"
           
       }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        
    }
}

