//
//  Family.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

struct Family {
    let fonts: [Font]
    let name: String
    
    init(name: String, fonts: [Font]) {
        self.name = name
        self.fonts = fonts
    }
}