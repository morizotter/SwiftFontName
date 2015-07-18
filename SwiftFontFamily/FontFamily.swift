//
//  FontFamily.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

public struct FontName {
    public static let HelveticaBold = FontName.fontName(fontName: "Helvetica-Bold")
    public static let Helvetica = FontName.fontName(fontName: "Helvetica")
    public static let HelveticaBoldOblique = FontName.fontName(fontName: "Helvetica-BoldOblique")
    public static let HelveticaBoldLight = FontName.fontName(fontName: "Helvetica-Light")
}

extension FontName {
    public static func fontNames() -> [String] {
        return [
            HelveticaBold,
            Helvetica,
            HelveticaBoldOblique
        ]
    }
}

extension FontName {
    private static func fontName(fontName name: String, osVersion version: Float? = nil) -> String {
        if let version = version { }
        return name
    }
}

//// MARK: Protocol
//
//public protocol Fontable {
//    static var name: String { get }
//    static var fontNames: [String] { get }
//    var value: String { get }
//}
//
//// MARK: FontFamily
//
//public class FontFamily {
//    
//    public class var familyNames: [String] {
//        return [
//            "Marion",
//            "Copperplate",
//            "Heiti SC",
//            "Iowan Old Style",
//            "Courier New",
//            "Apple SD Gothic Neo",
//            "Heiti TC",
//            "Gill Sans",
//            "Marker Felt",
//            "Thonburi",
//            "Avenir Next Condensed",
//            "Tamil Sangam MN",
//            "Helvetica Neue",
//            "Gurmukhi MN",
//            "Times New Roman",
//            "Georgia",
//            "Apple Color Emoji",
//            "Arial Rounded MT Bold",
//            "Kailasa",
//            "Kohinoor Devanagari",
//            "Sinhala Sangam MN",
//            "Chalkboard SE",
//            "Superclarendon",
//            "Gujarati Sangam MN",
//            "Damascus",
//            "Noteworthy",
//            "Geeza Pro",
//            "Avenir",
//            "Academy Engraved LET",
//            "Mishafi",
//            "Futura",
//            "Farah",
//            "Kannada Sangam MN",
//            "Arial Hebrew",
//            "Arial",
//            "Party LET",
//            "Chalkduster",
//            "Hiragino Kaku Gothic ProN",
//            "Hoefler Text",
//            "Optima",
//            "Palatino",
//            "Malayalam Sangam MN",
//            "Lao Sangam MN",
//            "Al Nile",
//            "Bradley Hand",
//            "Hiragino Mincho ProN",
//            "Trebuchet MS",
//            "Helvetica",
//            "Courier",
//            "Cochin",
//            "Devanagari Sangam MN",
//            "Oriya Sangam MN",
//            "Snell Roundhand",
//            "Zapf Dingbats",
//            "Bodoni 72",
//            "Verdana",
//            "American Typewriter",
//            "Avenir Next",
//            "Baskerville",
//            "Khmer Sangam MN",
//            "Didot",
//            "Savoye LET",
//            "Bodoni Ornaments",
//            "Symbol",
//            "Menlo",
//            "Bodoni 72 Smallcaps",
//            "DIN Alternate",
//            "Papyrus",
//            "Euphemia UCAS",
//            "Telugu Sangam MN",
//            "Bangla Sangam MN",
//            "Zapfino",
//            "Bodoni 72 Oldstyle",
//            "DIN Condensed"
//        ]
//    }
//    
//    public class func fontNamesForFamilyName(familyName: String) -> [String] {
//        switch familyName {
//        case "Helvetica": return Helvetica.fontNames
//        default: return [String]()
//        }
//    }
//}

//extension FontFamily {
//    private class func fontName(familyName: String, style: String = "") -> String{
//        return count(style) > 0 ? familyName + "-" + style : familyName
//    }
//}
//
//// MARK: Family
//
//extension FontFamily {
//    public enum Helvetica: String, Fontable {
//        case Bold = "Bold"
//        case Regular = "Regular"
//        case LightOblique = "LightOblique"
//        case BoldOblique = "BoldOblique"
//        case Light = "Light"
//        
//        public static var name: String { return "Helvetica" }
//        public static var fontNames: [String] {
//            return [
//                FontFamily.fontName(name, style: "Bold"),
//                FontFamily.fontName(name),
//                FontFamily.fontName(name, style: "LightOblique"),
//                FontFamily.fontName(name, style: "Oblique"),
//                FontFamily.fontName(name, style: "BoldOblique"),
//                FontFamily.fontName(name, style: "Light")
//            ]
//        }
//        public var value: String {
//            return Helvetica.name + "-" + rawValue
//        }
//    }
//}