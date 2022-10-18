//
//  ConcreteColleague2.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class ConcreteColleague2: Colleague {
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("Colleague2 El usuario2 ha recibido el msg: \(message)")
    }
}
