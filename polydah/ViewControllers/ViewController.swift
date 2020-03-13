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
    
    @IBOutlet weak var dressImageView: UIImageView!
    @IBOutlet weak var hairImageViw: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
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
    override func viewWillAppear(_ animated: Bool) {
        let drag = Model.instance.drag
        self.hairImageView.image = drag.hair.image
        self.dressImageView.image = drag.dress.image
        self.shoeImageView.image = drag.shoes.image
    }
}

