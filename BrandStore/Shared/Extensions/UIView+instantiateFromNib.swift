//
//  UIView+inst.swift
//  BrandStore
//
//  Created by 1 on 07.11.2022.
//

import UIKit

extension UIView {
    static var nib: UINib {
        return UINib(nibName: "\(self)", bundle: nil)
    }
}

extension UINib {
    
    func instantiate() -> Any? {
        return self.instantiate(withOwner: nil, options: nil).first
    }
}


extension UIView {
    static func instantiateFromNib() -> Self? {
        func instanceFromNib<T: UIView>() ->T? {
            return nib.instantiate() as? T
        }
        return instanceFromNib()
    }
}

