//
//  StoreViewController.swift
//  polydah
//
//  Created by João Raffs on 05/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let itensInStore = Model.instance.itemModel.itensInStore
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//     return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 100{
            return 3
        }else{
            return Model.instance.itemModel.itensInStore.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView.tag == 100{
            return 277
        }else{
            return 100
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
        
        let item = itensInStore[indexPath.row]
        cell.setCellByItem(item)
        return cell
    }
    

    @IBOutlet weak var allTypeOfItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

