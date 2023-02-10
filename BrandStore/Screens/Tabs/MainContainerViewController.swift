//
//  MainContainerViewController.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import Foundation
import UIKit

class MainContainerViewController: UIViewController {
    var vc : MainViewController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        vc = MainViewController()
        let nc = UINavigationController(rootViewController: vc!)
        addAsChild(nc, to: self.view)
    }
}

