//
//  LocalizedViewController.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/19.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class LocalizedViewController: UIViewController {

    let viewModel = LocalizedViewModel()
    @IBOutlet weak var localizedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizedLabel.text = viewModel.localizedText
        localizedLabel.font = viewModel.localizedFont
    }
}
