//
//  Topic.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Topic {
    
    var TopicID : Int?
    var Title : String?
    var Module : String?
    var Status : String?
    var ApprovalDate : Date?
    var DateOfDefence : Date?
    var DefenceLocation : String?
    var LecturerObject : Lecturer?
    var StudentObject : Student?
    var LecturerList : Array<Lecturer>?
    
    init() {
    }
    
    init(TopicID : Int, Title : String, Module : String, Status : String, ApprovalDate : Date, DateOfDefence : Date, DefenceLocation : String) {
        
        self.TopicID = TopicID
        self.Title = Title
        self.Module = Module
        self.Status = Status
        self.ApprovalDate = ApprovalDate
        self.DateOfDefence = DateOfDefence
        self.DefenceLocation = DefenceLocation
        self.LecturerList = Array<Lecturer>()
    }
    
    func getTopicID() -> Int {
        return TopicID!
    }
    
    func setTopicID(TopicID : Int) {
        self.TopicID = TopicID
    }
    
    func getTitle() -> String {
        return Title!
    }
    
    func setTitle(Title : String) {
        self.Title = Title
    }
    
    func getModule() -> String {
        return Module!
    }
    
    func setModule(Module : String) {
        self.Module = Module
    }
    
    func getStatus() -> String {
        return Status!
    }
    
    func setStatus(Status : String) {
        self.Status = Status
    }
    
    func getApprovalDate() -> Date {
        return ApprovalDate!
    }
    
    func setApprovalDate(ApprovalDate : Date) {
        self.ApprovalDate = ApprovalDate
    }
    
    func getDateOfDefence() -> Date {
        return DateOfDefence!
    }
    
    func setDateOfDefence(DateOfDefence : Date) {
        self.DateOfDefence = DateOfDefence
    }
    
    func getDefenceLocation() -> String {
        return DefenceLocation!
    }
    
    func setDefenceLocation(DefenceLocation : String) {
        self.DefenceLocation = DefenceLocation
    }
    
    func getLecturer() -> Lecturer {
        return LecturerObject!
    }
    
    func setLecturer(LecturerObject : Lecturer) {
        self.LecturerObject = LecturerObject
    }
    
    func getStudent() -> Student {
        return StudentObject!
    }
    
    func setStudent(StudentObject : Student) {
        self.StudentObject = StudentObject
    }
    
    func getLecturers() -> Array<Lecturer> {
        return LecturerList!
    }
    
    func setLecturers(LecturerList : Array<Lecturer>) {
        self.LecturerList = LecturerList
    }
    
}

