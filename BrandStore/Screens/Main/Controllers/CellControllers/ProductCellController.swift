//
//  ProducelCellController.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import Foundation
import UIKit


class ProductCellContoller: CellController {
    
    static func configure(_ tableView: UITableView) {
        let cell = UINib(nibName: "ProductTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        return cell 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UIScreen.main.bounds.height / 3
    }
    
}
