//
//  TelephoneValidator.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/22/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class TelephoneValidator: NSObject {
    
    static func validateTelephone(txtField: UITextField) -> Bool {
        if !EmptyStringValidator.validateEmpty(txtField: txtField) {
            return false
        }
        
        let digits = CharacterSet.decimalDigits
        var flag: Bool = true
        
        if let tel = txtField.text {
            for ch in tel.unicodeScalars {
                if !digits.contains(ch) && ch != "+" && ch != "(" && ch != ")" && ch != "-" && ch != " " {
                    flag = false
                }
            }
            
            if flag {
                return true
            }
        }
        
        return false
        
    }

}
