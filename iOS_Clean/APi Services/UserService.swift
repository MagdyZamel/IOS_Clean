
import Foundation
import Moya_Gloss
import Moya
class UserService {
    let provider = MoyaProvider<RegistrationService>()

    //the service delivers mocked data with a delay
    func loginWithCredential(_ credential:CredentialViewModel, callBack:@escaping (UserInfoEntity?) -> Void){
        provider.request(.loginWithCredential(credential: credential)) { (result) in
            switch result {
            case .success(let response):
                let person = try? response.mapObject(UserInfoEntity.self)
//                callBack(person)
            case .failure:
//                callBack(nil)
                break
            }

        }
        
        let user = UserInfoEntity(json: ["firstName": "Magdy",
                                         "lastName": "Zamel",
                                         "email": "Magdy.Zamel@mail.com",
                                         "age": 40])
        let delayTime = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            callBack(user)
        }
    }
}
