//
//  Coordinator.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/10/17.
//  Copyright © 2017 Magdy Zamel. All rights reserved.
//

import Foundation
import  UIKit

protocol Coordinator  : class{
    func start()
}

extension Coordinator {
    func start() {
        print("start PresenterCoordinator ")

    }
}

class PresenterCoordinator:Coordinator {

    weak  var viewController: UIViewController?
    weak var navigationController: UINavigationController?

    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
}
class NavigationCoordinator:Coordinator {

    weak var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    

}


