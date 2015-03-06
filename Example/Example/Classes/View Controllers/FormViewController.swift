//
//  FormViewController.swift
//  Example
//
//  Created by Roman Efimov on 3/5/15.
//  Copyright (c) 2015 Roman Efimov. All rights reserved.
//

import UIKit

class FormViewController: UITableViewController {

    // Lazy initialize the table view manager
    //
    lazy var manager: TableViewManager = TableViewManager(tableView: self.tableView)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.manager.dataSource?.sections = [{
            let section = TableViewSection()
            section.items = [
                {
                    let textItem = TableViewTextItem()
                    textItem.placeholder = "Full length text field"
                    return textItem
                }(),
                {
                    let textItem = TableViewTextItem(text: "Text item")
                    textItem.placeholder = "Placeholder text"
                    return textItem
                }(),
                {
                    let textItem = TableViewTextItem(text: "Phone")
                    textItem.placeholder = "(123) 456-7890"
                    return textItem
                }()]
            return section
        }()]
    }
}
