//
//  Paypal.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class Paypal: PaymentTemplate {
    
    func initialize() {
        print("Inicializando el pago con Paypal")
    }
    
    func startPayment() {
        print("Realizando el pago a traves de los servidores de Paypal")
    }
    
    func endPayment() {
        print("Finalizando el pago a traves de los servidores de Paypal")
    }
    
}
