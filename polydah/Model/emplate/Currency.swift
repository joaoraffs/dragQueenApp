//
//  Money.swift
//  polydah
//
//  Created by João Raffs on 11/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

public class Currency{
    
    public init(){}
    
    public var avaiableMoney = 0
    public var moneyPerSecond =  0
    
    //public var pinkMoney = 0
    
    public func increasesMoney(){
        self.avaiableMoney +=  1
    }
    
}
