//
//  Player.swift
//  oopTest
//
//  Created by Oscar Arnaiz on 01/04/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import Foundation


class Player : Character {
    private var _nombre : String = "Player"
    
    var nombre : String {
        get {
            return _nombre
        }
    }
    
    private var _inventory = [String]()
    
    var inventory:[String] {
        return _inventory
    }
    
    func addItemToInventory(item:String){
        _inventory.append(item)
    }
    
    convenience init(nombre: String, vida : Int, _poderDeAtaque : Int) {
        self.init(vidaInicial: vida, poderDeAtaque: _poderDeAtaque)
        _nombre = nombre
        
    }
}