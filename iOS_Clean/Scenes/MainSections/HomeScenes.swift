//
//  RegistrationScenes.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/17/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import Foundation
import UIKit
enum  HomeScenes : String {
    case HomeVC = "HomeVC"
    case signUp = "SignUpVC"
}
extension  HomeScenes : StoryboardSceneType {
    static let storyboardName = "Home"

    static func initialViewController() -> HomeVC {
        guard let vc = storyboard().instantiateInitialViewController() as? HomeVC else {
            fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
        }
        return vc
    }
}



