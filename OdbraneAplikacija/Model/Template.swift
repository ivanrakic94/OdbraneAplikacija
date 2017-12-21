//
//  Template.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Template {
    
    var TemplateID : Int32 {
        get {
            return self.TemplateID
        }
        set (TemplateID) {
            self.TemplateID = TemplateID
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
    
    var Subject : String {
        get {
            return self.Subject
        }
        set (Subject) {
            self.Subject = Subject
        }
    }
    
    var Content : String {
        get {
            return self.Content
        }
        set (Content) {
            self.Content = Content
        }
    }
    
    var UserObject : User {
        get {
            return self.UserObject
        }
        set (UserObject) {
            self.UserObject = UserObject
        }
    }
    
    var ActivityList : Array<Activity> {
        get {
            return self.ActivityList
        }
        set (ActivityListP) {
            self.ActivityList = ActivityListP
        }
    }
    
    
    
}

