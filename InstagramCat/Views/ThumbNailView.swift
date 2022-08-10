//
//  ThumbNailView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/8.
//

import SwiftUI

/// 使用者頭像
struct ThumbNailView: View {
    
    var thumbNail : String
    var width: Int = 50
    var height: Int = 50
    
    var body: some View {
        AsyncImage(url: URL(string: thumbNail)){
            image in
            image.resizable()
                .scaledToFill()
        } placeholder: {
            Color.gray
        }
        .frame(width: CGFloat(width), height: CGFloat(height))
        .clipShape(Circle())
            
    }
                   
                   
    
}

struct ThumbNailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbNailView(thumbNail: "https://news.agentm.tw/wp-content/uploads/%E6%9C%AA%E5%91%BD%E5%90%8D-1-89-750x422.png", width: 50, height: 50)
    }
}
