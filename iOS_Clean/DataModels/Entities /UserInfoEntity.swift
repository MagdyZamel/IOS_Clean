import Foundation
import Gloss

struct UserInfoEntity :JSONDecodable{

    let firstName: String?
    let lastName: String?
    let email: String?
    let age: Int?

    init?(json: JSON) {
        self.age = "age" <~~ json
        self.lastName = "lastName" <~~ json
        self.firstName = "firstName" <~~ json
        self.email = "email" <~~ json
    }

}
