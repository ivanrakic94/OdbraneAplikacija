//
//  EmptyStringValidator.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/22/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class EmptyStringValidator: NSObject {
    
    static func validateEmpty(txtField: UITextField) -> Bool {
        if let value = txtField.text {
            return !value.isEmpty && EmptyStringValidator.checkEmpty(value: value)
        }
        
        return false
    }
    
    private static func checkEmpty(value: String) -> Bool {
        for c in value {
            if c != " " {
                return true
            }
        }
        
        return false
    }

}
