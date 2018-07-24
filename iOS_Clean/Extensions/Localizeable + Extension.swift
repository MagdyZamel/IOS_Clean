//
//  localizable.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import Foundation
import Localize_Swift

extension Localize{

    public enum AppLanguage:String {
        case arabic = "ar"
        case english = "en"
    }

    open class func isCurrentLanguageArabic() -> Bool{
        return Localize.currentLanguage() == "ar"
    }
    open class func isCurrentLanguageEnglish() -> Bool{
        return Localize.currentLanguage() == "en"
    }
    open class func setEnglishCurrentLanguage() {
        Localize.setCurrentLanguage("en")
    }
    open class func setArabicCurrentLanguage() {
        Localize.setCurrentLanguage("ar")
    }
    open class func getCurrentLanguage() -> AppLanguage{
        if  Localize.isCurrentLanguageEnglish(){
            return AppLanguage(rawValue: "en")!
        }
        return AppLanguage(rawValue: "ar")!
    }
    
}

