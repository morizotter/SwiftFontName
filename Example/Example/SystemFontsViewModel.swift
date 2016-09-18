//
//  SystemFontsViewModel.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class SystemFontsViewModel {
    
    let families: [Family]
    
    init() {
        var families = [Family]()
        for familyName in UIFont.familyNames {
            var fonts = [Font]()
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                fonts.append(Font(name: fontName))
            }
            families.append(Family(name: familyName, fonts: fonts))
        }
        self.families = families
    }
}
