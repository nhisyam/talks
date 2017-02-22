import Foundation

//https://api.github.com/users/hisyam
struct GHUser {

    var login: String
    var id: Int
    var avatarUrl: String

    init(with json: Any) {
        guard let dict = json as? [String: Any] else {
            login = ""
            id = 0
            avatarUrl = ""
            return
        }


        if let login = dict["login"] as? String {
            self.login = login
        } else {
            self.login = ""
        }
        if let id = dict["id"] as? Int {
            self.id = id
        } else {
            self.id = 0
        }
        if let avatarUrl = dict["avatar_url"] as? String {
            self.avatarUrl = avatarUrl
        } else {
            self.self.avatarUrl = ""
        }

//        self.login = dict["login"] as! String //NO FORCE CASTING
//        self.id = dict["id"] as! Int
//        self.avatarUrl = dict["avatar_url"] as! String
    }
}


























//struct GHUser {
//    let login: String
//    let id: Int
//    let avatarUrl: String
//
//    init(with json: Any) {
//        guard let dict = json as? [String: Any] else {
//            login = ""
//            id = 0
//            avatarUrl = ""
//            return
//        }
//
//        if let login = dict["login"] as? String {
//            self.login = login
//        } else {
//            login = ""
//        }
//
//        if let id = dict["id"] as? Int {
//            self.id = id
//        } else {
//            id = 0
//        }
//
//        if let avatarUrl = dict["avatar_url"] as? String {
//            self.avatarUrl = avatarUrl
//        } else {
//            avatarUrl = ""
//        }
//    }
//}
