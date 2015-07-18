//
//  SwiftFontFamilyViewModel.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class SwiftFontFamilyViewModel {
    
    let families: [Family]
    
    init() {
        var families = [Family]()
        for familyName in FontFamily.familyNames {
            var fonts = [Font]()
            for fontName in FontFamily.fontNamesForFamilyName(familyName) {
                fonts.append(Font(name: fontName, font: UIFont(name: fontName, size: 17.0)))
            }
            families.append(Family(name: familyName, fonts: fonts))
        }
        self.families = families
    }
}