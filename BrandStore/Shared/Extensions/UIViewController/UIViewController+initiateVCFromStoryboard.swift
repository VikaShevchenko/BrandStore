//
//  UIViewController+ini.swift
//  BrandStore
//
//  Created by 1 on 22.10.2022.
//

import UIKit

protocol StoryboardInitialization {
    func initiateFromStoryboard(storyboardName: String) -> Self
}

extension StoryboardInitialization {
    func initiateFromStoryboard(storyboardName: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
        return vc
    }
}

extension UIViewController: StoryboardInitialization  { }
