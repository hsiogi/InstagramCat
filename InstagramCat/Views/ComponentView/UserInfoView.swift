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
        HStack(alignment: .center){
            VStack{
                Text(postCount.description)
                    .font(.body)
                    .bold()
                
                Text("貼文")
                    .font(.body)
            }.padding(.horizontal)
            
            VStack{
                Text(followerCount.description)
                    .font(.body)
                    .bold()
                Text("粉絲")
                    .font(.body)
            }.padding(.horizontal)
            
            VStack{
                Text(followerCount.description)
                    .font(.body)
                    .bold()
                Text("追蹤中")
                    .font(.body)
                    
            }.padding(.horizontal)
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
