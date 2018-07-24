//
//  LoginVC.swift
//  Swyft
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import UIKit
import Localize_Swift

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!

    var mediatorController :LoginMediatorController!
    var cordinator : LoginCoordinatorDelegete!
    override func viewDidLoad() {
        super.viewDidLoad()
        mediatorController.attachView(self)
        localizeView()
    }
    func localizeView(){
        emailField.placeholder = "loginEmailField".localized()
        passwordField.placeholder = "loginPasswordField".localized()
        loginButton.setTitle("loginLoginButton".localized(), for: .normal)
        forgetPasswordButton.setTitle("loginForgetPasswordButton".localized(), for: .normal)
        forgetPasswordButton.underLineTextWithColor()
        if Localize.isCurrentLanguageArabic(){
            emailField.textAlignment = .right
            passwordField.textAlignment = .right
        }
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let email = emailField.text
        let password = passwordField.text
        let credential = CredentialViewModel(email: email, password: password)
        mediatorController.loginWithCredential(credential: credential)

    }

     func loginSuccess(_ users: UserInfoEntity) {
        cordinator.startHomeWith(userinfo: users)
    }
     func loginFailedWithError( _ error: String) {
        presentAlertWith(title: "error", message: error, actionTitle: "ok")

    }
    func credentialFailedWithError( _ error: String) {
        presentAlertWith(title: "error", message: error, actionTitle: "ok")
    }

}
