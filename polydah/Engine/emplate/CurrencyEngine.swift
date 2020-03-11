//
//  CurrencyEngine.swift
//  polydah
//
//  Created by João Raffs on 11/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation
import UIKit

class CurrencyEngine{
    
    public init(){}
    
    var currency = Model.instance.currency
    
    public func start(){
      let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        self.currency.increasesMoney()
        
        print("money increased")
        
        }
    }
}
