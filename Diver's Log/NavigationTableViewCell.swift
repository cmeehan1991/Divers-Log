//
//  NavigationTableViewCell.swift
//  Diver's Log
//
//  Created by Connor Meehan on 2/14/17.
//  Copyright © 2017 CBM Web Development. All rights reserved.
//

import UIKit

class NavigationTableViewCell: UITableViewCell{
    @IBOutlet weak var navigationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    
}
