//
//  ProductTableViewCell.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    var vc: ProductViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        vc = ProductViewController()
        vc?.view.frame = contentView.bounds
        contentView.addSubview((vc?.view)!)
        
    }
}
