//
//  UserPageView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/18.
//

import SwiftUI

struct UserPageView: View {
    
    @ObservedObject var model = UserPageViewModel()
    
    var body: some View {
        GeometryReader{ proxy in
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading){
                    
                                    HStack(){
                                        Text(model.user.account)
                                            .font(.title)
                                            .bold()
                                        Spacer()
                    
                                        Image(systemName: "plus.app")
                                            .imageScale(.large)
                    
                                        Image(systemName: "list.bullet")
                                            .imageScale(.large)
                                    }.padding()
                    
                                    HStack(){
                    
                                        VStack(alignment: .leading){
                    
                                            ThumbNailView(thumbNail: model.user.thumbNail, width: 80, height: 80)
                                            Text(model.user.name)
                                                .font(.subheadline)
                    
                                        }.padding(.trailing)
                    
                                        UserInfoView(postCount: model.postCount, followerCount: model.user.follower_count, followingCount: model.user.following_count)
                    
                    
                    
                    
                    
                                    }.padding()
                    
                                    FavoriteStoriesView()
                    
                 
                        
                        UserPageTabView(posts: $model.posts)
                            .frame(height: proxy.size.height)
            
                    
                    
                    
                }
            }
        }
        
    }
}

struct UserPageView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        
        
        UserPageView(model: getModel())
    }
    
    
    static func getModel() -> UserPageViewModel{
        let postViewModel = PostViewModel()
        
        postViewModel.images = ["https://news.agentm.tw/wp-content/uploads/%E6%9C%AA%E5%91%BD%E5%90%8D-1-89-750x422.png"]
        
        
        let model = UserPageViewModel()
        model.user.account = "coder_marra"
        model.user.name = "Marra Lin"
        model.posts = PostGridView_Previews.getViewModel()
        return model
    }
}
