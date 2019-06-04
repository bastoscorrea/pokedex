//
//  Pokemon.swift
//  Pokedex
//
//  Created by Bastos Correa on 03/06/19.
//  Copyright © 2019 bastoscorrea. All rights reserved.
//

import UIKit

class Pokemon {
    
    //MARK: Properties
    var name: String
    var number: Int
    var photo: UIImage?

    //MARK: Initialization
    init?(name: String, number: Int, photo: UIImage?) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The number must be between 1 and 151 inclusively (First Gen)
        guard (number >= 1) && (number <= 151) else {
            return nil
        }
        
        self.name = name
        self.number = number
        self.photo = photo
    }
}
