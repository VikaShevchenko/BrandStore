//
//  ProductImageCellCollectionViewCell.swift
//  BrandStore
//
//  Created by 1 on 30.10.2022.
//


// SOLID -
// S - Single Responsibility


// Maksim - садовник, ремонти машин,нянька, плвао, прибиральник, трепальщик нервів -- GOD OBJECT
// D - DEPENCY INVERSION

// L - LISKOV SUBITUTION

// DRY - DONT REPEAT YOURSELF
// KISS - KEPP IT SIMPLE STUPID


import UIKit

class ProductImageCellCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func resizeImage(height: CGFloat, width: CGFloat) {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productImageView.heightAnchor.constraint(equalToConstant: height),
            productImageView.widthAnchor.constraint(equalToConstant: width)
        ])
    }

}
