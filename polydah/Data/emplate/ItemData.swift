//
//  ItemData.swift
//  polydah
//
//  Created by João Raffs on 30/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation
import UIKit

public class ItemData{
    
    public init(){}
    
    var hairs : [AgroupedInfo] = [
    AgroupedInfo(name: "base", description: "base", price: 0, increase: 0),
    AgroupedInfo(name: "gayxa", description: "pink money por segundo + 1", price: 100, increase: 1),
    AgroupedInfo(name: "rabo de cavalah", description: "pink money por segundo +2", price:200, increase: 2),
    AgroupedInfo(name: "tei-tei", description: "pink money por segundo +3", price: 300, increase: 3),
    AgroupedInfo(name: "loira odonto", description: "pink money por segundo + 5", price: 400, increase: 5)
    ]
    
    var dresses : [AgroupedInfo] = [
    AgroupedInfo(name: "base", description: "base", price: 0, increase: 0),
    AgroupedInfo(name: "abacaxy manila", description: "pink  money por tap x2", price: 500, increase: 2)
    ]
    
    var shoes: [AgroupedInfo] = [
    AgroupedInfo(name: "base", description: "base", price: 0, increase: 0), AgroupedInfo(name: "azul", description: "pink money por tap +1", price: 100, increase: 1), AgroupedInfo(name: "Lubutãn", description:"pink money por tap +2", price: 200, increase: 2), AgroupedInfo(name: "vermelho clássico", description: "pink money por tap +4", price: 400, increase: 4)
    ]
}
public class AgroupedInfo{
    internal init(name: String, description: String, price: Int, increase: Int) {
        self.name = name
        self.description = description
        self.price = price
        self.increase = increase
    }
    
    var name: String
    var description: String
    var price: Int
    var increase: Int
}
