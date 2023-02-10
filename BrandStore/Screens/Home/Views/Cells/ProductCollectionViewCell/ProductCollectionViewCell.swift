//
//  ProductCollectionViewCell.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

// 

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        self.productImageView.clipsToBounds = true
    }
    
    @IBAction func likeButton(_ sender: UIButton) { }
    
    func configure(model: Product) {
        productNameLabel.text  = model.name
        productPriceLabel.text = "\(model.price)"
        
        let image = UIImage(named: model.imageName)
        
        productImageView.image =  image?.resized(to: productImageView.frame.size)
    }

    
    func resizeImage(height: CGFloat, width: CGFloat) {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productImageView.heightAnchor.constraint(equalToConstant: height),
            productImageView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
}


extension UIImage {
    
    public func resized(to target: CGSize) -> UIImage {
        let ratio = min(
            target.height / size.height, target.width / size.width
        )
        let new = CGSize(
            width: size.width * ratio, height: size.height * ratio
        )
        let renderer = UIGraphicsImageRenderer(size: new)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: new))
        }
    }
}
