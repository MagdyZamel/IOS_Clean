//
//  StoryboardScene.swift
//  Nauta
//
//  Created by Magdy Zamel on 8/9/17.
//  Copyright © 2017 Fxlab. All rights reserved.
//

import UIKit

protocol StoryboardSceneType {
    static var storyboardName: String { get }
}


extension StoryboardSceneType {
    static func storyboard() -> UIStoryboard {
        return UIStoryboard(name: self.storyboardName, bundle: nil)
    }

    static func initialViewController() -> UIViewController {
        guard let vc = storyboard().instantiateInitialViewController() else {
            fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
        }
        return vc
    }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
     func viewController<T>() -> T {
        return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue) as! T
    }
}





