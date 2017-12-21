//
//  Person.swift
//  OdbraneAplikacija
//
//  Created by Željana Milošević on 12/19/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

protocol Person {
    var PersonID : Int { get set}
    var FirstName : String { get set}
    var LastName : String { get set}
    var Email : String { get set}
    var Sex : String { get set}
    var Telephone : String { get set}
    
}

