//
//  UserInfoView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/18.
//

import SwiftUI

struct UserInfoView: View {
    
    @State var postCount : Int
    @State var followerCount : Int
    @State var followingCount : Int
    var body: some View {
        HStack(spacing: 40){
            VStack{
                Text(postCount.description)
                    .font(.body)
                    .bold()
                
                Text("貼文")
                    .font(.body)
            }
            
            VStack{
                Text(followerCount.description)
                    .font(.body)
                    .bold()
                Text("粉絲")
                    .font(.body)
            }
            
            VStack{
                Text(followerCount.description)
                    .font(.body)
                    .bold()
                Text("追蹤中")
                    .font(.body)
            }
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserInfoView(postCount: 10, followerCount: 135, followingCount: 1450)
        }
    }
}
