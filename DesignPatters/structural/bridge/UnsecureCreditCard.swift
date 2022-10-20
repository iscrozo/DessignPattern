//
//  UnsecureCreditCard.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class UnsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado sin seguridad")
    }
}
