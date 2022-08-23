//
//  PostGridView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/21.
//

import SwiftUI

struct PostGridView: View {
    
    @Binding var posts : [PostViewModel]
    
    let columns = [GridItem(.flexible(), spacing: 1, alignment: .top), GridItem(.flexible(), spacing: 1, alignment: .top),GridItem(.flexible(), spacing: 1, alignment: .top)]
    
    @State var heightn = CGFloat(0)
    
 
    
    var body: some View {
        
        ScrollView{
      
            LazyVGrid(columns: columns, spacing: 1){
                ForEach(posts){ item in

                    AsyncImage(url: URL(string: item.images[0])){
                        image in
                        image.resizable()
                            .scaledToFill()
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: UIScreen.main.bounds.width / 3,
                           height: UIScreen.main.bounds.width / 3)
                    .clipped()

                }
              }
                
          
        
        
        }
    }
    
    
}

struct PostGridView_Previews: PreviewProvider {
    
    @State static var viewModel = getViewModel()
    
    static var previews: some View {
        PostGridView(posts: $viewModel)
    }
    
    public static func getViewModel() -> [PostViewModel]{
        
        var result = [PostViewModel]()
        
        for index in 1...3 {
            let viewModel = PostViewModel()
            
            viewModel.id = index.description
            viewModel.images = ["https://news.agentm.tw/wp-content/uploads/%E6%9C%AA%E5%91%BD%E5%90%8D-1-89-750x422.png"]
            
            result.append(viewModel)
        }
        
        return result
    }
}
