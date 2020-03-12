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
    
    let itensInStore = Model.instance.itemModel.itensInStore
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//     return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 100{
            return 3
        }
        if section == 0{
            return Model.instance.itemModel.hairsInStore.count
        }
        return Model.instance.itemModel.dressesInStore.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        if tableView.tag != 100{
        if tableView.tag == 100{
            return 1
        }
        return 3
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
        if !(alredyLoadedSectionTwo && alredyLoadedSectionOne){
            if indexPath.section == 0 && !alredyLoadedSectionOne{
                let item = Model.instance.itemModel.hairsInStore[indexPath.row]
                cell.setCellByItem(item)
                print("section 0 and row \(indexPath.row)")
                return cell
                
            }else if indexPath.section == 1 && !alredyLoadedSectionTwo{
                alredyLoadedSectionOne = true

                let item = Model.instance.itemModel.dressesInStore[indexPath.row]
                cell.setCellByItem(item)
                print("anothr one")
                return cell
            }else{
                alredyLoadedSectionTwo = true
            }
        }
//
//        let item =
//        cell.setCellByItem(item)
        
        return cell
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

