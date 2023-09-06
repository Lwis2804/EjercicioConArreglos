//
//  ExtensionsFavorits.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 04/09/23.
//

import UIKit

extension FavoritsViewController : UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recibeFavoriteArtists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellFavorites = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.identifier, for: indexPath) as? FavoritesTableViewCell ?? FavoritesTableViewCell()
        return cellFavorites
    }
    
    
    
    
    
}
