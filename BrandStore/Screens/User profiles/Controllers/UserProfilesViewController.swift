//
//  UserProfilesViewController.swift
//  BrandStore
//
//  Created by 1 on 18.12.2022.
//

import UIKit





class UserProfilesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let model = [Settings(name: "", imageString: ""),
                 Settings(name: "Answear club", imageString: "cat"),
                 Settings(name: "Налаштування", imageString: "cat"),
                 Settings(name: "Корисна інформація", imageString: "cat"),
                 Settings(name: "Контакти", imageString: "cat"),
    ]
    
    
    
    var data = [CellController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigation()
        
  
        data.append(SettingsTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(LoginTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(SettingsTableViewCellController())
        data.append(LoginTableViewCellController())
        data.append(LoginTableViewCellController())
        

    }
}


extension UserProfilesViewController: UITableViewDelegate {}

extension UserProfilesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellController = data[indexPath.row]
        return cellController.tableView(tableView, cellForRowAt: indexPath)
        
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "LogInTableViewCell", for: indexPath) as! LogInTableViewCell
//            return cell
//        }
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
//
//        let currentModel = model[indexPath.row]
//        cell.configure(model: currentModel)
//        return cell
//
        
        

        
    }
}


extension UserProfilesViewController {
    
   private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
//        let cell = UINib(nibName: "LogInTableViewCell", bundle: nil)
//        tableView.register(cell, forCellReuseIdentifier: "LogInTableViewCell")
       
       LoginTableViewCellController.configure(tableView: tableView)
        
        
       SettingsTableViewCellController.configure(tableView: tableView)
    }
    
    private func setupNavigation() {
//        let catImage = UIImageView(image: UIImage(named: "cat"))
//        catImage.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
//
//        self.navigationItem.titleView = catImage
        
        title = "Answear"
    }
    
}
