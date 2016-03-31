//
//  MultipleElementTableViewCell.swift
//  TableCellAutolayout
//
//  Created by Alex S on 31/3/16.
//  Copyright © 2016 SoriAlex. All rights reserved.
//

import UIKit

class MultipleElementTableViewCell: UITableViewCell {

    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var descriptionView: UILabel!
    @IBOutlet weak var endTitleView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
