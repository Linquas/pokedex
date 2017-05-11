//
//  PokemonDeyailVC.swift
//  pokedex
//
//  Created by Linquas on 11/05/2017.
//  Copyright © 2017 Linquas. All rights reserved.
//

import UIKit

class PokemonDeyailVC: UIViewController {

    
    @IBOutlet weak var evoLabel: UILabel!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var ackLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
    }

   
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    

}
