//
//  UserViewModel.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/12.
//

import Foundation

final class UserViewModel : ObservableObject{
    
    @Published var thumbNail = ""
    
    @Published var account = ""
    
    @Published var name = ""
    
    @Published var follower_count = 0
    
    @Published var following_count = 0
    
    init(){}
    
    init(user: User){
        self.thumbNail = user.thumbNail
        self.account = user.account
    }
    
}
