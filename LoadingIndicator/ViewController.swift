//
//  ViewController.swift
//  LoadingIndicator
//
//  Created by Sztanyi Szabolcs on 10/07/15.
//  Copyright (c) 2015 Zappdesigntemplates. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: LoadingTableView!
    var counter = 0

    // MARK: tableView methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return counter
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell

        return cell
    }

    // MARK: view methods
    // Download the content from parse and display it
    func loadContent() {
        tableView.showLoadingIndicator()

        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.tableView.hideLoadingIndicator()
            self.tableView.showEmptyView()

//            self.tableView.hideLoadingIndicator()
//            self.counter = 5
//            self.tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadContent()

        tableView.tableFooterView = UIView(frame: CGRectZero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

