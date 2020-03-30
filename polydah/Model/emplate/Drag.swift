//
//  Drag.swift
//  polydah
//
//  Created by João Raffs on 13/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation
import UIKit

public class Drag{
    public init(hair: Item, dress: Item, shoes: Item) {
        self.hair = hair
        self.dress = dress
        self.shoes = shoes
        
        self.fetchFromUD()
    }
    
    
    public init(){
        let mockItem = Item(image: UIImage.init(named: "dress0")!, name: "aaa", description: "aaaa", price: 50, increase: 0)
        
        self.hair = mockItem
        self.dress = mockItem
        self.shoes = mockItem
        
//        self.fetchFromUD()
        
    }
    
    public var hair: Item
    public var dress: Item
    public var shoes: Item
    
    public var hairIndex: Int = 0
    public var dressIndex : Int = 0
    public var shoesIndex: Int = 0
    
    public func fetchFromUD(){
        if let hairIndex = UserDefaults.standard.object(forKey: "hairIndex") as? Int{
            self.hairIndex = hairIndex
            self.hair = Model.instance.itemModel.hairsInStore[hairIndex]
        }
        if let shoesIndex = UserDefaults.standard.object(forKey: "shoesIndex") as? Int{
            self.shoesIndex = shoesIndex
            self.shoes = Model.instance.itemModel.shoesInStore[shoesIndex]
        }
        if let dressIndex = UserDefaults.standard.object(forKey: "dressIndex") as? Int{
            self.dressIndex = dressIndex
            self.dress = Model.instance.itemModel.dressesInStore[dressIndex]
        }
    }
   
    public func saveInUD(){
        UserDefaults.standard.set(Model.instance.drag.hairIndex, forKey: "hairIndex")
        UserDefaults.standard.set(Model.instance.drag.shoesIndex, forKey: "shoesIndex")
        UserDefaults.standard.set(Model.instance.drag.dressIndex, forKey: "dressIndex")
    }
    
}
