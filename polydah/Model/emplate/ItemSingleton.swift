//
//  ItemModel.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

class ItemSingleton{
    
    private init(){}
    
    public static var instance = ItemSingleton()
    
    public var itensInStore: [Item]
    
    public var boughtItens: [Item]
    
}
