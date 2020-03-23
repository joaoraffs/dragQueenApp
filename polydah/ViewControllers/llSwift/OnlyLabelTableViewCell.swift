//
//  OnlyLabelTableViewCell.swift
//  polydah
//
//  Created by João Raffs on 23/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class OnlyLabelTableViewCell: UITableViewCell {

    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
