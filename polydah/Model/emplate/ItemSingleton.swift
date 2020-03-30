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
//        self.itensInStore.append
        
        self.fetchItems()
        
    }
    
    public static var instance = ItemSingleton()
    
    public func fetchItems(){
        var repeater = 0
        while true{
            print("entrou no primeeiro rpeat \(repeater)")
            if let image = UIImage.init(named: "dress\(repeater)"){
                print("entrou no if let")
                let info = ItemData().dresses[repeater]
                let item = Item(image: image, name: info.name, description: info.description, price: info.price, increase: info.increase)
                self.dressesInStore.append(item)
            }else{
                break
            }
            repeater += 1
        }
        repeater = 0
        while true{
            print("entrou no segundo repeat")
            if let image = UIImage.init(named: "hair\(repeater)"){
                let info = ItemData().hairs[repeater]
                print("entrou no if let do hair")
                let item = Item(image: image, name: info.name, description: info.description, price: info.price,increase: info.increase)
                self.hairsInStore.append(item)
            }else{
                break
            }
            repeater += 1
        }
        repeater = 0
        while true{
            print("entrou no 3o repeat")
            if let image = UIImage.init(named: "shoe\(repeater)"){
                let info = ItemData().shoes[repeater]
                print("entrou no if let do hair")
                
                let item = Item(image: image, name: info.name, description: info.description, price: info.price, increase: info.increase)
                self.shoesInStore.append(item)
            }else{
                break
            }
            repeater += 1
        }
//        }
//        repeater = 0
//        while true{
//            if let image = UIImage(named:")
//        }
        itensInStore[0] = hairsInStore
        itensInStore[1] = dressesInStore
        itensInStore[2] = shoesInStore
        print(itensInStore.count)
        
    }
    
    public var itensInStore: [Int: [Item]] = [:]
    
    public var hairsInStore: [Item] = []
    public var dressesInStore: [Item] = []
    public var shoesInStore: [Item] = []

    
    public var boughtItens: [Item] =  []
    
}
