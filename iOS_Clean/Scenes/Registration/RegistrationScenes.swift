//
//  RegistrationScenes.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/17/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import Foundation
import UIKit
enum  RegistrationScenes : String {
    case login = "LoginVC"
    case signUp = "SignUpVC"
}
extension  RegistrationScenes : StoryboardSceneType {
    static let storyboardName = "Registration"

    static func initialViewController() -> UINavigationController {
        guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
            fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
        }
        return vc
    }
}



