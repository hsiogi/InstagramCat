//
//  PostPageViewModel.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation


final class PostPageViewModel : ObservableObject{
    @Published var posts : [PostViewModel]
    
    private var repository : PostRepositoryProtocol
    private let pageCount = 5
    
    init(repository: PostRepositoryProtocol = PostRepository()){
        self.repository = repository
        self.posts = [PostViewModel]()
    }
    
    
    @MainActor
    func getFirstPage(userId: String) async {
        
        do{
            
            print("run!!!!")
            let posts = try await repository.GetPosts(userId: userId, pageIndex: 1, pageCount: self.pageCount)
            
            
            for post in posts{
                self.posts.append(PostViewModel(post: post))
            }
        }
        catch{
            print(error)
        }
        
        
        
        
    }
    
    
}
