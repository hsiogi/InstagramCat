//
//  PostView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/8.
//

import SwiftUI

/// 貼文的view
struct PostView: View {
    
    var post : Post
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack(){
                ThumbNailView(thumbNail: post.user.thumbNail, width: 30, height: 30)
                
                Text(post.user.account)
                    .font(.caption)
                    .bold()
                
                Spacer()
                
                Image(systemName: "ellipsis")
                
            }.padding()
            
            VStack{
                
                AsyncImage(url: URL(string: post.image)){
                    i in
                    i.resizable()
                        .scaledToFit()
                        .frame(width: .infinity)
                    
                } placeholder: {
                    Color.gray
                }
                .padding(.top, -10)
                
            }.frame(width: .infinity, height: .infinity)
                .background(.red)
            
            InteractionView(post: post)
            
            
           
                
            
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        PostView(post: Data.getData())
    }
    
    
    
    
    
}
