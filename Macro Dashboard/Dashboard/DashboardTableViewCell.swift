//
//  DashboardTableViewCell.swift
//  Macro Dashboard
//
//  Created by Yosua Marchel on 22/10/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerNameLabel: UILabel!
    @IBOutlet weak var plantTypeLabel: UILabel!
    @IBOutlet weak var dayCountdownLabel: UILabel!
    @IBOutlet weak var sensorStatusImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfig(withName: [String], currentIndex: Int, type: [String], day: [String], sensor: [UIImage]) {
        let containerName = withName[currentIndex]
        let plantType = type[currentIndex]
        let day = day[currentIndex]
        let sensor = sensor[currentIndex]
        
        containerNameLabel.text = containerName
        plantTypeLabel.text = plantType
        dayCountdownLabel.text = day
        sensorStatusImage.image = sensor
        
    }

}

