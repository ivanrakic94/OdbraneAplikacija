//
//  ConfigurationViewController.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/25/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class ConfigurationViewController: UIViewController {
    
    @IBOutlet weak var topicsTxt: UITextField!
    @IBOutlet weak var titleTxt: UITextField!
    @IBOutlet weak var telephoneTxt: UITextField!
    @IBOutlet weak var sexSwitch: UISegmentedControl!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveUser(_ sender: Any) {
        let selectedSex = sexSwitch.selectedSegmentIndex
        let sex: String
        
        if selectedSex == 0 {
            sex = "M"
        } else {
            sex = "Z"
        }
        
        var user: User = User(FirstName: nameTxt.text!, LastName: lastNameTxt.text!, Email: emailTxt.text!, Sex: sex, Telephone: telephoneTxt.text!, Title: titleTxt.text!, EmailPassword: passwordTxt.text!, AllowedNumberOfTopics: Int(topicsTxt.text!)!)
        
        do {
            try Controler.getInstance().saveUser(user: user)
        } catch {
            print("Error saving user \(nameTxt.text!) \(lastNameTxt.text!)")
            print(error)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
