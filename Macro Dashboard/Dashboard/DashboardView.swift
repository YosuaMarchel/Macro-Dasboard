//
//  DashboardView.swift
//  Macro Dashboard
//
//  Created by Yosua Marchel on 22/10/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//

import UIKit

class DashboardView: UIView {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var noContainerLabel: UILabel!
    
    override init(frame: CGRect) {
      super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        
    }

    @IBAction func containerButtonClicked(_ sender: Any) {
    }
}
