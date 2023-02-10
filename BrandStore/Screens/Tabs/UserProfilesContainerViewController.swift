//
//  UserProfilesContainerViewController.swift
//  BrandStore
//
//  Created by 1 on 18.12.2022.
//

import Foundation
import UIKit

class UserProfilesContainerViewController: UIViewController {
    
    var data = [CellController]()
    var userProfiles: UserProfilesViewController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userProfiles = UserProfilesViewController(nibName: "UserProfilesViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: userProfiles!)
        addAsChild(nc, to: self.view)
    }
}

