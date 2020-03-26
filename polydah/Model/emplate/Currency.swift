//
//  Money.swift
//  polydah
//
//  Created by João Raffs on 11/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

public class Currency{
    
    public var eventManager = EventManager()
    
    public init(){}
    
    public var avaiableMoney = 0
    public var moneyPerSecond =  1
    public var moneyByTap = 1
    //public var pinkMoney = 0
    
    
    public func getDataFromUD(){
        if let avaiableMoney = UserDefaults.standard.object(forKey: "avaiableMoney") as? Int{
            self.avaiableMoney = avaiableMoney
            
        }
        if let moneyPerSecond = UserDefaults.standard.object(forKey: "moneyPerSecond") as? Int{
            self.moneyPerSecond = moneyPerSecond
        }
        if let moneyByTap = UserDefaults.standard.object(forKey: "moneyByTap") as? Int{
            self.moneyByTap = moneyByTap
        }
        
    }
    
    public func increasesMoneyBy(_ amount: Int){
        self.avaiableMoney += amount
        eventManager.trigger(eventName: "moneyIncreased")
        UserDefaults.standard.set(avaiableMoney, forKey: "avaiableMoney")
        UserDefaults.standard.set(moneyPerSecond, forKey: "moneyPerSecond")
        
        UserDefaults.standard.set(moneyByTap, forKey: "moneyByTap")
        
    }
    
}
