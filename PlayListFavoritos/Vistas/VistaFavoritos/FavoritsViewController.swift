//
//  FavoritsViewController.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 04/09/23.
//

import UIKit

class FavoritsViewController: UIViewController {
    
    @IBOutlet weak var tableFavorits: UITableView!
    
    
    
    var recibeFavoriteArtists : [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    func setUpFavoritsTable() {
        self.tableFavorits.dataSource = self
        self.tableFavorits.delegate = self
        self.tableFavorits.register(FavoritesTableViewCell.nib, forCellReuseIdentifier: FavoritesTableViewCell.identifier)
    }



}
