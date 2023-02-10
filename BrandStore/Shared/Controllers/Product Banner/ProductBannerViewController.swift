//
//  ProductBannerViewController.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

import UIKit

protocol ProductBannerViewControllerDelegate {
    func tapImage()
}

class ProductBannerViewController: UIViewController {
    @IBOutlet weak var productImageView: UIImageView!
    var delegate: ProductBannerViewControllerDelegate?
    
    var productImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: productImageName ?? "")
        addGestureRecognizerToView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}


extension ProductBannerViewController {
    private func addGestureRecognizerToView() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapOnImage(_:)))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func tapOnImage(_ sender: UITapGestureRecognizer) {
        delegate?.tapImage()
    }
}
