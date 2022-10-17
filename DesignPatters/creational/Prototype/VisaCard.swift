//
//  VisaCard.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//
// ConcretePrototype
import Foundation

class VisaCard: PrototypeCard {
    var cardName = "VISA"
    
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Clonado tarjeta Visa")
        return prototype
    }
    
}
