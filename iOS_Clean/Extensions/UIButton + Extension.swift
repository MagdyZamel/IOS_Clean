//
//  UIButton + Extension.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import Foundation
import UIKit
extension UIButton{

    func underLineTextWithColor  () {

        let attributes : [NSAttributedStringKey: Any] = [
            NSAttributedStringKey.font :  self.titleLabel!.font,
            NSAttributedStringKey.foregroundColor : self.titleLabel!.textColor,
            NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleSingle.rawValue]
        let attributeString = NSMutableAttributedString(string: self.titleLabel!.text!,
                                                            attributes: attributes)

            self.setAttributedTitle(attributeString, for: .normal)

        }
}
