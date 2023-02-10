//
//  ShoppingCardTableViewCell.swift
//  BrandStore
//
//  Created by 1 on 03.01.2023.
//

import UIKit

class ShoppingCardTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(data: ShoppingCard) {
        titleLabel.text = data.name
    }
    
}
