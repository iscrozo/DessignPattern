//
//  MonthlyGoogleFactory.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//
// ConcreteFactory2
import Foundation

class MonthlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAf()
    }
    
    func createMethod() -> Method {
        return MonthlyMethod()
    }
    
}
