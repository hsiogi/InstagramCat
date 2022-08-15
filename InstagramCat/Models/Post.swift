//
//  Post.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/8.
//

import Foundation

struct Post : Codable {
    var id: String
    var user: User?
    var liked: Bool
    var likeCount : Int
    var commentCount: Int
    var content: String?
    var timeStamp: Int64
    var images: [String]?
}
