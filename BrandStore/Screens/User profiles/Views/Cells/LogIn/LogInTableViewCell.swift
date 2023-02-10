//
//  LogInTableViewCell.swift
//  BrandStore
//
//  Created by 1 on 18.12.2022.
//

import UIKit

class LogInTableViewCell: UITableViewCell {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerButton.layer.borderColor = UIColor.black.cgColor
        registerButton.layer.borderWidth = 2
    }
    
    @IBAction func tapLoginButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tapRegisterButton(_ sender: UIButton) {
        
    }
}
