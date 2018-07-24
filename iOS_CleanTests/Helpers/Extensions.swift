//
//  Extensions.swift
//  iOS_CleanTests
//
//  Created by Magdy Zamel on 7/18/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import Foundation
import UIKit
import XCTest
extension XCTestCase{
    func UI(_ block: @escaping ()->Void) {
        DispatchQueue.main.async(execute: block)
    }
    func BG(_ block: @escaping ()->Void) {
        DispatchQueue.global(qos: .default).async(execute: block)
    }
    func ATFER( _ sec :DispatchTime , block: @escaping ()->Void) {
        DispatchQueue.main.asyncAfter(deadline: sec, execute: block)
    }

}
