//
//  ViewController.swift
//  Macro Dashboard
//
//  Created by Yosua Marchel on 22/10/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
        
    @IBOutlet weak var dashboardView: DashboardView!
    
    private var containerName: [String] = []
    private var plantType: [String] = []
    private var dayCount: [String] = []
    private var sensorStat: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dashboardView.tableView.delegate = self
        dashboardView.tableView.dataSource = self
        
        containerName = ContainerData().name
        plantType = ContainerData().plantType
        dayCount = ContainerData().day
        sensorStat = ContainerData().sensorStatus
        
        if containerName.count == 0 {
            dashboardView.arrowImage.isHidden = false
            dashboardView.noContainerLabel.isHidden = false
            dashboardView.tableView.isHidden = true
        } else {
            dashboardView.arrowImage.isHidden = true
            dashboardView.noContainerLabel.isHidden = true
            dashboardView.tableView.isHidden = false
        }
    }
}

// MARK:- Table View Cell Base Protocol
extension DashboardViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return containerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContainerCell", for: indexPath) as! DashboardTableViewCell
        cell.cellConfig(withName: containerName,
                        currentIndex: indexPath.row,
                        type: plantType,
                        day: dayCount,
                        sensor: sensorStat)
        return cell
    }
    
}
