//
//  UserTest.swift
//  UnitTest
//
//  Created by Bryan Huang on 2016/10/17.
//  Copyright © 2016年 Steven Huang. All rights reserved.
//

import XCTest
// 把要測試的target import 進來
@testable import UnitTest


class UserTest: XCTestCase {
    
    var user: User?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParseFromJSON() {
        
        let json: [String:Any] = [
            "id": "01",
            "name": "Roy"
        ]
        
//        let jsonData = try NSJSONSerialization.dataWithJSONObject(json, options: NSJSONWritingOptions.PrettyPrinted)
//        
        
        user = User.parse(json)
        XCTAssertNotNil(user)
        XCTAssertEqual(user!.identifier, "01")
        XCTAssertEqual(user!.name, "Roy")

    }
    
}
