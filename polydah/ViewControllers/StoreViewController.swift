//
//  StoreViewController.swift
//  polydah
//
//  Created by João Raffs on 05/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var alredyLoadedSectionOne = false
    var alredyLoadedSectionTwo = false
    
    var itensInStore: [Int:[Item]] = [ : ]
    
    var itensInShop = Model.instance.itemModel.itensInStore
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//     return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 100{
            return 3
        }
        let arrayOfItens = itensInShop[section]
        return arrayOfItens!.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        if tableView.tag != 100{
        if tableView.tag == 100{
            return 1
        }
        return itensInShop.count
//        }
//        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView.tag == 100{
            return 277
        }else{
            return 180
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 100{
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoreTableViewCell", for: indexPath) as! StoreTableViewCell
            
            if indexPath.row == 0{
                
                cell.typeOfItemLabel.text = "PERUCAHS"
                cell.tableView.reloadData()
                
            }else if indexPath.row == 1{
                cell.typeOfItemLabel.text = "ROPAHS"
            }else {
                cell.typeOfItemLabel.text = "SAPATÃO"
            }
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
      
        if let itensArray = itensInShop[indexPath.section]{
            cell.setCellByItem(itensArray[indexPath.row])
            return cell
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itensInShop[indexPath.section]![indexPath.row]
        let currency = Model.instance.currency
        currency.moneyPerSecond += indexPath.row
        currency.moneyByTap += indexPath.section
        
        let drag = Model.instance.drag
        let section = indexPath.section
        
        if section == 0{
            drag.hairIndex = indexPath.row
            drag.hair = item
        }
        if section == 1{
            drag.dressIndex = indexPath.row
            drag.dress = item
        }
        if section == 2{
            drag.shoesIndex = indexPath.row
            drag.shoes = item
        }
        drag.saveInUD()
        drag.fetchFromUD()
        
        
    }

    

    @IBOutlet weak var allTypeOfItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

