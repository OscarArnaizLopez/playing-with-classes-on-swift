//
//  Character.swift
//  oopTest
//
//  Created by Oscar Arnaiz on 01/04/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import Foundation


class Character {
    private var _vida : Int = 100
    private var _poderDeAtaque : Int = 10
    
    var poderDeAtaque: Int {
        get {
            return _poderDeAtaque
        }
    }
    
    var vida:Int {
        get {
            return _vida
        }
        
    }
    
    var estaVivo: Bool{
        get {
            if vida >= 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    init(vidaInicial: Int, poderDeAtaque: Int) {
        self._vida = vidaInicial
        self._poderDeAtaque = poderDeAtaque
    }
    
    func recibeAtaque(poderDeAtaqueOponente:Int) -> Bool{
        self._vida -= poderDeAtaqueOponente
        
        return true
    }
    
    
}