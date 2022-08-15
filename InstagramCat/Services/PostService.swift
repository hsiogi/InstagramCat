//
//  PostService.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation


protocol PostServiceProtocol{
    func GetPosts(userId: String, pageIndex: Int, pageCount: Int) async throws -> [Post]
}



class PostService : PostServiceProtocol{
    
    
    
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
