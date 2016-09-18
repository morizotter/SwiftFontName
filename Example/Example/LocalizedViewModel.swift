//
//  LocalizedViewModel.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/19.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class LocalizedViewModel {
    var localizedText = LocalizedFontName(FontName.Copperplate, localizedFontNames: ["ja": FontName.HiraKakuProNW6, "en": FontName.HelveticaNeueLight])
    var localizedFont: UIFont { return UIFont(name: localizedText, size: 17.0)! }
}
