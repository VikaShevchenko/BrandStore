//
//  dsdsd.swift
//  BrandStore
//
//  Created by 1 on 24.12.2022.
//

import UIKit

class CustomerCategoryCellController: CellController {
    
    private let model: CustomerCategory
    
    init(model: CustomerCategory) {
        self.model = model
    }
    
    static func configure(tableView: UITableView) {
        let cell = UINib(nibName: "CustomerCategoryTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "CustomerCategoryTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCategoryTableViewCell", for: indexPath) as! CustomerCategoryTableViewCell
        cell.titleTextLabel.text = model.name
        return cell
    }
}
