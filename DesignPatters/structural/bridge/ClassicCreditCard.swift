//
//  ClassicCreditCard.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class ClassicCreditCard: CreditCardB {
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }
    
    override func makeyPayment() {
        creditCard.makePayment()
    }
}
