//
//  Student.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/19/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Student: Person {
    
    init() {
    }
    
    init(PersonID : Int, FirstName : String, LastName : String, Email : String, Sex : String, Telephone : String, Index : String) {
        
        self.PersonID = PersonID
        self.FirstName = FirstName
        self.LastName = LastName
        self.Email = Email
        self.Sex = Sex
        self.Telephone = Telephone
        self.Index = Index
    }
    
    var PersonID : Int {
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
        set(Telephone) {
            self.Telephone = Telephone
        }
    }
    
    var Index : String {
        get {
            return self.Index
        }
        set(Index) {
            self.Index = Index
        }
    }
    
}

