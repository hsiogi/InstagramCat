//
//  PostPageView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/9.
//

import SwiftUI

/// 貼文頁
struct PostPageView: View {
    var body: some View {
        let post = Data.getData()
        
        ScrollView{
            PostView(post: post)
            PostView(post: post)
        }
    }
}

struct PostPageView_Previews: PreviewProvider {
    static var previews: some View {
        PostPageView()
    }
}
