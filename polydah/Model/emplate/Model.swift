//
//  Model.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

class Model{
    private init(){}
    
    public static var instance = Model.init()
    
    public var itemModel = ItemSingleton.instance
    
}
