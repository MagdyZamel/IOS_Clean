//
//  Credential.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/16/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import Foundation

import Gloss

struct CredentialViewModel:JSONEncodable{
    let email: String?
    let password: String?
    func toJSON() -> JSON? {
        return jsonify([
            "password" ~~> self.email,
            "email" ~~> self.password
            ])
    }

}
