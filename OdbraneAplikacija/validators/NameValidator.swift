//
//  NameValidator.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/25/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class NameValidator: NSObject {
    
    public static func validateName(txtField: UITextField) -> Bool {
        if !EmptyStringValidator.validateEmpty(txtField: txtField) {
            return false
        }
        
        let digits = CharacterSet.decimalDigits
        
        if let value = txtField.text {
            for c in value.unicodeScalars {
                if digits.contains(c) {
                    return false
                }
            }
            
            return true
        }
        
        return false
    }

}
