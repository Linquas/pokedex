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
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        

        nameLabel.text = pokemon.name.capitalized
        pokemon.downloadPokemonDetail {
            
            self.updateUI()
        }
    }
    
    func updateUI(){
        ackLabel.text = pokemon.attack
        defLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        idLabel.text = "\(pokemon.pokedexId)"
        typeLabel.text = pokemon.type
        descriptionLabel.text = pokemon.description
        
        if pokemon.nextEvoId == "" {
            evoLabel.text = "No Evolutions"
            nextEvoImg.isHidden = true
        } else {
            
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvoId)
            let str = "Next Evolution: \(pokemon.nextEvoName) - LVL \(pokemon.nextEvoLevel)"
            evoLabel.text = str
        }
            
    }

   
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    

}
