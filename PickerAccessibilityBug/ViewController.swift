//
//  ViewController.swift
//  PickerAccessibilityBug
//
//  Created by Saamer Mansoor on 1/3/19.
//  Copyright © 2019 Saamer Mansoor. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SampleTextField.text = pickOption[row]
    }

    @IBOutlet weak var SampleTextField: UITextField!
    var pickOption = ["Savings", "Checking"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        pickerView.delegate = self
        SampleTextField.inputView = pickerView
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

