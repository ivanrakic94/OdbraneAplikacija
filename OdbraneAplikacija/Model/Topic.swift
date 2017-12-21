//
//  Topic.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Topic {
    
    init() {
    }
    
    init(TopicID : Int, Title : String, Module : String, Status : String, ApprovalDate : Date, DateOfDefence : Date, DefanceLocation : String) {
        
        self.TopicID = TopicID
        self.Title = Title
        self.Module = Module
        self.Status = Status
        self.ApprovalDate = ApprovalDate
        self.DateOfDefence = DateOfDefence
        self.DefenceLocation = DefanceLocation
        self.LecturerList = Array<Lecturer>()
    }
    
    var TopicID : Int {
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
    
    var LecturerList : Array<Lecturer> {
        get {
            return self.LecturerList
        }
        set (LecturerListP) {
            self.LecturerList = LecturerListP
        }
    }
    
}

