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
    var font: UIFont?
    var size: CGFloat = 17.0
    
    init(name: String, font: UIFont?, size: CGFloat = 17.0) {
        self.name = name
        self.font = font
        self.size = size
    }
}