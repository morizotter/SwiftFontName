//
//  SwiftFontNameViewController.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class SwiftFontNameViewController: UITableViewController {
    
    let viewModel = SwiftFontNameViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SwiftFontNameViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.families.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.families[section].fonts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.families[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let family = viewModel.families[(indexPath as NSIndexPath).section]
        let font = family.fonts[(indexPath as NSIndexPath).row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell!
        cell?.textLabel?.text = font.name
        cell?.textLabel?.font = font.font
        return cell!
    }
}
