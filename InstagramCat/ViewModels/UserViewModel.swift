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
    
    init(){}
    
    init(user: User){
        self.thumbNail = user.thumbNail
        self.account = user.account
    }
    
}
