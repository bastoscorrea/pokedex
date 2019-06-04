//
//  PokemonTableViewController.swift
//  Pokedex
//
//  Created by Bastos Correa on 03/06/19.
//  Copyright © 2019 bastoscorrea. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {
    
    //MARK: Properties
    var pokemons = [Pokemon]()
    
    //MARK: Private Methods
    private func loadPokedex() {
        let photo001 = UIImage(named: "pokemon001")
        let photo002 = UIImage(named: "pokemon002")
        let photo003 = UIImage(named: "pokemon003")
        let photo004 = UIImage(named: "pokemon004")
        let photo005 = UIImage(named: "pokemon005")
        let photo006 = UIImage(named: "pokemon006")
        let photo007 = UIImage(named: "pokemon007")
        let photo008 = UIImage(named: "pokemon008")
        let photo009 = UIImage(named: "pokemon009")
        
        guard let pokemon001 = Pokemon(name: "Bulbassaur", number: 001, photo: photo001) else {
            fatalError("Unable to instantiate pokemon001")
        }
        
        guard let pokemon002 = Pokemon(name: "Ivysaur", number: 002, photo: photo002) else {
            fatalError("Unable to instantiate pokemon002")
        }
        
        guard let pokemon003 = Pokemon(name: "Venusaur", number: 003, photo: photo003) else {
            fatalError("Unable to instantiate pokemon003")
        }
        
        guard let pokemon004 = Pokemon(name: "Charmander", number: 004, photo: photo004) else {
            fatalError("Unable to instantiate pokemon004")
        }
        
        guard let pokemon005 = Pokemon(name: "Charmeleon", number: 005, photo: photo005) else {
            fatalError("Unable to instantiate pokemon005")
        }
        
        guard let pokemon006 = Pokemon(name: "Charizard", number: 006, photo: photo006) else {
            fatalError("Unable to instantiate pokemon006")
        }
        
        guard let pokemon007 = Pokemon(name: "Squirtle", number: 007, photo: photo007) else {
            fatalError("Unable to instantiate pokemon007")
        }
        
        guard let pokemon008 = Pokemon(name: "Wartotle", number: 008, photo: photo008) else {
            fatalError("Unable to instantiate pokemon008")
        }
        
        guard let pokemon009 = Pokemon(name: "Blastoise", number: 009, photo: photo009) else {
            fatalError("Unable to instantiate pokemon009")
        }
        
        pokemons += [pokemon001, pokemon002, pokemon003, pokemon004, pokemon005, pokemon006, pokemon007, pokemon008, pokemon009]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the Pokemon data.
        loadPokedex()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "PokemonTableViewCell"

        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PokemonTableViewCell else {
            fatalError("The dequeued cell is not an instance of PokemonTableViewCell.")
        }
        
        let pokemon = pokemons[indexPath.row]

        cell.nameLabel.text = pokemon.name
        cell.photoImageView.image = pokemon.photo
        cell.numberLabel.text = "#"+String(format: "%03d", pokemon.number)
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
