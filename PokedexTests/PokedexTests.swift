//
//  PokedexTests.swift
//  PokedexTests
//
//  Created by Bastos Correa on 03/06/19.
//  Copyright © 2019 bastoscorrea. All rights reserved.
//

import XCTest
@testable import Pokedex

class PokedexTests: XCTestCase {

    //MARK: Pokemon Class Tests
    // Confirm that the Pokemon initializer returns a Pokemon object when passed valid parameters.
    func testPokemonInitializationSucceeds() {
        // First Pokemon
        let firstPokemon = Pokemon.init(name: "Bulbassaur", number: 1, photo: nil)
        XCTAssertNotNil(firstPokemon)

        // Last Pokemon
        let lastPokemon = Pokemon.init(name: "Mew", number: 151, photo: nil)
        XCTAssertNotNil(lastPokemon)
    }
    
    // Confirm that the Meal initialier returns nil when passed a invalid number or an empty name.
    func testPokemonInitializationFails() {
        // Negative Pokemon
        let negativePokemon = Pokemon.init(name: "Negative", number: -1, photo: nil)
        XCTAssertNil(negativePokemon)
        
        // Empty String
        let emptyStringPokemon = Pokemon.init(name: "", number: 1, photo: nil)
        XCTAssertNil(emptyStringPokemon)
        
        // Out of range
        let outOfRangePokemon = Pokemon.init(name: "OutOfRange", number: 152, photo: nil)
        XCTAssertNil(outOfRangePokemon)

    }

}
