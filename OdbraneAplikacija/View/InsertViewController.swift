//
//  FirstViewController.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/19/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var titleTxt: UITextField!
    @IBOutlet weak var telephoneTxt: UITextField!
    @IBOutlet weak var sexSwitch: UISegmentedControl!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveLecturer(_ sender: Any) {
        let selectedSex: Int = sexSwitch.selectedSegmentIndex
        
        let sex: String;
        
        if selectedSex == 0 {
            sex = "M"
        } else {
            sex = "Z"
        }
        
        let lect: Lecturer = Lecturer(FirstName: nameTxt.text!, LastName: lastNameTxt.text!, Email: emailTxt.text!, Sex: sex, Telephone: telephoneTxt.text!, Title: titleTxt.text!)
        
        do {
            try Controler.getInstance().saveLecturer(lect: lect)
        } catch {
            print("Error saving lecturer \(nameTxt.text!) \(lastNameTxt.text!) \n")
            print(error)
        }
    }
    


}

