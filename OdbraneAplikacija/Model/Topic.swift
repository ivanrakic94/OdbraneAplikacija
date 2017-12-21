//
//  Topic.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Topic {
    
    var TopicID : Int32 {
        get {
            return self.TopicID
        }
        set (TopicID) {
            self.TopicID = TopicID
        }
    }
    
    var Title : String {
        get {
            return self.Title
        }
        set (Title) {
            self.Title = Title
        }
    }
    
    var Module : String {
        get {
            return self.Module
        }
        set (Module) {
            self.Module = Module
        }
    }
    
    var Status : String {
        get {
            return self.Status
        }
        set (Status) {
            self.Status = Status
        }
    }
    
    var ApprovalDate : Date {
        get {
            return self.ApprovalDate
        }
        set (ApprovalDate) {
            self.ApprovalDate = ApprovalDate
        }
    }
    
    var DateOfDefence : Date {
        get {
            return self.DateOfDefence
        }
        set (DateOfDefence) {
            self.DateOfDefence = DateOfDefence
        }
    }
    
    var DefenceLocation : String {
        get {
            return self.DefenceLocation
        }
        set (DefenceLocation) {
            self.DefenceLocation = DefenceLocation
        }
    }
    
    var LecturerObject : Lecturer {
        get {
            return self.LecturerObject
        }
        set (LecturerObject) {
            self.LecturerObject = LecturerObject
        }
    }
    
    var StudentObject : Student {
        get {
            return self.StudentObject
        }
        set (StudentObject) {
            self.StudentObject = StudentObject
        }
    }
    
    var LecturerList : Array<Lecturer> = Array() {
        get {
            return self.LecturerList
        }
        set (LecturerListP) {
            self.LecturerList = LecturerListP
        }
    }
    
}

