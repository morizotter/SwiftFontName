//
//  FontsViewController.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class FontsViewController: UITableViewController {

    let viewModel = FontsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FontsViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count(viewModel.familyNames)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let familyName = viewModel.familyNames[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = familyName
        cell.textLabel?.font = viewModel.font(familyName)
        return cell
    }
}

extension FontsViewController {
    
}