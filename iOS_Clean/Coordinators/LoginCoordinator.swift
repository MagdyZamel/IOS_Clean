//
//  HomeCoordinator.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/10/17.
//  Copyright © 2017 Magdy Zamel. All rights reserved.
//

import Foundation
import UIKit
protocol LoginCoordinatorDelegete:class {
    func startHomeWith(userinfo:UserInfoEntity)
}

class LoginCoordinator: NavigationCoordinator{
     func start() {
        let userService = UserService()
        let mediatorController = LoginMediatorController(userService: userService)
        let loginVC: LoginVC = RegistrationScenes.login.viewController()
        loginVC.mediatorController = mediatorController
        loginVC.cordinator = self
        self.navigationController?.viewControllers = [loginVC]
    }
}
extension LoginCoordinator:LoginCoordinatorDelegete{
    func startHomeWith(userinfo:UserInfoEntity) {
        let userService = UserService()
        let mediatorController = HomeMediatorController(userService: userService)
        mediatorController.userInfo = userinfo
        let homeVC: HomeVC = HomeScenes.initialViewController()
        homeVC.mediatorController = mediatorController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
}

