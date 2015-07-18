//
//  LocalizedFont.swift
//  Pods
//
//  Created by MORITANAOKI on 2015/07/19.
//
//

import UIKit

public func LocalizedFont(closure: () -> [String: String]) -> String {
    let localizedFonts = closure()
    let preferredLanguage = NSLocale.preferredLanguages().first as! String
    if localizedFonts.indexForKey(preferredLanguage) != nil {
        return localizedFonts[preferredLanguage]!
    }
    
    if count(localizedFonts) > 0 {
        return localizedFonts[localizedFonts.keys.first!]!
    }
    
    return UIFont.systemFontOfSize(17.0).fontName
}

