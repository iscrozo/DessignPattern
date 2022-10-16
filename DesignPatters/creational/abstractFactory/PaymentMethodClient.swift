//
//  PaymentMethodClient.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
// client
import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calculatePayment()
    }
}
