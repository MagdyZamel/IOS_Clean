//
//  LoginPresenter.swift
//  Swyft
//
//  Created by Magdy Zamel on 7/9/18.
//  Copyright © 2018 Swyft. All rights reserved.
//

import Foundation
protocol HomeProtocol {
    init(userService:UserService)
}

class HomeMediatorController {

    fileprivate let userService:UserService
    private weak var homeView: HomeVC?
     var userInfo:UserInfoEntity!

    required init(userService:UserService) {
        self.userService = userService
    }


    func attachView(_ view:HomeVC){
        homeView = view
        homeView?.fillViewWithUserInfo(userInfo)
    }

    func detachView() {
        homeView = nil
    }


}
