//
//  PokemonTableViewCell.swift
//  Pokedex
//
//  Created by Bastos Correa on 03/06/19.
//  Copyright © 2019 bastoscorrea. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
