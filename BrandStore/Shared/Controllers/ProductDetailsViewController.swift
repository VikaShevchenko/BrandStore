//
//  ProductDetailsViewController.swift
//  BrandStore
//
//  Created by 1 on 30.10.2022.
//

import UIKit

protocol ProductDetailsViewControllerDelegate {
    func tapCloseButton()
}


class ProductDetailsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var cartButton: UIButton!
    
    // MARK: - array
    
    let products = [
        Product(imageName: "F1", isSaved: false, name: "Сумка", price: 300),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F3", isSaved: false, name: "Піджак", price: 2300),
        Product(imageName: "F1", isSaved: false, name: "Светр", price: 1700),
        Product(imageName: "F2", isSaved: false, name: "Юбка", price: 3000),
        Product(imageName: "F3", isSaved: false, name: "Штани", price: 500),
        Product(imageName: "F1", isSaved: false, name: "Колготки", price: 390),
        Product(imageName: "F2", isSaved: false, name: "Плаття", price: 2700)
    ]
    
    var delegate: ProductDetailsViewControllerDelegate?
    
    enum ProductToolButton: Int {
        case info,measure,color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartButton.layer.cornerRadius = 10
        
        setupCollectionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func pressCloseButton(_ sender: UIButton) {
        delegate?.tapCloseButton()
    }
    
    @IBAction func pressShareButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressLikeButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressProductToolButton(_ sender: UIButton) {
        let buttonType = ProductToolButton(rawValue: sender.tag)!
        
        switch buttonType {
        case .info:
            print("")
        case .measure:
            print("")
        case .color:
            print("")
        }
    }
    @IBAction func pressCartButton(_ sender: UIButton) {
        
    }
}

extension ProductDetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.Cell.productImageCell, for: indexPath) as! ProductImageCellCollectionViewCell
    // MARK: - присвоіти картинку
        let currentProduct = products[indexPath.row]
        cell.productImageView.image = UIImage(named:currentProduct.imageName)
//        cell.resizeImage(height: collectionView.bounds.height, width: collectionView.bounds.width)
        
        return cell
    }
    
}


extension ProductDetailsViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.bounds.width, height: collectionView.frame.height)
// }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}


extension ProductDetailsViewController {
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.decelerationRate = .fast
        
        let cell = UINib(nibName: Constants.Identifiers.Cell.productImageCell, bundle: nil)
        collectionView.register(cell, forCellWithReuseIdentifier: Constants.Identifiers.Cell.productImageCell)
    }
    
}




//

//
