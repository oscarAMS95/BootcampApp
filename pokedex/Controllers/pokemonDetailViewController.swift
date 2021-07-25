//
//  pokemonDetailViewController.swift
//  pokedex
//
//  Created by setup on 7/24/21.
//

import UIKit
import SDWebImage

class pokemonDetailViewController: UIViewController {
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblOrder: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var vStats: UIView!
    @IBOutlet weak var imgPokemon: UIImageView!
    
    let pokemon: Pokemon = Pokemon(name: "Bulbasaur", order: 5, type: "Electric", stats: [("HP",50), ("Atk", 35)], image:"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        let url = URL(string: pokemon.image)
        if let unwrappedURL = url{
            imgPokemon.sd_setImage(with: unwrappedURL, completed: nil)
        }
        //guard function
        //or with an if let
        lblName.text = pokemon.name.uppercased()
        lblOrder.text = "#\(pokemon.order)"
        lblType.text = pokemon.type.lowercased()
        vStats.roundCorners(withRadius: 30)
    }

    struct Pokemon {
        let name: String
        let order: Int
        let type: String
        let stats: [(name: String, power: Int)]
        let image: String
    }
    
}


