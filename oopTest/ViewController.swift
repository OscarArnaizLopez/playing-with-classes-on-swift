//
//  ViewController.swift
//  oopTest
//
//  Created by Oscar Arnaiz on 01/04/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(nombre: "Oxidado", vida: 110, _poderDeAtaque: 20)
        randomEnemy()
        playerHpLbl.text = "\(player.vida) HP"
    }
    
    func randomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(vidaInicial: 85, poderDeAtaque: 12)
        } else {
            enemy = Brujo(vidaInicial: 95, poderDeAtaque: 15)
        }
        enemyImage.hidden = false
        enemyHpLbl.text = "\(enemy.vida) HP"
    }

    @IBAction func onChestTap(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "randomEnemy", userInfo: nil, repeats: false)
    }

    @IBAction func attackTapped(sender: AnyObject) {
        if enemy.recibeAtaque(player.poderDeAtaque) {
            printLbl.text = "Attacked \(enemy.tipo) for \(player.poderDeAtaque) HP"
            enemyHpLbl.text = "\(enemy.vida) HP"
        } else {
            printLbl.text = "Attack was unsucessfull"
        }
        
        if let loot = enemy.obtenBotin() {
            player.addItemToInventory((loot))
            chestMessage = "\(player.nombre) found \(loot)"
            chestBtn.hidden = false
        }
        if !enemy.estaVivo {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.tipo)"
            enemyImage.hidden = true
        }
    }
}

