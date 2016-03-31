//
//  OneElementTableViewCell.swift
//  TableCellAutolayout
//
//  Created by Alex S on 31/3/16.
//  Copyright © 2016 SoriAlex. All rights reserved.
//

import UIKit

class OneElementTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionView: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}