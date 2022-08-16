//
//  PostService.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation


protocol PostServiceProtocol{
    func GetPosts(userId: String, pageIndex: Int, pageCount: Int) async throws -> [Post]
    
    func UpdatePostLike(userId: String, postId: String, liked: Bool) async throws
}



class PostService : PostServiceProtocol{
    
    
    func UpdatePostLike(userId: String, postId: String, liked: Bool) async throws {
        if let url = URL(string: "http://localhost:5079/Post/\(postId)/interaction"){
            var request = URLRequest(url: url)
            request.httpMethod = "PUT"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let param = UpdatePostLikeParam(userId: userId, value: liked)
            
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(param)
            
            request.httpBody = jsonData
            
            let (_, _) = try await URLSession.shared.data(for: request)
            
        }
    }
    
    
    
    
    let decoder = JSONDecoder()
    
    
    func GetPosts(userId: String, pageIndex: Int, pageCount: Int) async throws -> [Post] {
        
        if let url = URL(string: "http://localhost:5079/Post?userId=\(userId)&pageIndex=\(pageIndex)&pageCount=\(pageCount)"){
            
            do{
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                return try decoder.decode([Post].self, from: data)
            }
            
        }
        else{
            throw URLError(URLError.badURL)
            
        }
        
        
    }
    
    
}
