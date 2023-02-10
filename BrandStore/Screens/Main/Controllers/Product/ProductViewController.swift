//
//  ProductViewController.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

import UIKit


protocol ProductViewControllerDelegate: AnyObject {
    func tapCell()
}

class ProductViewController: UIViewController {
    // Compositional Layout
    @IBOutlet weak var productInfo1CollectionView: UICollectionView!
    
    let products = [
        Product(imageName: "F1", isSaved: false, name: "Сумка", price: 300),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
        Product(imageName: "F2", isSaved: false, name: "Пальто", price: 1400),
    ]
    
    weak var delegate: ProductViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        // Apple TV ->
    }
}


extension ProductViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.Cell.productCell, for: indexPath) as! ProductCollectionViewCell
        
        let currentProduct = products[indexPath.row]
    
        cell.configure(model: currentProduct)

        return cell
    }
}


extension ProductViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        
        delegate?.tapCell()
    }
}

extension ProductViewController {
    
    private func setupCollectionView() {
        productInfo1CollectionView.dataSource = self
        productInfo1CollectionView.delegate = self
        
        let productionCell = UINib(nibName: Constants.Identifiers.Cell.productCell,
                                   bundle: Bundle.main)
        
        productInfo1CollectionView.register(productionCell, forCellWithReuseIdentifier: Constants.Identifiers.Cell.productCell)
    }
}
