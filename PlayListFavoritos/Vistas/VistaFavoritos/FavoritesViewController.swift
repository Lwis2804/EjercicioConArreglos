//
//  FavoritesViewController.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 06/09/23.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet weak var lblFavoriteList: UILabel!
    @IBOutlet weak var tableViewFavorite: UITableView!
    
    var recibeFavorites : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFavoriteTable()

    }


    func setUpFavoriteTable() {
        self.tableViewFavorite.delegate = self
        self.tableViewFavorite.dataSource = self
        tableViewFavorite.register(FavoritesTableViewCell.nib, forCellReuseIdentifier: FavoritesTableViewCell.identifier)
    }
 

}
