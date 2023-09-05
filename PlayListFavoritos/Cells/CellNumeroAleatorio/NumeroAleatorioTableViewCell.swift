//
//  NumeroAleatorioTableViewCell.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 30/08/23.
//

import UIKit

class NumeroAleatorioTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblNumeroAleatorioCell: UILabel!
    @IBOutlet weak var imgArtist: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
  
    }
    
    public func setupNumeroAleatorio(numeroAleatorio : Int) {
        self.lblNumeroAleatorioCell.text = "\(numeroAleatorio)"
    }
    
    public func setUpPickArtist(randomArtist : String , andState : Bool) {
        self.lblNumeroAleatorioCell.text = "\(randomArtist)"
        if andState {
            imgArtist.image = UIImage(named: "yellowStar")
        }else{
            imgArtist.image = UIImage(named: "starEmpty")
        }
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
   
    
}
