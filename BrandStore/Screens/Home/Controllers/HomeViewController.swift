//
//  ViewController.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var viewForCustromerCategories: UIView!
    
    @IBOutlet weak var product1ContainerView: UIView!
    @IBOutlet weak var product2ContainerView: UIView!
    @IBOutlet weak var product3ContainerView: UIView!
    @IBOutlet weak var product4ContainerView: UIView!
    @IBOutlet weak var product5ContainerView: UIView!
    @IBOutlet weak var product6ContainerView: UIView!
    @IBOutlet weak var product7ContainerView: UIView!
    @IBOutlet weak var product8ContainerView: UIView!
    @IBOutlet weak var product9ContainerView: UIView!
    @IBOutlet weak var product10ContainerView: UIView!
    @IBOutlet weak var product11ContainerView: UIView!
    @IBOutlet weak var product12ContainerView: UIView!
    @IBOutlet weak var product13ContainerView: UIView!
    @IBOutlet weak var product14ContainerView: UIView!
    @IBOutlet weak var product15ContainerView: UIView!
    
    override func viewDidLoad() {
//        setupNavigationBar()
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let height: CGFloat = 300 //whatever height you want
        let bounds = self.navigationController!.navigationBar.bounds
        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)

    }
}

extension HomeViewController: ProductBannerViewControllerDelegate {
    func tapImage() {
        let productDetailVC = ProductBannerDetailsViewController().initiateFromStoryboard(storyboardName: Constants.Identifiers.Storyboards.productBannerDetails)
        
        navigationController?.pushViewController(productDetailVC, animated: true)
    }
}

extension HomeViewController: ProductViewControllerDelegate {
    func tapCell() {
        let productDetailVC = ProductDetailsViewController().initiateFromStoryboard(storyboardName: Constants.Identifiers.Storyboards.productDetails)
        productDetailVC.delegate = self
        
        navigationController?.pushViewController(productDetailVC, animated: true)
    }
}


extension HomeViewController: ProductDetailsViewControllerDelegate {
    func tapCloseButton() {
        navigationController?.popViewController(animated: true)
    }
}

extension HomeViewController {
    private func setupUI() {
        
        let customerCategories = CustomerCategoriesView.instantiateFromNib()!
        customerCategories.frame = viewForCustromerCategories.bounds
        
        
        viewForCustromerCategories.addSubview(customerCategories)
        
        
        let productVC1 = initiateProductBannerVC(imageName: "Main foto")
        productVC1.delegate = self
        let productVC2 = ProductViewController(nibName: "ProductViewController", bundle: nil)
        productVC2.delegate = self
        let productVC3 = initiateProductBannerVC(imageName: "F1")
        productVC3.delegate = self
        let productVC4 = initiateProductBannerVC(imageName: "F2")
        productVC4.delegate = self
        let productVC5 = initiateProductBannerVC(imageName: "F3")
        productVC5.delegate = self
        let productVC6 = initiateProductBannerVC(imageName: "cat")
        productVC6.delegate = self
        let productVC7 = initiateProductBannerVC(imageName: "cat")
        productVC7.delegate = self
        let productVC8 = ProductViewController(nibName: "ProductViewController", bundle: nil)

        productVC8.delegate = self
        let productVC9 = initiateProductBannerVC(imageName: "cat")
        productVC9.delegate = self
        let productVC10 = ProductViewController(nibName: "ProductViewController", bundle: nil)
        productVC10.delegate = self
        let productVC11 = initiateProductBannerVC(imageName: "cat")
        productVC11.delegate = self
        let productVC12 = initiateProductBannerVC(imageName: "cat")
        productVC12.delegate = self
        let productVC13 = initiateProductBannerVC(imageName: "cat")
        productVC13.delegate = self
        let productVC14 = initiateProductBannerVC(imageName: "cat")
        productVC14.delegate = self
        let productVC15 = ProductViewController(nibName: "ProductViewController", bundle: nil)

        productVC15.delegate = self
        
        addAsChild(productVC1, to: product1ContainerView)
        addAsChild(productVC2, to: product2ContainerView)
        addAsChild(productVC3, to: product3ContainerView)
        addAsChild(productVC4, to: product4ContainerView)
        addAsChild(productVC5, to: product5ContainerView)
        addAsChild(productVC6, to: product6ContainerView)
        addAsChild(productVC7, to: product7ContainerView)
        addAsChild(productVC8, to: product8ContainerView)
        addAsChild(productVC9, to: product9ContainerView)
        addAsChild(productVC10, to: product10ContainerView)
        addAsChild(productVC11, to: product11ContainerView)
        addAsChild(productVC12, to: product12ContainerView)
        addAsChild(productVC13, to: product13ContainerView)
        addAsChild(productVC14, to: product14ContainerView)
        addAsChild(productVC15, to: product15ContainerView)
    }
    
    private func initiateProductBannerVC(imageName: String) -> ProductBannerViewController {
        let productBannerVC = ProductBannerViewController(nibName: "ProductBannerViewController", bundle: nil)
        productBannerVC.productImageName = imageName
        return productBannerVC
    }
    
    private func setupNavigationBar() {
        // MARK: - LOOK SETUP NAVIGATION
        
        let customerCategories = CustomerCategoriesView.instantiateFromNib()!
        customerCategories.frame = navigationController!.navigationBar.bounds
        
        navigationItem.titleView = customerCategories
    }
}
