//
//  Kimara.swift
//  oopTest
//
//  Created by Oscar Arnaiz on 02/04/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import Foundation

class Kimara : Enemy {
    let IMMUNE_MAX = 15
    
    override var botin: [String] {
        return ["Super cool diamantes", "Super espada", "Super escudo"]
    }
    
    override var tipo:String {
        return "Kimara"
    }
    
    override func recibeAtaque(poderDeAtaqueOponente:Int )->Bool{
        if poderDeAtaqueOponente > IMMUNE_MAX {
            return super.recibeAtaque(poderDeAtaqueOponente)
        }
        
        return false
    }
}
