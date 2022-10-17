//
//  CardSingleton.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//

import Foundation

class CardSingleton {
    static var shared = CardSingleton()
    private init () {}
    
    func doSomething() {
        print("HAciendo trabajo de la clase Singleton")
    }
}
