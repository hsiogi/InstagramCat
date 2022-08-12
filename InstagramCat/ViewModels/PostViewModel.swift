//
//  PostViewModel.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation



final class PostViewModel : ObservableObject{
    
    @Published var id = ""
    @Published var content = ""
    @Published var liked = false
    @Published var publishedTime = ""
    @Published var images = [String]()
    @Published var likeCount = 0
    @Published var commentCount = 0
    @Published var user = UserViewModel()
    
    
}



