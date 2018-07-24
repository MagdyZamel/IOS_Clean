//
//  UIViewController.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func setNavBarTitle(title:String,withColor color :UIColor,  tintColor :UIColor ) {
        let titleView = UILabel(frame:CGRect(x: 0, y: 0, width: 34, height: 34))
         titleView.text = title
        titleView.textColor = color
        self.navigationItem.titleView = titleView
        self.navigationController!.navigationBar.tintColor = tintColor
    }
    func presentAlertWith(title:String, message:String, actionTitle:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: actionTitle, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    func BG(_ block: @escaping ()->Void) {
        DispatchQueue.global(qos: .default).async(execute: block)
    }

    func UI(_ block: @escaping ()->Void) {
        DispatchQueue.main.async(execute: block)
    }

}

