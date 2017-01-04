//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Krystian Kopeć on 04.01.2017.
//  Copyright © 2017 Krystian Kopeć. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    // UIPickerViewDataSource, UIPickerViewDelegate are necessary for the state picker
    
    let statesArray = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

    
    
    @IBOutlet var buyButton: UIButton!
    
    @IBOutlet var postCodeTextField: UITextField!
       
    @IBOutlet var countryLabel: UILabel!
    
    @IBOutlet var countryTextField: UITextField!
    
    @IBOutlet var postCodeLabel: UILabel!
    
    @IBOutlet var statePicker: UIPickerView!
    
    @IBOutlet var chooseYourStateBtn: UIButton!
    
    @IBOutlet var miracleImage: UIImageView!
 
    @IBOutlet var successImageView: UIImageView!
    
    @IBOutlet var miracleLabel: UILabel!
    
    @IBOutlet var cashLabel: UILabel!
    
    @IBOutlet var divider: UIView!
    
    @IBOutlet var fullName: UILabel!
    
    @IBOutlet var fullNameTextField: UITextField!
    
    @IBOutlet var streetAddresLabel: UILabel!
    
    @IBOutlet var streetAddresTextField: UITextField!
    
    @IBOutlet var cityLabel: UILabel!
    
    @IBOutlet var cityTextField: UITextField!
    
    @IBOutlet var stateLabel: UILabel!
    
    @IBAction func buyButtonPressed(_ sender: Any) {
        
        successImageView.isHidden = false
        
        buyButton.isHidden = true
        
        postCodeTextField.isHidden = true
        
        countryLabel.isHidden = true
        
        countryTextField.isHidden = true
        
        postCodeLabel.isHidden = true
        
        statePicker.isHidden = true
        
        chooseYourStateBtn.isHidden = true
        
        miracleImage.isHidden = true
        
        miracleLabel.isHidden = true
        
        cashLabel.isHidden = true
        
        divider.isHidden = true
        
        fullName.isHidden = true
        
        fullNameTextField.isHidden = true
        
        streetAddresLabel.isHidden = true
        
        streetAddresTextField.isHidden = true
        
        cityLabel.isHidden = true
        
        cityTextField.isHidden = true
        
        stateLabel.isHidden = true
    }
    
    
    
    @IBAction func chooseYourStateButton(_ sender: Any) {
        
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        postCodeLabel.isHidden = true
        postCodeTextField.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
        // connects the statePicker datasource and delegate
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // sets the number of components
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return statesArray.count 
    }
    // sets the number of rows in a component

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return statesArray[row]
    }
    // sets the contents of a row

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        chooseYourStateBtn.setTitle(statesArray[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        postCodeLabel.isHidden = false
        postCodeTextField.isHidden = false
        
    }
    // sets what row was selected in the picker and what happens next
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

