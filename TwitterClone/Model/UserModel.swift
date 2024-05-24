//
//  User.swift
//  TwitterClone
//
//  Created by Recep Sevim on 21.05.2024.
//

import Foundation

struct ApiResponse: Decodable{
    var user: UserModel
    var token: String
}

struct UserModel: Decodable, Identifiable{
    var _id: String
    var id: String {
        return _id
    }
    var userName: String
    var name: String
    var email: String
    var location: String?
    var bio: String?
    var website: String?
    var avatarExists: String?
    var followers: [String]
    var followings: [String]
}
