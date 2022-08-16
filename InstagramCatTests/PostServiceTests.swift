//
//  PostServiceTests.swift
//  InstagramCatTests
//
//  Created by 林品均 on 2022/8/16.
//

import XCTest

@testable import InstagramCat

class PostServiceTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
   
    func test_getposts() async throws {
        
        let service = PostService()
        
        
        
        do{
            print("run")
            var posts = try await service.GetPosts(userId: "62f503aeaa188d05520baa31", pageIndex: 1, pageCount: 5)
            
            
            
        }catch{
            XCTFail("error occurs. \(error)")
        }
    }
    
    func test_likepost() async throws{
           var service = PostService()
           
           do{
               try await service.UpdatePostLike(userId: "62f503aeaa188d05520baa31", postId: "62f5053aaa188d05520baa33", liked: true)
           }catch{
               XCTFail("likepost error \(error)")
           }
           
       }
    
}
