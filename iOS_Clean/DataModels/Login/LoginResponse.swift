//
//	LoginModel.swift

import Foundation 

//MARK: - RootClass
public struct LoginResponse{

	 var userInfo : UserInfoEntity?

    init(userInfo: UserInfoEntity){
        self.userInfo = userInfo
	}

}
