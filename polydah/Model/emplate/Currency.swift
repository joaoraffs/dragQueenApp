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
    public var moneyPerSecond =  1
    public var moneyByTap = 1
    //public var pinkMoney = 0
    
    public func increasesMoneyBy(_ amount: Int){
        self.avaiableMoney += amount
    }
    
}
