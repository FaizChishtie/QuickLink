//
//  ProfileSetupVC.swift
//  QuickLink
//
//  Created by Faizaan Chishtie on 2017-11-02.
//  Copyright © 2017 Faizaan Chishtie. All rights reserved.
//

import UIKit

class ProfileSetupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        var user = createUser(firstName: f, lastName: l, company: c, cellPhone: p, email: e, linkedIn: lin)
        
    }
    
    
    func createUser(firstName: String, lastName: String, company:String, cellPhone: String, email: String, linkedIn: String) -> BusinessCard{
        var user = BusinessCard()
        user.FirstName=firstName
        user.LastName=lastName
        user.CellPhone=cellPhone
        user.Company=company
        user.Email=email
        user.LinkedIn=linkedIn
        user.isActive=true
        return user
    }
}
