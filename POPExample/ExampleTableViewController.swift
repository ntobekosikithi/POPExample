//
//  ExampleTableViewController.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import UIKit

class ExampleTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(ImageTableViewCell.self)
        tableView.register(VideoTableViewCell.self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if condion {
//            return tableView.dequeueReusableCell(forIndexPath: indexPath) as ImageTableViewCell
//        }
        return tableView.dequeueReusableCell(forIndexPath: indexPath) as VideoTableViewCell
    }

}
