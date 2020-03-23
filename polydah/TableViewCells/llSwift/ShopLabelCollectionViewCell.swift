//
//  ShopLabelCollectionViewCell.swift
//  polydah
//
//  Created by João Raffs on 19/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class ShopLabelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var typeOfItemLabel: UILabel!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
           print("ENTROU NO AWAKE")
       }
}
