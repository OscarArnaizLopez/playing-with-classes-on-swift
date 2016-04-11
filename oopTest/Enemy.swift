//
//  Enemy.swift
//  oopTest
//
//  Created by Oscar Arnaiz on 01/04/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import Foundation

class Enemy : Character {
    var botin : [String] {
        return ["monedas, joyas"]
    }
    
    var tipo : String {
        return "Grung"
    }
    
    func obtenBotin() -> String? {
        if !estaVivo {
            let rand = Int(arc4random_uniform(UInt32(botin.count)))
            return botin[rand]
        }
        return nil
    }
    
}
