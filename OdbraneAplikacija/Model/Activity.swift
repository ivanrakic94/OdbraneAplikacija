//
//  Activity.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Activity {
    
    init() {
    }
    
    init(ActivityID : Int32, ActivityName : String) {
        self.ActivityID = ActivityID
        self.ActivityName = ActivityName
        self.TemplateList = Array<Template>()
        self.TopicList = Array<Topic>()
    }
    
    var ActivityID : Int32 {
        get {
            return self.ActivityID
        }
        set (ActivityID) {
            self.ActivityID = ActivityID
        }
    }
    
    var ActivityName : String {
        get {
            return self.ActivityName
        }
        set (ActivityName) {
            self.ActivityName = ActivityName
        }
    }
    
    var TopicList : Array<Topic> = Array() {
        get {
            return self.TopicList
        }
        set (TopicListP) {
            self.TopicList = TopicListP
        }
    }
    
    var TemplateList : Array<Template> = Array() {
        get {
            return self.TemplateList
        }
        set (TemplateListP) {
            self.TemplateList = TemplateListP
        }
    }
}

