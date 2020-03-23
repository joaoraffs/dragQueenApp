//
//  ItemCollectionViewCell.swift
//  polydah
//
//  Created by João Raffs on 19/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    public func setCellFromItem(_ item: Item){
        print(item)
        self.nameLabel.text = item.name
        self.imageView.image = item.image
        
        self.priceLabel.text = String(item.price)
    }
    
}
