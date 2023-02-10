//
//  ProductDetailsViewController.swift
//  BrandStore
//
//  Created by 1 on 23.10.2022.
//

import UIKit

class ProductBannerDetailsViewController: UIViewController {
    @IBOutlet weak var containerForProducts: UIView!
    
    var product: Product?
    
    var sortButton: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
        setupNavigation()
        
        
        title = "TEST"

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        let button =  UIButton(type: .custom)
        button.setImage(UIImage(systemName: "house"), for:.normal)
        button.addTarget(self, action: #selector(tapSortButton), for: .touchUpInside)
        button.frame = CGRect(x:0, y:0, width:32, height:32)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
//        let sortImage = UIImage(named: "arrow.up.arrow.down")
//
//         sortButton = UIBarButtonItem(image: sortImage, style: .plain, target: self, action: #selector(tapSortButton(_:)))
//
//        navigationItem.rightBarButtonItem = sortButton
    }
    
    @objc func tapSortButton(_ sender: UIButton) {}
    
}

extension ProductBannerDetailsViewController {
    private func setupVC() {
        let productVC = ProductViewController().initiateFromStoryboard(storyboardName: "Main")
        
        addAsChild(productVC, to: containerForProducts)
    }
    
    private func setupNavigation() {
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        }
    }
}
