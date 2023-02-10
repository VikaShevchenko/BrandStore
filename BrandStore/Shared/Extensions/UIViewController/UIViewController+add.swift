//
//  UIViewController+add.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

import UIKit


extension UIViewController {
    
    func addAsChild(_ vc: UIViewController, to containerView: UIView) {
       self.addChild(vc)
       vc.view.frame = containerView.bounds
       containerView.addSubview(vc.view)
       vc.didMove(toParent: self)
   }
}

