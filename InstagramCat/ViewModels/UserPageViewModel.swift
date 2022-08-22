//
//  UserPageViewModel.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/18.
//

import Foundation


final class UserPageViewModel : ObservableObject{
    
    @Published var user = UserViewModel()
    @Published var postCount = 0
    @Published var posts = [PostViewModel]()
    
    private let userId = MyUserDefaults.userId
    private let pageCount = 10
    
    private var postRepository : PostRepositoryProtocol
    
    init(postRepository: PostRepositoryProtocol = PostRepository()){
        self.postRepository = postRepository
    }
    
    @MainActor
    func getPosts() async {
        
        do{
            
            print("run")
            let posts = try await postRepository.GetPosts(userId: self.userId, pageIndex: 1, pageCount: self.pageCount)
            
            
            for post in posts{
                self.posts.append(PostViewModel(post: post))
            }
            
        }catch{
            print(error)
        }
        
    }
    
    
    
    
}
