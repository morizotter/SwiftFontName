//
//  FontsViewModel.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class FontsViewModel {
    
    let familyNames = UIFont.familyNames() as! [String]
    
    func font(familyName: String) -> UIFont {
        return UIFont(name: familyName, size: 17.0)!
    }
}