//
//  UserPageTabView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/22.
//

import SwiftUI

struct UserPageTabView: View {
    
    @Binding var posts : [PostViewModel]
    
    @State private var currentIndex = 0
    @Namespace var namespace
    
    var body: some View {
        
        VStack(spacing: 0){
            
            HStack(spacing: 0){
                
                TabBarItem(index: 0, currentIndex: $currentIndex, namespace: self.namespace)
                TabBarItem(index: 1, currentIndex: $currentIndex, namespace: self.namespace)
                TabBarItem(index: 2, currentIndex: $currentIndex, namespace: self.namespace)
                
            }
            
            
            TabView(selection: self.$currentIndex){
                
                PostGridView(posts: $posts).tag(0)
                
                PostGridView(posts: $posts).tag(1)
             
                
            }
            
            .tabViewStyle(.page(indexDisplayMode: .never))
            
        
            
            
        }
        
        
        
        
        
    }
}


struct TabBarItem : View{
    
    var index : Int
    @Binding var currentIndex : Int
    let namespace: Namespace.ID
    
    var body: some View{
        Button{
            currentIndex = index
            
            
        }label: {
            
            VStack{
                
                Image(systemName: "pencil")
                    .imageScale(.large)
                    .frame(width: UIScreen.main.bounds.width / 3)
                
                
                
                if(currentIndex == index){
                    Color.black
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "underline",in: namespace,properties: .frame)
                }
                else{
                    Color.clear
                        .frame(height: 2)
                    
                }
                
            } .animation(.spring(), value: currentIndex)
            
            
            
        }
    }
}


struct UserPageTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserPageTabView(posts: PostGridView_Previews.$viewModel)
    }
}
