//
//  ViewController.swift
//  SoundEfect
//
//  Created by Theodor Ungureanu on 7/23/19.
//  Copyright © 2019 Snowlix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("button record pressed")
        recordingLabel.text = "Recording in progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording pressed")
    }
}

