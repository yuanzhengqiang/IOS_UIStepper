//
//  ViewController.swift
//  UIStepper
//
//  Created by 原政强 on 17/4/1.
//  Copyright © 2017年 yzq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        progress1.progress = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var progress1: UIProgressView!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        textField.text = String(format: "%g", sender.value)
        progress1.progress = Float((sender.value)/100)
    }


}

