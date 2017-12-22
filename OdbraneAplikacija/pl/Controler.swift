//
//  Controler.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/21/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class Controler: NSObject {
    
    private var dbb: DBBroker
    private static var instance: Controler?
    
    private override init() {
        dbb = DBBroker()
    }
    
    public static func getInstance() -> Controler {
        if instance == nil {
            instance = Controler()
        }
        
        return instance!
    }
    
    public func saveLecturer(lect: Lecturer) throws {
        dbb.openConnection()
        try dbb.saveLecturer(lect: lect)
        dbb.closeConnection()
    }
    
}

