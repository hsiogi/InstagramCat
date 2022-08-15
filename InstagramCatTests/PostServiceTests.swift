//
//  InstagramCatTests.swift
//  InstagramCatTests
//
//  Created by 林品均 on 2022/8/12.
//

import XCTest


class PostServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func getPosts() async throws {
        
        var service = PostService()
        
        
        
        do{
            var posts = try await service.GetPosts(userId: "62f503aeaa188d05520baa31", pageIndex: 1, pageCount: 5)
            
           
            
        }catch{ 
            XCTFail("error occurs. \(error)")
        }
        
        
        
        
        
        
    }

    

}
