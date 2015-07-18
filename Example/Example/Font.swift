//
//  Font.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

struct Font {
    var name: String
    var size: CGFloat = 17.0
    var font: UIFont? { return UIFont(name: name, size: size) }
    
    init(name: String, size: CGFloat = 17.0) {
        self.name = name
        self.size = size
    }
}