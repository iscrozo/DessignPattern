//
//  EnemyFactory.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 21/10/22.
//

import Foundation

class EnemyFactory {
    
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String) -> Enemy {
        var enemy: Enemy
        if(enemies[type] != nil ){
            enemy = enemies[type]!
        } else {
            switch type {
                case "Private":
                    enemy = Private()
                    print ("Soldado creado")
                case  "Detective":
                    print ("Detective creado")
                    enemy = Detective()
                default:
                    print ("Detective creado")
                    enemy = Detective()
            }
            enemies[type] = enemy
            
        }
        return enemy
    }
    
}
