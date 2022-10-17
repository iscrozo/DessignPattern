//
//  PrototypeCard.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//

import Foundation

class PrototypeCard: NSCopying {
    
    var cardNumber = 0
    var cardType = ""
    required init(cardNumber: Int = 0, cardType: String = ""){
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        
        print("Los valores de Clase PrototypeCard han sido clonados")
        return  prototype
    }
    

}
