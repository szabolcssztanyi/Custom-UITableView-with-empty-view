//
//  LoadingTableViewEmptyView.swift
//  LoadingIndicator
//
//  Created by Sztanyi Szabolcs on 22/08/15.
//  Copyright (c) 2015 Zappdesigntemplates. All rights reserved.
//

import UIKit

class LoadingTableViewEmptyView: UIView {

    @IBOutlet weak var emptyImageView: UIImageView!
    @IBOutlet weak var emptyTextLabel: UILabel!
    @IBOutlet weak var view: UIView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    func setupView() {
        NSBundle.mainBundle().loadNibNamed("LoadingTableViewEmptyView", owner: self, options: nil)
        self.addSubview(view)
    }
    
}
