//
//  CategoriesViewController.swift
//  BrandStore
//
//  Created by 1 on 24.12.2022.
//

import UIKit


class CustomerCategoriesViewController: UIViewController {
    
    @IBOutlet weak var containerViewForCustomerCategoriesMenu: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    let model = [CustomerCategory(name: "Новинки"),
                 CustomerCategory(name: "Одяг"),
                 CustomerCategory(name: "Взуття"),
                 CustomerCategory(name: "Аксесуари"),
                 CustomerCategory(name: "Спорт"),
                 CustomerCategory(name: "Преміум"),
                 CustomerCategory(name: "Дім"),
                 CustomerCategory(name: "Бренди"),
                 CustomerCategory(name: "Розпродаж"),
    ]
    
    var data = [CellController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
}


extension CustomerCategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellController = data[indexPath.row]
        return cellController.tableView(tableView, cellForRowAt: indexPath)
    }
}


extension CustomerCategoriesViewController {
    
    private func configureTableView() {
        
        tableView.dataSource = self

        CustomerCategoryCellController.configure(tableView: tableView)
        LoginTableViewCellController.configure(tableView: tableView)
        SettingsTableViewCellController.configure(tableView: tableView)
        
        model.forEach { category in
            data.append(CustomerCategoryCellController(model: category))
        }
    }
}
