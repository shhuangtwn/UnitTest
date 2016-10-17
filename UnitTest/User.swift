//
//  User.swift
//  UnitTest
//
//  Created by Bryan Huang on 2016/10/17.
//  Copyright © 2016年 shhuang. All rights reserved.
//

import Foundation

class User: UserObject {

    // use let because read only (protocol "get")
    let identifier: String
    let name: String
    
    init(identifier: String , name: String) {
        self.identifier = identifier
        self.name = name
    }
    
}

extension UserObject {
    
    static func parse(json: Any) -> User {
        
        return User(identifier: " ", name: " ")
        
    }
    
}