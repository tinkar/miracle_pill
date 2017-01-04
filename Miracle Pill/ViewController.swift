//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Krystian Kopeć on 04.01.2017.
//  Copyright © 2017 Krystian Kopeć. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statePicker: UIPickerView!
    
    @IBOutlet var chooseYourStateBtn: UIButton!
    
    @IBAction func chooseYourStateButton(_ sender: Any) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

