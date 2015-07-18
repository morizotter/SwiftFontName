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
        super.tearDown()
    }
    
    func testExistsFontNames() {
        for systemFamilyName in UIFont.familyNames() as! [String] {
            for systemFontName in UIFont.fontNamesForFamilyName(systemFamilyName) {
                println("systemFontName: \(systemFontName)")
            }
        }
    }
}
