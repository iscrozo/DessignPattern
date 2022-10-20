//
//  CreditCardVisitor.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

protocol CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer)
    func flightOffer(flightOFfer: FligthOffer)
}
