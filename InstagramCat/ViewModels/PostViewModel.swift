//
//  PostViewModel.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation



final class PostViewModel : ObservableObject, Identifiable{
    
    @Published var id = ""
    @Published var content = ""
    @Published var liked = false
    @Published var publishedTime = ""
    @Published var images = [String]()
    @Published var likeCount = 0
    @Published var commentCount = 0
    @Published var user = UserViewModel()
    
    
    
    private let repository: PostRepositoryProtocol
    
    init(repository: PostRepositoryProtocol = PostRepository()){
        self.repository = repository
    }
    
    init(post: Post){
        
        self.id = post.id
        self.content = post.content ?? ""
        self.liked = post.liked
        self.publishedTime = "最近2小時發文"
        self.images = post.images ?? [String]()
        self.commentCount = post.commentCount
        self.likeCount = post.likeCount
        
        if let user = post.user {
            self.user = UserViewModel(user: user)
        }
        
        self.repository = PostRepository()
        
    }
    
    @MainActor
    func updatePostLike(userId: String) async {
        
        do {
            
            if liked{
                try await repository.UnLikePost(userId: userId, postId: self.id)
                
                liked = false
                
                likeCount -= 1
            }
            else{
                try await repository.LikePost(userId: userId, postId: self.id)
                
                liked = true
                
                likeCount += 1
            }
            
            
        }catch{
            print(error)
        }
        
    }
    
    
}



