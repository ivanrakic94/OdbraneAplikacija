//
//  Activity.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Activity {
    
    var ActivityID : Int?
    var ActivityName : String?
    var TemplateList : Array<Template>?
    var TopicList : Array<Topic>?
    
    init() {
    }
    
    init(ActivityID : Int, ActivityName : String) {
        self.ActivityID = ActivityID
        self.ActivityName = ActivityName
        self.TemplateList = Array<Template>()
        self.TopicList = Array<Topic>()
    }
    
    func getActivityID() -> Int {
        return ActivityID!
    }
    
    func setActivityID(ActivityID : Int) {
        self.ActivityID = ActivityID
    }
    
    func getActivityName() -> String {
        return ActivityName!
    }
    
    func setActivityName(ActivityName : String) {
        self.ActivityName = ActivityName
    }
    
    func getTemplates() -> Array<Template> {
        return TemplateList!
    }
    
    func setTemplates(TemplateList : Array<Template>) {
        self.TemplateList = TemplateList
    }
    
    func getTopics() -> Array<Topic> {
        return TopicList!
    }
    
    func setTopics(TopicList : Array<Topic>) {
        self.TopicList = TopicList
    }
}


