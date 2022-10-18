//
//  Colleague.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class Colleague {
    
    let mediator: Mediator
    
    init(m : Mediator){
        self.mediator = m
    }
    
    func send(message: String) {}
    
    func messageReceived(message: String) {}

}
