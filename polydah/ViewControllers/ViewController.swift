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
    
    @IBOutlet weak var hairImageView: UIImageView!
    var currency = Model.instance.currency
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var dragImageView: UIImageView!
    
    @IBAction func tapGesture(_ sender: Any) {
        self.currency.increasesMoneyBy(currency.moneyByTap)
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

