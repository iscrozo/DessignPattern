//
//  OfferElement.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

protocol OfferElement {
    func accept(visitor: CreditCardVisitor)
}
