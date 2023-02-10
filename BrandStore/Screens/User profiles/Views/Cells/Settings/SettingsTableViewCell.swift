//
//  SettingsTableViewCell.swift
//  BrandStore
//
//  Created by 1 on 18.12.2022.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var arrowButton: UIButton!

    func configure(model: Settings) {
        titleTextLabel.text = model.name
        iconImageView.image = UIImage(named: model.imageString)
    }
}
