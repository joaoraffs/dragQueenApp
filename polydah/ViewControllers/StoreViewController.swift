//
//  StoreViewController.swift
//  polydah
//
//  Created by João Raffs on 05/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currency = Model.instance.currency
    
    var alredyLoadedSectionOne = false
    var alredyLoadedSectionTwo = false
    
    var itensInStore: [Int:[Item]] = [ : ]
    
    var itensInShop = Model.instance.itemModel.itensInStore
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//     return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if section == 0{
            return itensInShop[0]!.count + 1
        }
        if section == 1{
            return itensInShop[1]!.count + 1
        }
        if section == 2{
            return itensInShop[2]!.count + 1
        }
        let arrayOfItens = itensInShop[section]
        return arrayOfItens!.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        if tableView.tag != 100{
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 63
        }else{
            return 180
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
           let cell = tableView.dequeueReusableCell(withIdentifier: "OnlyLabelTableViewCell", for: indexPath) as! OnlyLabelTableViewCell
        
            if indexPath.section == 0{
        
                cell.typeLabel.text = "PERUCAHS"
                
        
            }else if indexPath.section == 1{
                cell.typeLabel.text = "ROPAHS"
            }else {
                cell.typeLabel.text = "SAPATÃO"
            }
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
      
        if let itensArray = itensInShop[indexPath.section]{
            cell.setCellByItem(itensArray[indexPath.row - 1])
            return cell
        }
        
        return cell
    }
    
    @IBOutlet weak var avaiableMoneyLabel: UILabel!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itensInShop[indexPath.section]![indexPath.row-1]
        let currency = Model.instance.currency
        
        if currency.avaiableMoney >= item.price{
            let drag = Model.instance.drag
            let section = indexPath.section
            
            currency.avaiableMoney -= item.price
            if section == 0{
                drag.hairIndex = indexPath.row-1
                drag.hair = item
                currency.moneyPerSecond += item.increase
            }
            if section == 1{
                drag.dressIndex = indexPath.row-1
                drag.dress = item
                currency.moneyByTap *= item.increase
            }
            if section == 2{
                drag.shoesIndex = indexPath.row-1
                drag.shoes = item
                currency.moneyByTap += item.increase
            }
            
            drag.saveInUD()
            drag.fetchFromUD()
            
        }

    }
    
    @IBOutlet weak var allTypeOfItemsTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        self.currency.eventManager.listenTo(eventName: "moneyIncreased") {
           self.avaiableMoneyLabel.text = String(Model.instance.currency.avaiableMoney)
        }
        self.avaiableMoneyLabel.text = String(Model.instance.currency.avaiableMoney)

    }
//    struct ContentView: View {
//        @State private var rotation = 0.0
//
//        var body: some View {
//            VStack {
//                Slider(value: $rotation, in: 0...360, step: 1.0)
//                Text("Up we go")
//                    .rotationEffect(.degrees(rotation), anchor: .topLeading)
//            }
//        }
//    }
}

