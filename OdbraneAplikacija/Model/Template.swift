//
//  Template.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Template {
    
    var TemplateID : Int?
    var Title : String?
    var Subject : String?
    var Content : String?
    var UserObject : User?
    var ActivityList : Array<Activity>?
    
    init() {
    }
    
    init(Title : String, Subject : String, Content : String) {
        
        self.Title = Title
        self.Subject = Subject
        self.Content = Content
        self.ActivityList = Array<Activity>()
    }
    
    func getTemplateID() -> Int {
        return TemplateID!
    }
    
    func setTemplateID(TemplateID : Int) {
        self.TemplateID = TemplateID
    }
    
    func getTitle() -> String {
        return Title!
    }
    
    func setTitle(Title : String) {
        self.Title = Title
    }
    
    func getSubject() -> String {
        return Subject!
    }
    
    func setSubject(Subject : String) {
        self.Subject = Subject
    }
    
    func getContent() -> String {
        return Content!
    }
    
    func setContent(Content : String) {
        self.Content = Content
    }
    
    func getUser() -> User {
        return UserObject!
    }
    
    func setUser(UserObject : User) {
        self.UserObject = UserObject
    }
    
    func getActivities() -> Array<Activity> {
        return ActivityList!
    }
    
    func setActivities(ActivityList : Array<Activity>) {
        self.ActivityList = ActivityList
    }
   
}

