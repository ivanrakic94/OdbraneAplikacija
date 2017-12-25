//
//  MailValidator.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/22/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

public class MailValidator: NSObject {
    
    static func validateEmail(txtField: UITextField) -> Bool {
        
        if let email = txtField.text {
            if email == "" {
                return false
            }
            
            do {
                let pattern = "(\\w+?@\\w+?\\x2E.+)"
                
                let regExp = try NSRegularExpression(pattern: pattern, options: [])
                
                let matches = regExp.matches(in: email, options: [], range: NSMakeRange(0, email.count))
                
                if matches.count >= 1 {
                    return true
                }
            } catch {
                return false
            }
        }
        
        return false
    }

}
