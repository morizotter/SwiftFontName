//
//  SwiftFontNameViewModel.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit
import SwiftFontName

class SwiftFontNameViewModel {
    
    let families: [Family]
    
    init() {
        var fonts = [Font]()
        for fontName in FontName.fontNames() {
            fonts.append(Font(name: fontName))
        }
        self.families = [Family(name: "Families", fonts: fonts)]
    }
}