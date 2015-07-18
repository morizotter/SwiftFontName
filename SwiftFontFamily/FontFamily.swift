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
        return ["Helvetica"]
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