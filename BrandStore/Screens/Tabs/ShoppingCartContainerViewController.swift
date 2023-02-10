//
//  ShoppingCart.swift
//  BrandStore
//
//  Created by 1 on 18.12.2022.
//

import Foundation
import UIKit


class ShoppingCartContainerViewController: UIViewController {
    var data = [CellController]()
    var shoppingCartVC: ShoppingCartViewController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shoppingCartVC = ShoppingCartViewController(nibName: "ShoppingCartViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: shoppingCartVC!)
        addAsChild(nc, to: self.view)
    }
}

//

