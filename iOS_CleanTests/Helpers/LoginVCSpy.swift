//  LoginVCSpy
//
//  Created by Mostafa El_sayed on 7/18/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import XCTest
@testable import iOS_Clean

class LoginVCSpy: LoginVC {
    
    var loginSuccessCalled = false
    var loginFailedWithError = ""
    var credentialFailedWithError = ""
    
    
    override func loginSuccess(_ users: UserInfoEntity) {
        print(users.age)
        loginSuccessCalled = true

    }
    override func loginFailedWithError( _ error: String) {
        loginFailedWithError = error
        
    }
    override func credentialFailedWithError( _ error: String) {
        print(error)
        credentialFailedWithError = error
    }

}
