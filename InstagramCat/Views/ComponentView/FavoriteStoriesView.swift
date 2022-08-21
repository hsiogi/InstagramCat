//
//  FavoriteStoriesView.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/18.
//

import SwiftUI

struct FavoriteStoriesView: View {
    
    
    @State var unfold = true
    
    
    
    var body: some View {
        
        VStack(spacing: 0){
            HStack{
                Text("限時動態精選")
                    .font(.callout)
                    .bold()
                
                Spacer()
                
                if(unfold){
                    
                    Image(systemName: "chevron.up")
                        .font(.system(size: 10))
                        .onTapGesture {
                            unfold = unfold ? false : true
                        }
                }
                else{
                    Image(systemName: "chevron.down")
                        .imageScale(.small)
                        .onTapGesture {
                            unfold = unfold ? false : true
                        }
                }
                
            }.padding([.leading, .trailing])
            
            if(unfold){
                HStack{
                    Text("將你的最愛限時動態保存在你的個人檔案中")
                        .font(.callout)
                    Spacer()
                }.padding([.leading, .trailing])
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top){
                        
                       
                        
                        ForEach(0..<5){ item in
                            Group{
                                
                                if item == 0{
                                    
                                    VStack(alignment: .center){
                                        
                                        Button{
                                            
                                        }label:{
                                            Image(systemName: "plus")
                                                .foregroundColor(.black)
                                        }
                                        .clipShape(Circle())
                                        .frame(width: 65, height: 65)
                                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                        
                                        Text("新增")
                                            .font(.caption)
                                    }.padding(.trailing, 10)
                                }
                                else{
                                    
                                    VStack(alignment: .center){
                                        
                                        Button{
                                            
                                        }label:{
                                            
                                        }
                                        .frame(width: 65, height: 65)
                                        .background(.gray)
                                        .clipShape(Circle())
                                        
                                        Text("  ")
                                        
                                    }.padding(.trailing, 10)
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }.padding(2)
                    
                }.padding()
            }
            
            
            Spacer()
            
            
            
        }
    }
}

struct FavoriteStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteStoriesView()
    }
}
