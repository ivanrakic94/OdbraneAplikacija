//
//  User.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class User: Lecturer {
    
    var EmailPassword : String {
        get {
            return self.EmailPassword
        }
        set (EmailPassword) {
            self.EmailPassword = EmailPassword
        }
    }
    
    var AllowedNumberOfTopics : Int32 {
        get {
            return self.AllowedNumberOfTopics
        }
        set (AllowedNumberOfTopics) {
            self.AllowedNumberOfTopics = AllowedNumberOfTopics
        }
    }
    
    var TemplateList : Array<Template> = Array() {
        get {
            return self.TemplateList
        }
        set (TemplateListP) {
            self.TemplateList = TemplateListP
        }
    }
    
}

