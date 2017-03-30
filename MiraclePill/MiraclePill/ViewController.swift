//
//  ViewController.swift
//  MiraclePill
//
//  Created by Michael Le on 3/28/17.
//  Copyright © 2017 Michael Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // State Picker Outlets
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    // Labels and respective text fields
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeText: UITextField!
    
    // Buy Now Button -> Success
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var success: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "New York", "Maine"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.purple
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ~~~~~ Button Pressed ~~~~~
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeText.isHidden = true
    }

    @IBAction func buyNowPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView]{
            view.isHidden = true
        }
        success.isHidden = false
    }
    
    // ~~~~~ State Picker ~~~~~
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeText.isHidden = false
        
    }
    
}

