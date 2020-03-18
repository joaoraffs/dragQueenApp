//
//  StorreTableViewCell.swift
//  polydah
//
//  Created by João Raffs on 06/03/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class StoreTableViewCell: UITableViewCell {
    
    var items : [Item] = []
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let count = items.count
//        print("entrou no numberOfRows e o count é ")
//        print(count)
//        return items.count
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////
////        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
////
////        cell.priceLabel.text = String(items[indexPath.row].price)
////
////        return cell
//
//    }
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var shoeTableView: UITableView!
    @IBOutlet weak var dressTableView: UITableView!
    @IBOutlet weak var typeOfItemLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        print("entrou no awake from inib")
//        self.items = Model.instance.itemModel.itensInStore
//        
//        self.tableView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension StoreTableViewCell{
    
    func setTableViewDataSourceDelegate <D:UITableViewDelegate & UITableViewDataSource>(_ dataSourceDelegate: D, forRow row: Int){
        if row == 0{
            tableView.delegate = dataSourceDelegate
            tableView.dataSource = dataSourceDelegate
            tableView.reloadData()
            
        }else if row == 1{
            dressTableView.delegate = dataSourceDelegate
            dressTableView.dataSource = dataSourceDelegate
            dressTableView.reloadData()
        }else if row == 2{
            shoeTableView.delegate = dataSourceDelegate
            shoeTableView.dataSource = dataSourceDelegate
            shoeTableView.reloadData()
        }
    }
}

