//
//  PostPageView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/9.
//

import SwiftUI

/// 貼文頁
struct PostPageView: View {
    
    @ObservedObject var postPageViewModel = PostPageViewModel()
    
    
    
    var body: some View {

        
        ScrollView{
            ForEach(postPageViewModel.posts){item in
                PostView(post: item)
            }
         
           
        }.task {
            await postPageViewModel.getFirstPage(userId: "62f503aeaa188d05520baa31")
        }
    }
}

struct PostPageView_Previews: PreviewProvider {
    static var previews: some View {
        PostPageView()
    }
}
