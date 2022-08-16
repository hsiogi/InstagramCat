//
//  File.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/16.
//

import Foundation


struct MyUserDefaults{
    
    static var userId : String {
        get{
            
            let userDefaults = UserDefaults()
            
            if let userIdValue = userDefaults.value(forKey: "userId") as? String{
                return userIdValue
            }
            else{
                userDefaults.set("62f503aeaa188d05520baa31", forKey: "userId")
                
                return "62f503aeaa188d05520baa31"
            }
        }
    }
    
    
}
