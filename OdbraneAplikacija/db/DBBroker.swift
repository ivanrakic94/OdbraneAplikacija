//
//  DBBroker.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/19/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit
import SQLite

class DBBroker: NSObject {
    
    var databaseUrl: URL!
    var db: Connection!
    
    let Lecturer = Table("Lecturer")
    let PersonID = Expression<Int>("PersonID")
    let FirstName = Expression<String>("FirstName")
    let LastName = Expression<String>("Email")
    let Email = Expression<String>("Email")
    let Sex = Expression<String>("Sex")
    let Telephone = Expression<String>("Telephone")
    let Title = Expression<String>("Title")
    
    let Student = Table("Student")
    let Index = Expression<String>("Index")
    
    let User = Table("User")
    let EmailPassword = Expression<String>("EmailPassword")
    let numberOfTopics = Expression<Int>("AllowedNumberOfTopics")
    
    let Activity = Table("Activity")
    let ActivityID = Expression<Int>("ActivityID")
    let ActivityName = Expression<String>("ActivityName")
    
    let Template = Table("Template")
    let TemplateID = Expression<Int>("TemplateID")
    let TemplateTitle = Expression<String>("Title")
    let Subject = Expression<String>("Subject")
    let Content = Expression<String>("Content")
    
    let Assignment = Table("Assignment")
    
    let Topic = Table("Topic")
    let TopicID = Expression<Int>("TopicID")
    let TopicTitle = Expression<String>("Title")
    let Module = Expression<String>("Module")
    let Status = Expression<String>("Status")
    let ApprovalDate = Expression<Date>("ApprovalDate")
    let DateOfDefence = Expression<Date>("DateOfDefence")
    let DefenceLocation = Expression<String>("DefenceLocation")
    let StudentID = Expression<Int>("StudentID")
    let MentorID = Expression<Int>("MentorID")
    
    let Membership = Table("Membership")
    
    func otvoriKonekciju() {
        do {
            databaseUrl = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent("baza_odbrana").appendingPathExtension("sqlite3")
            
            db = try Connection(databaseUrl.path)
            
            createLecturerTable()
            createUserTable()
            createTopicTable()
            createStudentTable()
            createActivityTable()
            createTemplateTable()
            createAssignmentTable()
            createMembershipTable()
        }
        catch {
            
        }
        
        
    }
    
    
    
    func createLecturerTable() {
        let createTable = Lecturer.create { (table) in
            table.column(PersonID, primaryKey:true)
            table.column(FirstName)
            table.column(LastName)
            table.column(Email)
            table.column(Sex)
            table.column(Telephone)
            table.column(Title)
        }
        
        do {
            try db.run(createTable)
            print("Table Lecturer successfully created")
        } catch {
            print("Error creating table Lecturer")
            print(error)
        }
    }
    
    func createStudentTable() {
        let createTable = Student.create { (table) in
            table.column(PersonID, primaryKey:true)
            table.column(FirstName)
            table.column(LastName)
            table.column(Email)
            table.column(Sex)
            table.column(Telephone)
            table.column(Index)
        }
        
        do {
            try db.run(createTable)
            print("Table Student successfully created")
        } catch {
            print("Error creating table Student")
            print(error)
        }
    }
    
    func createUserTable() {
        let createTable = User.create { (table) in
            table.column(PersonID, references: Lecturer, PersonID)
            table.column(EmailPassword)
            table.column(numberOfTopics)
            table.primaryKey(PersonID)
        }
        
        do {
            try db.run(createTable)
            print("Table User successfully created")
        } catch {
            print("Error creating table User")
            print(error)
        }
    }
    
    func createActivityTable() {
        let createTable = User.create { (table) in
            table.column(ActivityID, primaryKey:true)
            table.column(ActivityName)
        }
        
        do {
            try db.run(createTable)
            print("Table Activity successfully created")
        } catch {
            print("Error creating table Activity")
            print(error)
        }
    }
    
    func createTemplateTable() {
        let createTable = Template.create { (table) in
            table.column(TemplateID, primaryKey: true)
            table.column(TemplateTitle)
            table.column(Subject)
            table.column(Content)
            table.column(PersonID, references: User, PersonID)
        }
        
        do {
            try db.run(createTable)
            print("Table Template successfully created")
        } catch {
            print("Error creating table Template")
            print(error)
        }
    }
    
    func createAssignmentTable() {
        let createTable = User.create { (table) in
            table.column(ActivityID, references: Activity, ActivityID)
            table.column(TemplateID, references: Template, TemplateID)
            table.primaryKey(ActivityID, TemplateID)
        }
        
        do {
            try db.run(createTable)
            print("Table Assignment successfully created")
        } catch {
            print("Error creating table Assignment")
            print(error)
        }
    }
    
    func createTopicTable() {
        let createTable = Topic.create { (table) in
            table.column(TopicID, primaryKey: true)
            table.column(TopicTitle)
            table.column(Module)
            table.column(Status)
            table.column(ApprovalDate)
            table.column(DateOfDefence)
            table.column(DefenceLocation)
            table.column(StudentID, references: Student, PersonID)
            table.column(MentorID, references: Lecturer, PersonID)
        }
        
        do {
            try db.run(createTable)
            print("Table Topic successfully created")
        } catch {
            print("Error creating table Topic")
            print(error)
        }
    }
    
    func createMembershipTable() {
        let createTable = Membership.create { (table) in
            table.column(PersonID, references: Lecturer, PersonID)
            table.column(TopicID, references: Topic, TopicID)
            table.primaryKey(PersonID, TopicID)
        }
        
        do {
            try db.run(createTable)
            print("Table Membership successfully created")
        } catch {
            print("Error creating table Membership")
            print(error)
        }
    }
    
    
}
