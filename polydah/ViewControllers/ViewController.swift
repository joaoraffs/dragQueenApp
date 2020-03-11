//
//  ViewController.swift
//  polydah
//
//  Created by João Raffs on 05/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        repeater()
        
                
    }
    var currency = Model.instance.currency
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBAction func tapGesture(_ sender: Any) {
        self.currency.increasesMoney()
        self.reloadLabels()
    }
    public func repeater(){
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.reloadLabels()
          print("money increased")
        }
    }
    private func reloadLabels(){
        self.currencyLabel.text = String(Model.instance.currency.avaiableMoney)
    }
}

