//
//  ViewController.swift
//  CircleProgressBar
//
//  Created by Vladislav Miroshnichenko on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: CircleProgressBar!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.startValue = 0
        progressBar.endValue = 600
        // Do any additional setup after loading the view.
    }

    @IBAction func stepper(_ sender: UIStepper) {
        let val = sender.value
        
        progressBar.setValue(value: val) {
            self.label.text = "Completed"
        }
    }
    
}

