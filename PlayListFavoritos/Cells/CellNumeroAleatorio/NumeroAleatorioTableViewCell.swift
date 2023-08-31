//
//  NumeroAleatorioTableViewCell.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 30/08/23.
//

import UIKit

class NumeroAleatorioTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblNumeroAleatorioCell: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
  
    }
    
    public func setupNumeroAleatorio(numeroAleatorio : Int) {
        self.lblNumeroAleatorioCell.text = "\(numeroAleatorio)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
   
    
}
