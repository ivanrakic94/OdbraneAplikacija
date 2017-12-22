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
    
    init(FirstNameP : String, LastName : String, Email : String, Sex : String, Telephone : String, Title : String) {
        
        self.FirstName = FirstNameP
        self.LastName = LastName
        self.Email = Email
        self.Sex = Sex
        self.Telephone = Telephone
        self.Title = Title
    }
    
    /*var PersonID : Int {
        get {
            return self.PersonID
        }
        set(PersonID) {
            self.PersonID = PersonID
        }
    }
    
    var FirstName : String {
        get {
            return self.FirstName
        }
        set(FirstNameP) {
            self.FirstName = FirstNameP
        }
    }
    
    var LastName : String {
        get {
            return self.LastName
        }
        set(LastNameP) {
            self.LastName = LastNameP
        }
    }
    
    var Email : String {
        get {
            return self.Email
        }
        set(EmailP) {
            self.Email = EmailP
        }
    }
    
    var Sex : String {
        get {
            return self.Sex
        }
        set(Sex) {
            self.Sex = Sex
        }
    }
    
    var Telephone : String {
        get {
            return self.Telephone
        }
        set(TelephoneP) {
            self.Telephone = TelephoneP
        }
    }
    
    var Title : String {
        get {
            return self.Title
        }
        set(TitleP) {
            self.Title = TitleP
        }
    }*/
    
}


