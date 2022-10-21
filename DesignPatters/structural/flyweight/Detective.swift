//
//  Detective.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 21/10/22.
//

import Foundation

class Detective: Enemy {
    
    let life = 1000
    var weapon = ""
    
    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Weapon creada: \(weapon)")
    }
    
    func lifePoints() {
        print("La vida de un detective es \(life)")
    }
    
    
}
