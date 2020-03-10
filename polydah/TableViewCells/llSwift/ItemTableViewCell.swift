//
//  ItemTableViewCell.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell{

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("ENTROU NO AWAKE")
    }
    
    public func setCellByItem(_ item: Item){
        self.priceLabel.text = String(item.price)
        self.itemImageView.image = item.image
        self.descriptionLabel.text = item.description
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
