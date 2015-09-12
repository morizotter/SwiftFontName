//
//  LocalizedFont.swift
//  Pods
//
//  Created by MORITANAOKI on 2015/07/19.
//
//

import UIKit

public func LocalizedFontName(defaultFontName: String, localizedFontNames: [String: String]) -> String {
    let preferredLanguage : String = NSLocale.preferredLanguages().first!
    if localizedFontNames.indexForKey(preferredLanguage) != nil {
        return localizedFontNames[preferredLanguage]!
    }
    return defaultFontName
}
