//
//  SecureCreditCard.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class SecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado con protocolo de maxima seguridad")
    }
}
