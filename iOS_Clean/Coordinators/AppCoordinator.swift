//  AppCoordinator.swift
//  iOS_Clean
//  Created by Magdy Zamel on 7/10/17.
//  Copyright © 2017 Magdy Zamel. All rights reserved.

import Foundation
import UIKit

class AppCoordinator: NavigationCoordinator{

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
        let nav =  RegistrationScenes.initialViewController()
        super.init(navigationController: nav)
    }

     func start() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
//            //        self.intialRootCoordinator = mainTabCoordinator
        loginCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
