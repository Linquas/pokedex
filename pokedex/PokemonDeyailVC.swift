//
//  PokemonDeyailVC.swift
//  pokedex
//
//  Created by Linquas on 11/05/2017.
//  Copyright © 2017 Linquas. All rights reserved.
//

import UIKit

class PokemonDeyailVC: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
    }

   
    

    

}
