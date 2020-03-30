//
//  Item.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation
import UIKit

public class Item{
    
    public init(image: UIImage, name: String, description: String, price: Int, increase: Int) {
        
        self.image = image
        self.name = name
        self.description = description
        self.price = price
        self.increase = increase
    }
    
    var image : UIImage
    var name: String
    var description: String
    var price: Int
    var increase:Int
}
