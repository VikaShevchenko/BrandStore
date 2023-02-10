//
//  File.swift
//  BrandStore
//
//  Created by 1 on 24.12.2022.
//

import UIKit



class CategoriesContainerViewController: UIViewController {
    var vc: CustomerCategoriesViewController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        vc = CustomerCategoriesViewController()
        let nc = UINavigationController(rootViewController: vc!)
        addAsChild(nc, to: self.view)
    }
}
