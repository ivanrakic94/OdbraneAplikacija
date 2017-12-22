//
//  Lecturer.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Lecturer {
    
    var PersonID: Int?
    var FirstName: String?
    var LastName: String?
    var Email: String?
    var Sex: String?
    var Telephone: String?
    var Title: String?
    
    init() {
    }
    
    init(FirstName : String, LastName : String, Email : String, Sex : String, Telephone : String, Title : String) {
        
        self.FirstName = FirstName
        self.LastName = LastName
        self.Email = Email
        self.Sex = Sex
        self.Telephone = Telephone
        self.Title = Title
    }
    
    func getPersonID() -> Int {
        return PersonID!
    }
    
    func setPersonID(PersonID : Int) {
        self.PersonID = PersonID
    }
    
    func getFirstName() -> String {
        return FirstName!
    }
    
    func setFirstName(FirstName : String) {
        self.FirstName = FirstName
    }
    
    func getLastName() -> String {
        return LastName!
    }
    
    func setLastName(LastName : String) {
        self.LastName = LastName
    }
    
    func getEmail() -> String {
        return Email!
    }
    
    func setEmail(Email : String) {
        self.Email = Email
    }
    
    func getSex() -> String {
        return Sex!
    }
    
    func setSex(Sex : String) {
        self.Sex = Sex
    }
    
    func getTelephone() -> String {
        return Telephone!
    }
    
    func setTelephone(Telephone : String) {
        self.Telephone = Telephone
    }
    
    func getTitle() -> String {
        return Title!
    }
    
    func setTitle(Title : String) {
        self.Title = Title
    }
    
}


