//
//  MyUserDefaultsTests.swift
//  InstagramCatTests
//
//  Created by 林品均 on 2022/8/16.
//

import XCTest

@testable import InstagramCat

class MyUserDefaultsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetUserId() throws{
        
        XCTAssertNotNil(MyUserDefaults.userId)
        XCTAssertNotEqual(MyUserDefaults.userId, "")
    }

}
