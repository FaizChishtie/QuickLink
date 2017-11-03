//
//  ProfileSetupVC.swift
//  QuickLink
//
//  Created by Faizaan Chishtie on 2017-11-02.
//  Copyright © 2017 Faizaan Chishtie. All rights reserved.
//

import UIKit
import Contacts
class ProfileSetupVC: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.FirstNameOutlet.delegate = self
        self.LastNameOutlet.delegate = self
        self.PhoneNumberOultet.delegate = self
        self.CompanyOutlet.delegate = self
        self.EmailOutlet.delegate = self
        self.LinkedInOutlet.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        FirstNameOutlet.resignFirstResponder()
        LastNameOutlet.resignFirstResponder()
        PhoneNumberOultet.resignFirstResponder()
        CompanyOutlet.resignFirstResponder()
        EmailOutlet.resignFirstResponder()
        LinkedInOutlet.resignFirstResponder()
        return true
    }
    
    //Start Outlet Collection
    @IBOutlet weak var FirstNameOutlet: UITextField!
    @IBOutlet weak var LastNameOutlet: UITextField!
    @IBOutlet weak var CompanyOutlet: UITextField!
    @IBOutlet weak var PhoneNumberOultet: UITextField!
    @IBOutlet weak var LinkedInOutlet: UITextField!
    @IBOutlet weak var EmailOutlet: UITextField!
    //Break Outlet Collection
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        let f = String(describing: FirstNameOutlet)
        let l = String(describing: LastNameOutlet)
        let c = String(describing: CompanyOutlet)
        let p = String(describing: PhoneNumberOultet)
        let lin = String(describing: LinkedInOutlet)
        let e = String(describing: EmailOutlet)
        createContact(firstName: f, lastName: l, company: c, cellPhone: p, email: e, linkedIn: lin)
    }
    
    func createContact(firstName: String, lastName: String, company:String, cellPhone: String, email: String, linkedIn: String){
        let contact = CNMutableContact()
        contact.givenName = firstName
        contact.familyName = lastName
        let workEmail = CNLabeledValue(label: CNLabelWork, value: email as NSString)
        contact.emailAddresses = [workEmail]
        contact.phoneNumbers = [CNLabeledValue(label:CNLabelPhoneNumberMain, value:CNPhoneNumber(stringValue: cellPhone))]
        //let linkedIn_val = CNLabeledValue(label: CNSocialProfile, value: linkedIn as NSString)
        //contact.socialProfiles = [linkedIn_val as! CNLabeledValue<CNSocialProfile>]
        let store = CNContactStore()
        let saveRequest = CNSaveRequest()
        saveRequest.add(contact, toContainerWithIdentifier:nil)
        try! store.execute(saveRequest)
    }
    
    
}
