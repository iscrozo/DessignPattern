//
//  PaymentIntAdvancedCardFactory.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//
// ConcreteFactory1
import Foundation

class PaymentIntAdvancedCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return PaymentAdvancedMethod()
    }
    
}
