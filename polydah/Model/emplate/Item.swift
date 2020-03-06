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
    
    internal init(image: UIImage, name: String, description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
    
    var image : UIImage
    var name: String
    var description: String
    
}
