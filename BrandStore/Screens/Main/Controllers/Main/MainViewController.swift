//
//  MainViewController.swift
//  BrandStore
//
//  Created by 1 on 25.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [CellController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        ProductCellContoller.configure(tableView)
        ProductBannerCellController.configure(tableView)

        data.append(ProductBannerCellController())
        data.append(ProductCellContoller())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductCellContoller())
        data.append(ProductBannerCellController())
        data.append(ProductCellContoller())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductBannerCellController())
        data.append(ProductCellContoller())


    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellController = data[indexPath.row]
        return cellController.tableView(tableView, cellForRowAt: indexPath)
    }
}


extension MainViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellController = data[indexPath.row]
        return cellController.tableView(tableView, heightForRowAt: indexPath)
    }
}

