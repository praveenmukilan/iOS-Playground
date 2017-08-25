//
//  ConversionViewController.swift
//  F2C
//
//  Created by Praveen MS on 24/8/17.
//  Copyright © 2017 Praveen MS. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var celsiusLabel:UILabel!
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.maximumFractionDigits = 1
        nf.minimumFractionDigits = 0
        nf.numberStyle = NumberFormatter.Style.decimal
        return nf
    }()
    
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value-32)*5/9
        } else {
            return nil
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
      if let text1 = textField.text , !text1.isEmpty  {
            fahrenheitValue = Double(text1)
        } else {
            fahrenheitValue = nil
        }
    }
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value:value))
        } else {
            celsiusLabel.text = "???"
        }
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(textField.text)
//        print(string)
        let text = textField.text
        if text?.range(of: ".") != nil && string.range(of: ".") != nil {
            return false
        } else if string.rangeOfCharacter(from: NSCharacterSet.letters) != nil {
            return false
        } else {
                return true
        }
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.text = ""
        return true
    }
}
