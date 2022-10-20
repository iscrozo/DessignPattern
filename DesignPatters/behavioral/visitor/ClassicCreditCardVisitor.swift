//
//  ClassicCreditCardVisitor.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class ClassicCreditCardVisitor: CreditCardVisitor {
    func flightOffer(flightOFfer: FligthOffer) {
        print("Descuento 5% en vuelos con tu tarjeta clasica")
    }
    
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("DEscuento 3% en Gasolina con tu tarjeta Clasica")
    }
    
    
}
