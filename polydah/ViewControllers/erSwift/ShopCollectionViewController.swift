//
////  ShopCollectionViewController.swift
////  polydah
////
////  Created by João Raffs on 19/03/20.
////  Copyright © 2020 Joao Raffs. All rights reserved.
////
////
//import Foundation
//
//import UIKit
//
//private let reuseIdentifier = "Cell"
//
//class ShopCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//
//
//    @IBOutlet weak var collectionView: UICollectionView!
//
//    var items = Model.instance.itemModel.itensInStore
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////      let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
////
////            super.collectionView.reloadData()
////        }
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//
//        // Do any additional setup after loading the view.
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using [segue destinationViewController].
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//    // MARK: UICollectionViewDataSource
//
// func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 3
//    }
//
//
//  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return items[section]!.count + 1
//
//        // #warning Incomplete implementation, return the number of items
////        return 0
//    }
//
//
//func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//
//
//
//        if indexPath.row == 0{
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopLabelCollectionViewCell", for: indexPath) as! ShopLabelCollectionViewCell
//            if indexPath.section == 0{
//
//                cell.typeOfItemLabel.text = "perucahs"
//
//            }else if indexPath.section == 1{
//                cell.typeOfItemLabel.text = "vestchydos"
//            }else{
//                cell.typeOfItemLabel.text = "sapatão"
//            }
//            print(cell.typeOfItemLabel.text!)
//            return cell
//        }
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCollectionViewCell", for: indexPath) as! ItemCollectionViewCell
//
//
//        let item = items[indexPath.section]![indexPath.row-1]
//
//        print(indexPath.section)
//        print(indexPath.row)
//
//
//        cell.setCellFromItem(item)
//
//
//        // Configure the cell
//
//        return cell
//    }
//    
//    
//    width
//
//
//    // MARK: UICollectionViewDelegate
//
//    /*
//    // Uncomment this method to specify if the specified item should be highlighted during tracking
//    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    */
//
//    /*
//    // Uncomment this method to specify if the specified item should be selected
//    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    */
//
//    /*
//    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
//    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
//
//    }
//    */
//
//    override func viewWillAppear(_ animated: Bool) {
////        .collectionView.dataSource
////
//    self.collectionView.reloadData()
//    }
//}
