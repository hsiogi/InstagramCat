//
//  InteractionView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/9.
//

import SwiftUI

/// 按讚 留言 文字
struct InteractionView: View {
    
    @ObservedObject var post : PostViewModel
    
    @State var contentLength = 20
    @State var contentViewed = false
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                
                Button{
                    Task{
                        await post.updatePostLike(userId: "62f503aeaa188d05520baa31")
                    }
                }label: {
                    
                    if(post.liked)
                    {
                        Image("like-click")
                    }
                    else{
                        Image("like")
                    }
                    
                    
                }
                
                
                Image("chat")
                Image("send")
                
                Spacer()
                
                Image("collect")
                
                
            }
            .padding([.leading, .trailing])
            
            Text(post.likeCount.description + "個讚")
                .padding(.leading)
                .font(.body.bold())
            
            
            HStack(){
                
                let view = Text(post.user.account)
                    .font(.body.bold()) + Text("  ") + Text(getString(content: post.content))
                
                view.padding(.leading)
                
                
                if(!contentViewed){
                    Text("更多")
                        .onTapGesture {
                            contentViewed = true
                            contentLength = post.content.count
                        }
                        .font(.body)
                        .foregroundColor(.gray)
                }
                
                
            }
            
            Text("查看全部\(post.commentCount)則留言").font(.body).foregroundColor(.gray)
                .padding(.leading)
                
            
        }
        
        
        
    }
    
    private func getString(content: String) -> String{
        if post.content.count > contentLength{
            let index = post.content.index(post.content.startIndex, offsetBy: contentLength)
            
            let range = post.content[..<index]
            return String(range)
        }
        return post.content
        
        
    }
}

struct InteractionView_Previews: PreviewProvider {
    static var previews: some View {
        InteractionView(post: PostViewModel())
    }
}
