//
//  User.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class User: Lecturer {

    var EmailPassword : String?
    var AllowedNumberOfTopics : Int?
    var TemplateList : Array<Template>?
    
    override init() {
        super.init()
    }
    
    init(FirstName: String, LastName: String, Email: String, Sex: String, Telephone: String, Title: String, EmailPassword : String, AllowedNumberOfTopics : Int) {
        super.init(FirstName : FirstName, LastName : LastName, Email : Email, Sex : Sex, Telephone : Telephone, Title : Title)
        self.EmailPassword = EmailPassword
        self.AllowedNumberOfTopics = AllowedNumberOfTopics
        self.TemplateList = Array<Template>()
    }
    
    func getEmailPassword() -> String {
        return EmailPassword!
    }
    
    func setEmailPassword(EmailPassword : String) {
        self.EmailPassword = EmailPassword
    }
    
    func getAllowedNumberOfTopics() -> Int {
        return AllowedNumberOfTopics!
    }
    
    func setAllowedNumberOfTopics(AllowedNumberOfTopics : Int) {
        self.AllowedNumberOfTopics = AllowedNumberOfTopics
    }
    
    func getTemplates() -> Array<Template> {
        return TemplateList!
    }
    
    func setTemplates(TemplateList : Array<Template>) {
        self.TemplateList = TemplateList
    }
    
    
}

