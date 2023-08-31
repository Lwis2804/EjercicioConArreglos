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
    
    var arrayArtists : [String] = ["The Beatles", "Bob Dylan", "Elvis Presley", "The Rolling Stones", "Chuck Berry", "Jimi Hendrix", "Talking Heads", "James Brown", "Little Richard", "Aretha Franklin", "Ray Charles", "Bob Marley", "The Beach Boys", "Buddy Holly", "Led Zeppelin", "Stevie Wonder", "Sam Cooke", "Muddy Waters", "Marvin Gaye", "The Velvet Underground", "Bo Diddley", "Otis Redding", "U2", "Bruce Springsteen", "Jerry Lee Lewis", "Fats Domino", "Ramones", "Prince", "The Clash", "TThe Who", "Nirvana", "Johnny Cash", "Smokey Robinson ", "The Everly Brothers", "Neil Young", "Michael Jackson", "Madonna", "Roy Orbison", "Jhon Lenon", "David Bowie","Simon and Garfunkel", "The Doors", "Van Morrison", "Sly & the Family Stone", "Public Enemy", "TThe Byrds", "Janis Joplin", "Patti Smith", "Run-DMC", "Elton John", "The Band", "Pink Floyd", "Queen", "The Allman Brothers Band", "Howlin' Wolf", "Eric Clapton", "Dr. Dre", "Grateful Dead", "Parliament/Funkadelic", "Aerosmith","Sex Pistols", "Metallica", "Joni Mitchell", "Tina Turner", "Phil Spector", "The Kinks", "Al Green", "Cream", "The Temptations", "Jackie Wilson", "The Police", "Frank Zappa", "AC/DC", "Radiohead", "Hank Williams", "Eagles", "The Shirelles", "Beastie Boys", "The Stooges", "Four Tops","Elvis Costello", "The Drifters", "Creedence Clearwater Revival", "Eminem", "James Taylor", "Black Sabbath", "Tupac Shakur", "Gram Parsons", "Jay-Z", "The Yardbirds", "Carlos Santana", "Tom Petty", "Guns N' Roses", "Booker T. and the MGs", "Nine Inch Nails", "Lynyrd Skynyrd", "Diana Ross", "R.E.M.", "Curtis Mayfield", "Carl Perkins",]
    
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
