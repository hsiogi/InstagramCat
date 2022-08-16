//
//  PostRepository.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation
import SwiftUI

protocol PostRepositoryProtocol{
    
    func GetPosts(userId: String, pageIndex: Int, pageCount: Int) async throws -> [Post]
    
    func LikePost(userId: String, postId: String) async throws
    
    func UnLikePost(userId: String, postId: String) async throws
}


class PostRepository : PostRepositoryProtocol{
  
    
    let service : PostServiceProtocol
    
    init(service : PostServiceProtocol = PostService()){
        self.service = service
    }
    
    func GetPosts(userId: String, pageIndex: Int, pageCount: Int) async throws -> [Post] {
        
        let posts = try await service.GetPosts(userId: userId, pageIndex: pageIndex, pageCount: pageCount)
        
        return posts
        
    }
    
    func LikePost(userId: String, postId: String) async throws {
       try await service.UpdatePostLike(userId: userId, postId: postId, liked: true)
    }
    
    func UnLikePost(userId: String, postId: String) async throws {
        try await service.UpdatePostLike(userId: userId, postId: postId, liked: false)
    }
    
}
