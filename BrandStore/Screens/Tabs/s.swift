//
//  s.swift
//  BrandStore
//
//  Created by 1 on 03.01.2023.
//

import UIKit


class ShoppingCardContainerViewController: UIViewController {
    var data = [CellController]()
    var shoppingCartVC: ShoppingCardViewController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shoppingCartVC = ShoppingCardViewController(nibName: "ShoppingCardViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: shoppingCartVC!)
        addAsChild(nc, to: self.view)
    }
}
