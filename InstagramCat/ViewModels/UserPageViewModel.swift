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
    
    
    
    
    
    
}
