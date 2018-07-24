//
//  LoginMediatorControllerTest.swift
//  iOS_CleanTests
//
//  Created by Mostafa El_sayed on 7/18/18.
//  Copyright © 2018 United Brothers. All rights reserved.
//

import XCTest
@testable import iOS_Clean
class LoginMediatorControllerTest: XCTestCase {
    
    let userService = UserService()
    let loginView = LoginVCSpy()
    var loginMediatorController: LoginMediatorController!
    
    override func setUp() {
        super.setUp()
        loginMediatorController = LoginMediatorController(userService: self.userService)
        loginMediatorController.attachView(loginView)
    }
    
  
    
    func testLoginWithCredentialSuccess() {
        let promise = expectation(description: "Status code: 200")

        // Given
        let email =  "magdy.zamel@gmail.com"
        let password = "Pas"
        let credentialViewModel = CredentialViewModel(email: email, password: password)
        
        // When
        loginMediatorController.loginWithCredential(credential: credentialViewModel)

        print(loginView.loginSuccessCalled)
        // Then
        let delayTime = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)

        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            promise.fulfill()
            XCTAssertTrue(self.loginView.loginSuccessCalled, "not loginSuccessCalled")
        }

        waitForExpectations(timeout: 20, handler: nil)

        
    }
    
    func testLoginWithCredentialFail() {

        // Given
        let email = "magdy"
        let password = "Pass"
        let credentialViewModel = CredentialViewModel(email: email, password: password)

        // When
        loginMediatorController.loginWithCredential(credential: credentialViewModel)
        //Then
        XCTAssertEqual(self.loginView.credentialFailedWithError, "credential not vaild", "not vaild")

    }
//
//    func testCredentialFailedWithErrorInValidFormat() {
//        
//        // Given
//        let email = "magdy"
//        let password = "M"
//        let credentialViewModel = CredentialViewModel(email: email, password: password)
//        
//        // When
//        loginMediatorController.loginWithCredential(credential: credentialViewModel)
//        
//        // Then
//        XCTAssertEqual(loginView.credentialFailedWithError, "not vaild", "not vaild")
//    }
//    
//    func testCredentialFailedWithErrorValidFormat() {
//        let promise = expectation(description: "Status code: 200")
//
//        // Given
//        let email = "m.z"
//        let password = "Magdy@123SsS"
//        let credentialViewModel = CredentialViewModel(email: email, password: password)
//        
//        // When
//        loginMediatorController.loginWithCredential(credential: credentialViewModel)
//        
//        // Then
//        UI {
//            XCTAssertEqual(self.loginView.loginFailedWithError, "Acouunt not found", "")
//            promise.fulfill()
//        }
//        waitForExpectations(timeout: 20, handler: nil)
//    }
    
    
   
    
}
