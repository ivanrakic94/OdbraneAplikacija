//
//  LecturerValidator.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/22/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class LecturerValidator: NSObject {
    
    static func validateLecturer(nameTxt: UITextField, lastNameTxt: UITextField, emailTxt: UITextField, telephoneTxt: UITextField, titleTxt: UITextField) -> (status: Bool, message: String) {
        var val = (status: true, message: "")
        
        if !EmptyStringValidator.validateEmpty(txtField: nameTxt) {
            val.status = false
            val.message += "Greska u unosu! Nije uneto ime.\n"
            nameTxt.backgroundColor = UIColor.init(red: 0.87843137254, green: 0.38431372549, blue: 0.38431372549, alpha: 1.0)
        }
        
        if !EmptyStringValidator.validateEmpty(txtField: lastNameTxt) {
            val.status = false
            val.message += "Greska u unosu! Nije uneto prezime.\n"
            lastNameTxt.backgroundColor = UIColor.init(red: 0.87843137254, green: 0.38431372549, blue: 0.38431372549, alpha: 1.0)
        }
        
        if !MailValidator.validateEmail(txtField: emailTxt) {
            val.status = false
            val.message += "Greska u unosu email-a.\n"
            emailTxt.backgroundColor = UIColor.init(red: 0.87843137254, green: 0.38431372549, blue: 0.38431372549, alpha: 1.0)
        }
        
        if !TelephoneValidator.validateTelephone(txtField: telephoneTxt) {
            val.status = false
            val.message += "Greska u unosu telefona.\n"
            telephoneTxt.backgroundColor = UIColor.init(red: 0.87843137254, green: 0.38431372549, blue: 0.38431372549, alpha: 1.0)
        }
        
        if !EmptyStringValidator.validateEmpty(txtField: titleTxt) {
            val.status = false
            val.message += "Greska u unosu! Nije uneta titula.\n"
            titleTxt.backgroundColor = UIColor.init(red: 0.87843137254, green: 0.38431372549, blue: 0.38431372549, alpha: 1.0)
        }
        
        return val
    }

}
