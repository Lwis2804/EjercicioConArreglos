//
//  VistaPrincipalViewController.swift
//  PlayListFavoritos
//
//  Created by LUIS GONZALEZ on 30/08/23.
//

import UIKit

class VistaPrincipalViewController: UIViewController {
    
    
    @IBOutlet weak var playListPpal: UITableView!
    @IBOutlet weak var btnAnadir: UIButton!
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEliminarTodo: UIButton!
    
    var arrayNumerosAleatorios : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTablePlaylist()
    }
    
    func setUpTablePlaylist() {
        self.playListPpal.delegate = self
        self.playListPpal.dataSource = self
        self.playListPpal.register(NumeroAleatorioTableViewCell.nib, forCellReuseIdentifier: NumeroAleatorioTableViewCell.identifier)
    }
    
    func generateRandomValue () -> Int {
       return Int(arc4random_uniform(100))
    }
    
    @IBAction func btnAnadirNumero(_ sender: Any) {
        arrayNumerosAleatorios.append(generateRandomValue())
        self.playListPpal.reloadData()
    }
    
    @IBAction func btnEliminarNumero(_ sender: Any) {
        arrayNumerosAleatorios.removeLast()
        self.playListPpal.reloadData()
    }
    
    @IBAction func btnEliminarTodo(_ sender: Any) {
        arrayNumerosAleatorios.removeAll()
        self.playListPpal.reloadData()
    }
    
    
    
    
}
