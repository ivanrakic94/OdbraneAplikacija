//
//  FirstViewController.swift
//  OdbraneAplikacija
//
//  Created by Ivan Rakić on 12/19/17.
//  Copyright © 2017 Ivan Rakić. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController {
    @IBOutlet weak var titleCorrectImage: UIImageView!
    @IBOutlet weak var titleErrorImage: UIImageView!
    @IBOutlet weak var telephoneCorrectImage: UIImageView!
    @IBOutlet weak var telephoneErrorImage: UIImageView!
    @IBOutlet weak var emailCorrectImage: UIImageView!
    @IBOutlet weak var emailErrorImage: UIImageView!
    @IBOutlet weak var lastNameCorrectImage: UIImageView!
    @IBOutlet weak var lastNameErrorImage: UIImageView!
    @IBOutlet weak var nameErrorImage: UIImageView!
    @IBOutlet weak var nameCorrectImage: UIImageView!
    
    
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
        nameTxt.backgroundColor = UIColor.init(red: 0.56470588235, green: 0.90980392156, blue: 0.47843137254, alpha: 1.0)
        lastNameTxt.backgroundColor = UIColor.init(red: 0.56470588235, green: 0.90980392156, blue: 0.47843137254, alpha: 1.0)
        emailTxt.backgroundColor = UIColor.init(red: 0.56470588235, green: 0.90980392156, blue: 0.47843137254, alpha: 1.0)
        telephoneTxt.backgroundColor = UIColor.init(red: 0.56470588235, green: 0.90980392156, blue: 0.47843137254, alpha: 1.0)
        titleTxt.backgroundColor = UIColor.init(red: 0.56470588235, green: 0.90980392156, blue: 0.47843137254, alpha: 1.0)
        
        let validation = LecturerValidator.validateLecturer(nameTxt: nameTxt, lastNameTxt: lastNameTxt, emailTxt: emailTxt, telephoneTxt: telephoneTxt, titleTxt: titleTxt)
        
        if !validation.status {
            showErrorMessage(message: validation.message)
            return
        }
        
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
    
    @IBAction func nameChange(_ sender: Any) {
        if EmptyStringValidator.validateEmpty(txtField: nameTxt) {
            nameErrorImage.isHidden = true
            nameCorrectImage.isHidden = false
            return
        }
        
        nameErrorImage.isHidden = false
        nameCorrectImage.isHidden = true
    }
    
    @IBAction func emailChanged(_ sender: Any) {
        
        if MailValidator.validateEmail(txtField: emailTxt) {
            emailErrorImage.isHidden = true
            emailCorrectImage.isHidden = false
            return
        }
        
        emailErrorImage.isHidden = false
        emailCorrectImage.isHidden = true
        
    }
    
    @IBAction func lastNameChanged(_ sender: Any) {
        if EmptyStringValidator.validateEmpty(txtField: lastNameTxt) {
            lastNameErrorImage.isHidden = true
            lastNameCorrectImage.isHidden = false
            return
        }
        
        lastNameErrorImage.isHidden = false
        lastNameCorrectImage.isHidden = true
    }
    
    @IBAction func titleChanged(_ sender: Any) {
        if EmptyStringValidator.validateEmpty(txtField: titleTxt) {
            titleErrorImage.isHidden = true
            titleCorrectImage.isHidden = false
            return
        }
        
        titleErrorImage.isHidden = false
        titleCorrectImage.isHidden = true
    }
    
    @IBAction func telephoneChanged(_ sender: Any) {
        if TelephoneValidator.validateTelephone(txtField: telephoneTxt) {
            telephoneErrorImage.isHidden = true
            telephoneCorrectImage.isHidden = false
            return
        }
        
        telephoneErrorImage.isHidden = false
        telephoneCorrectImage.isHidden = true
    }
    
    func showErrorMessage(message: String) {
        let alert = UIAlertController(title: "Greska u unosu nastavnika", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }

}

