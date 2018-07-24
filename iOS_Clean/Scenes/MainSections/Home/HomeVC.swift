//
//  LoginVC.swift
//  Swyft
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import UIKit
import Localize_Swift

class HomeVC: UIViewController {

    @IBOutlet weak var emailField: UILabel!
    @IBOutlet weak var ageField: UILabel!
    @IBOutlet weak var firstNameField: UILabel!
    @IBOutlet weak var lastNameField: UILabel!

    
    var mediatorController :HomeMediatorController!

    override func viewDidLoad() {
        super.viewDidLoad()
        mediatorController.attachView(self)
    }
    func fillViewWithUserInfo(_ userInfo : UserInfoEntity){
        emailField.text = userInfo.email
        ageField.text = String(userInfo.age!)
        firstNameField.text = userInfo.firstName
        lastNameField.text = userInfo.lastName
        if Localize.isCurrentLanguageArabic(){

        }
    }

}

