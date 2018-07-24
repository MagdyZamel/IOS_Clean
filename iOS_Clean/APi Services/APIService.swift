//  RegistrationService.swift
//  iOS_Clean
//
//  Created by Magdy Zamel on 7/16/18.
//  Copyright © 2018 United Brothers. All rights reserved.

import Foundation
import Moya

enum RegistrationService {
    case loginWithCredential(credential:CredentialViewModel)
}

extension RegistrationService: TargetType {

    var baseURL: URL { return URL(string: Singleton.baseDomain)! }



    var path:String{
        switch self {
        case .loginWithCredential:
            return "/questions"
        }

    }

    var method: Moya.Method {
        switch self {
        case .loginWithCredential:
            return .post
        }
    }
    var headers: [String : String]? {
        switch self {
        case .loginWithCredential:
            return ["Content-Type":"application/json"]
        }
    }
    var parameters: [String: Any]? {
        
        switch self {
        case .loginWithCredential(let credential):
            return credential.toJSON()
        }

    }

    var sampleData: Data {
        switch self {
        case .loginWithCredential:
            return Data()
        }
    }
    var task: Task {
        switch self {
        case .loginWithCredential(let credential):
         return .requestParameters(parameters: credential.toJSON()!, encoding: JSONEncoding.default)
        }
    }


}
