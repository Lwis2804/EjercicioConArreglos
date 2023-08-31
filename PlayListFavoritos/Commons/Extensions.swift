//
//  Extensions.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 30/08/23.
//

import UIKit

extension UITableViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: Bundle(for: NumeroAleatorioTableViewCell.self)) }
}
