//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit
import XCTest
import SwiftFontFamily

class FontsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExistsFamilyName() {
        let systemFamilyNames = UIFont.familyNames() as! [String]
        let familyNames = FontFamily.familyNames
        for systemFamilyName in systemFamilyNames {
            let index = find(familyNames, systemFamilyName)
            println("systemFamilyName: \(systemFamilyName)")
            XCTAssertTrue(index != nil, "\(systemFamilyName) is not exists")
        }
    }
}
