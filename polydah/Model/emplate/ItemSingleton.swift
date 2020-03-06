//
//  ItemModel.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation
import UIKit

class ItemSingleton{
    
    private init(){
        self.itensInStore.append(Item(image: UIImage(), name: "ex", description: "aa", price: 30))
    }
    
    public static var instance = ItemSingleton()
    
    public var itensInStore: [Item] = [Item(image: UIImage(), name: "ex", description: "aa", price: 30)]
    
    public var boughtItens: [Item] =  []
    
}
