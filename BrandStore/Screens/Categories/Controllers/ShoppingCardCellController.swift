//
//  ShoppingCard.swift
//  BrandStore
//
//  Created by 1 on 31.12.2022.
//

import UIKit

class ShoppingCardCellController: CellController {
    
    private let model: ShoppingCard
    
    init(model: ShoppingCard) {
        self.model = model
    }
    
    
    static func configure(tableView: UITableView) {
        let cell = UINib(nibName: "ShoppingCardTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "ShoppingCardTableViewCell")
    }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCardTableViewCell", for: indexPath) as! ShoppingCardTableViewCell
        cell.configure(data: model)
        return cell
    }
    
}
