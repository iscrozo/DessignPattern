//
//  PaymentFactory.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 14/10/22.
//
// Creator o factory
import Foundation


class PaymentFactory {
    static func buildPayment(type: TypePayment) -> Payment {
        switch type {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
