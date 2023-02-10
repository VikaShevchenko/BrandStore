//
//  ProductBannerCellController.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import Foundation
import UIKit

class ProductBannerCellController: CellController {
    static func configure(_ tableView: UITableView) {
        let cell = UINib(nibName: "ProductBannerTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "ProductBannerTableViewCell")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductBannerTableViewCell", for: indexPath) as! ProductBannerTableViewCell
        cell.configure()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UIScreen.main.bounds.height / 2 
        
    }
    
}
