//
//  FontFamily.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

// MARK: Protocol

public protocol Fontable {
    static var name: String { get }
    static var fontNames: [String] { get }
    func value() -> String
}

// MARK: FontFamily

public class FontFamily {
    
    public class var familyNames: [String] {
        return [
            "Marion",
            "Copperplate",
            "Heiti SC",
            "Iowan Old Style",
            "Courier New",
            "Apple SD Gothic Neo",
            "Heiti TC",
            "Gill Sans",
            "Marker Felt",
            "Thonburi",
            "Avenir Next Condensed",
            "Tamil Sangam MN",
            "Helvetica Neue",
            "Gurmukhi MN",
            "Times New Roman",
            "Georgia",
            "Apple Color Emoji",
            "Arial Rounded MT Bold",
            "Kailasa",
            "Kohinoor Devanagari",
            "Sinhala Sangam MN",
            "Chalkboard SE",
            "Superclarendon",
            "Gujarati Sangam MN",
            "Damascus",
            "Noteworthy",
            "Geeza Pro",
            "Avenir",
            "Academy Engraved LET",
            "Mishafi",
            "Futura",
            "Farah",
            "Kannada Sangam MN",
            "Arial Hebrew",
            "Arial",
            "Party LET",
            "Chalkduster",
            "Hiragino Kaku Gothic ProN",
            "Hoefler Text",
            "Optima",
            "Palatino",
            "Malayalam Sangam MN",
            "Lao Sangam MN",
            "Al Nile",
            "Bradley Hand",
            "Hiragino Mincho ProN",
            "Trebuchet MS",
            "Helvetica",
            "Courier",
            "Cochin",
            "Devanagari Sangam MN",
            "Oriya Sangam MN",
            "Snell Roundhand",
            "Zapf Dingbats",
            "Bodoni 72",
            "Verdana",
            "American Typewriter",
            "Avenir Next",
            "Baskerville",
            "Khmer Sangam MN",
            "Didot",
            "Savoye LET",
            "Bodoni Ornaments",
            "Symbol",
            "Menlo",
            "Bodoni 72 Smallcaps",
            "DIN Alternate",
            "Papyrus",
            "Euphemia UCAS",
            "Telugu Sangam MN",
            "Bangla Sangam MN",
            "Zapfino",
            "Bodoni 72 Oldstyle",
            "DIN Condensed"
        ]
    }
    
    public class func fontNamesForFamilyName(familyName: String) -> [String] {
        switch familyName {
        case "Helvetica": return Helvetica.fontNames
        default: return [String]()
        }
    }
}

// MARK: Family

extension FontFamily {
    public enum Helvetica: String, Fontable {
        case Bold = "Bold"
        
        public static var name: String { return "Helvetica" }
        public static var fontNames: [String] { return ["Helvetica"] }
        public func value() -> String {
            return Helvetica.name + "-" + rawValue
        }
    }
}