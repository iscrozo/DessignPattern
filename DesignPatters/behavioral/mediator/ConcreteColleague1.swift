//
//  ConcreteColleague1.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class ConcreteColleague1: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("Colleague1 El usuario1 ha recibido el msg: \(message)")
    }
}
