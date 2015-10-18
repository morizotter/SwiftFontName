//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit
import XCTest
import SwiftFontName

class FontsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExistsFontNames() {
        for systemFamilyName in UIFont.familyNames() {
            for systemFontName in UIFont.fontNamesForFamilyName(systemFamilyName) {
                let index = FontName.fontNames().indexOf(systemFontName)
                XCTAssertTrue(index != nil, "\(systemFontName) doesn't exist.")
            }
        }
    }
    
    func testLocalizations() {
        let preferredLanguage = NSLocale.preferredLanguages().first!
        let fontName = LocalizedFontName(FontName.Copperplate, localizedFontNames: ["ja": FontName.HiraKakuProNW6, "en": FontName.HelveticaNeueLight])
        if preferredLanguage == "ja" {
            XCTAssertEqual(fontName, FontName.HiraKakuProNW6, "Localization failed: \(preferredLanguage)")
        } else if preferredLanguage == "en" {
            XCTAssertEqual(fontName, FontName.HelveticaNeueLight, "Localization failed: \(preferredLanguage)")
        } else {
            XCTAssertEqual(fontName, FontName.Copperplate, "Localization failed: \(preferredLanguage)")
        }
    }
}
