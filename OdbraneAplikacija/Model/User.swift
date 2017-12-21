//
//  User.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class User: Lecturer {
    
    init(PersonID: Int, FirstName: String, LastName: String, Email: String, Sex: String, Telephone: String, Title: String, EmailPassword : String, AllowedNumberOfTopics : Int) {
        super.init(PersonID : PersonID, FirstName : FirstName, LastName : LastName, Email : Email, Sex : Sex, Telephone : Telephone, Title : Title)
        self.EmailPassword = EmailPassword
        self.AllowedNumberOfTopics = AllowedNumberOfTopics
        self.TemplateList = Array<Template>()
    }
    
    var EmailPassword : String {
        get {
            return self.EmailPassword
        }
        set (EmailPassword) {
            self.EmailPassword = EmailPassword
        }
    }
    
    var AllowedNumberOfTopics : Int {
        get {
            return self.AllowedNumberOfTopics
        }
        set (AllowedNumberOfTopics) {
            self.AllowedNumberOfTopics = AllowedNumberOfTopics
        }
    }
    
    var TemplateList : Array<Template> {
        get {
            return self.TemplateList
        }
        set (TemplateListP) {
            self.TemplateList = TemplateListP
        }
    }
    
}

