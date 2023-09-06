//
//  FavoritesTableViewCell.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 04/09/23.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var favoritesArtistLbl: UILabel!
    
    @IBOutlet weak var favoriteArtistHeart: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
