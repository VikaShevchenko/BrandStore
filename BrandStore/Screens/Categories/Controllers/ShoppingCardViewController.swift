//
//  ShoppingCardContainerViewController.swift
//  BrandStore
//
//  Created by 1 on 31.12.2022.
//

import UIKit

class ShoppingCardViewController: UIViewController {
    
    @IBOutlet weak var containerViewForShoppingCard: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    let model = [ShoppingCard(name: "rfref"),
                 ShoppingCard(name: "ekfmekmf")]
    
    var data = [CellController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
        // 1. зареєструвати комірку
        ShoppingCardCellController.configure(tableView: tableView)
        
      
        // 2. створити комірку і дати ій дані з моделі
        model.forEach { shoppingCard in
            let cellController = ShoppingCardCellController(model: shoppingCard)
            data.append( cellController)
        }
        
        
    }
}

extension ShoppingCardViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellController = data[indexPath.row]
        return cellController.tableView(tableView, cellForRowAt: indexPath)
    }
    
}

extension ShoppingCardViewController {
   private func configureTableView() {
       
       tableView.dataSource = self
       
 }
}
