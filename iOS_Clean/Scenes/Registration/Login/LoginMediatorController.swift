//
//  LoginPresenter.swift
//  Swyft
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import Foundation
protocol LoginProtocol {
    init(userService:UserService)
    func loginWithCredential(credential:CredentialViewModel)
    func attachView(_ view:LoginVC)
    func detachView()
}

class LoginMediatorController: LoginProtocol {

    fileprivate let userService:UserService
    private weak var loginView: LoginVC?

    required init(userService:UserService) {
        self.userService = userService
    }


    func attachView(_ view:LoginVC){
        loginView = view
    }

    func detachView() {
        loginView = nil
    }

    func loginWithCredential(credential:CredentialViewModel){
        if credential.email == "magdy"{
            self.loginView?.credentialFailedWithError("credential not vaild")
            return
        }
        userService.loginWithCredential(credential) { (userInfo) in
            if credential.email == "m.z"{
                self.loginView?.loginFailedWithError("Acouunt not found")
            }else{
                self.loginView?.loginSuccess(userInfo!)
            }

        }
    }

}
