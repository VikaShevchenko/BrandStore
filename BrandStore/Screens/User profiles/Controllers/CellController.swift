//
//  CellController.swift
//  BrandStore
//
//  Created by 1 on 24.12.2022.
//

import UIKit


protocol CellController {
   func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
}

extension CellController {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}






class LoginTableViewCellController: CellController {
    
    static func configure(tableView: UITableView) {
        let cell = UINib(nibName: "LogInTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "LogInTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LogInTableViewCell", for: indexPath) as! LogInTableViewCell
        return cell
    }
}


class SettingsTableViewCellController: CellController {
    
    static func configure(tableView: UITableView) {
        let cell = UINib(nibName: "SettingsTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "SettingsTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        return cell
    }
}


