//
//  ViewController.swift
//  Sample_TableView
//
//  Created by Esat Kemal Ekren on 5.04.2018.
//  Copyright © 2018 Esat Kemal Ekren. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {
    
    let cellId = "cellId"
    var products : [Product]  = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()
        tableView.register(ProductCell.self, forCellReuseIdentifier: cellId)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductCell
        let currentLastItem = products[indexPath.row]
        cell.product = currentLastItem
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func createProductArray() {
        products.append(Product(productName: "Glasses", productImage: #imageLiteral(resourceName: "glasses") , productDesc: "This is best Glasses I've ever seen"))
        products.append(Product(productName: "Desert", productImage: #imageLiteral(resourceName: "desert") , productDesc: "This is so yummy"))
        products.append(Product(productName: "Camera Lens", productImage:  #imageLiteral(resourceName: "cameralens"), productDesc: "I wish I had this camera lens"))
    }
}



