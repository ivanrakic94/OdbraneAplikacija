//
//  Lecturer.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Lecturer: Person {
    
    var PersonID : Int32 {
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
        set(FirstName) {
            self.FirstName = FirstName
        }
    }
    
    var LastName : String {
        get {
            return self.LastName
        }
        set(LastName) {
            self.LastName = LastName
        }
    }
    
    var Email : String {
        get {
            return self.Email
        }
        set(Email) {
            self.Email = Email
        }
    }
    
    var Sex : Character {
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
        set(Telephone) {
            self.Telephone = Telephone
        }
    }
    
    var Title : String {
        get {
            return self.Title
        }
        set(Title) {
            self.Title = Title
        }
    }
    
}


