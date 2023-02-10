//
//  ProductBannerTableViewCell.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import UIKit

class ProductBannerTableViewCell: UITableViewCell {

    var vc: ProductBannerViewController?
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }
    
    func configure() {
        vc = ProductBannerViewController()
        vc?.productImageName = "F3"
        vc?.view.frame = contentView.bounds
        contentView.addSubview((vc?.view)!)
    }
}
